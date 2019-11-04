classdef psiSC
    % class constructor for an adaptive staircase object
    %
    % Call this to set up a staircase. All parameters are optional,
    % defaults are provided in brackets
    %
    % psf [0] - the psychometric function to use
    %       log - logistic
    %       inv - inverted Gaussian
    %       symlog - symmetrical logistic
    % choices [2] - number of alternatives in an AFC task
    %       alternatively, guessing chance
    %       ignored for psf 2
    % nX [100] - number of gradations of the intensity to consider
    % xRange [0 1] - lowest and highest intensity to use in the experiment
    % PSE [0.5] - center value for the threshold range to consider
    % nPSE [100] - gradations for the thresholds to consider
    % stdPSE [0] - standard deviation of the Gaussian threshold prior. 
    %       0 creates a flat prior
    % dPSE [1] - extent of the threshold range. this is multiples of stdPSE
    %       for nonzero stdPSE, or an absolute value for flat
    %       priors
    % Slope [0] - center of the slope range (this is the angle at the pse)
    % nSlope [50] - gradations of slope
    % stdSlope [30] - standard deviation of the slope prior
    % dSlope [3] - extent of the slope range
    % Err [0.02] - error rate
    % nErr [1] - gradations for error rate estimate
    % stdErr [0] - standard deviation of the error rate prior
    % dErr [1] - extent of the error range
    % display [false] - set to true to update a plot showing the pdf,
    %       entropy function, function estimates and previous trials with
    %       every call to NextTrial, StoreTrial and RemoveTrial
    %       setting display to true overrides the next three settings
    %       To have a display with individual updates turned off, 
    %       initialize with display off and then call setDisplay(true)
    % nopdf [true] - suppresses updating of the pdf and plotting of the pdf
    %       if plotting is enables
    % noestimates [true] - suppresses the updating of the parameter
    %       estimates and their display
    % noentropy [true] - suppresses updating of the entropy function
    %
    % CLASS METHODS
    % 
    % setDisplay(b) - set the display state to true or false
    % storeResult(x,r) - Stores result r at intensity x. Updates the
    %      estimates property that contains the pdf, nextTrial
    %      accepts single trials or intensities/responses vectors
    % finishStaircase - frees the memory used by the staircase and returns
    %      a structure with the stored trials, parameters and estimates
    % rescale(...) - Rescales and/or resizes the pdf and/or removes the
    %      prior. Parameters are all optional. The default removes the prior
    %      and scales to +- 2 standard deviations.
    %
    %       flatprior [true] - replaces the original prior with a flat one
    %       rescale [true] - shifts the center of the prior to the current
    %          estimates and resets its width to nsd times the current
    %          estimate of parameter std
    %       resize [false] - changes the internal resolution of the pdf
    %           represenation
    %       nPSE,nSlope,nErr [default to original values] - new resolutions
    %       dPSE,dSlope,dErr [2,2,2] - new pdf range
    %
    % Every class instance also provides the static function psycho
        
    properties (Access = 'protected', Hidden = true);
        staircase@double = -1;
        visfigure = -1;
        visualize@logical = false;
        nopdf@logical;
        noestimate@logical;
        noentropy@logical;
    end
    
    properties (SetAccess = 'protected', GetAccess = 'public');
        parms;
        prior;
        trials;
        estimate;
        pdf;
        entropy;
        nextTrial;
    end
    
    methods
        % constructor
        function po=psiSC(varargin)
            p = inputParser;
            p.addParamValue('psf','log',@(x) ischar(x));
            p.addParamValue('choices',2,@(x) isnumeric(x) && x>=0);
            p.addParamValue('nX',100,@(x) isnumeric(x) && x>2);
            p.addParamValue('xRange',[0 1],@(x) isnumeric(x) && numel(x)==2 && x(2)>x(1));
            p.addParamValue('PSE',0.5,@(x) isnumeric(x));
            p.addParamValue('nPSE',100,@(x) isnumeric(x) && x>2);
            p.addParamValue('stdPSE',0.2,@(x) isnumeric(x) && x>=0);
            p.addParamValue('dPSE',2,@(x) isnumeric(x));
            p.addParamValue('Slope',0,@(x) isnumeric(x) && x>-90 && x<90);
            p.addParamValue('nSlope',50,@(x) isnumeric(x) && x>2);
            p.addParamValue('stdSlope',30,@(x) isnumeric(x) && x>0);
            p.addParamValue('dSlope',3,@(x) isnumeric(x) && x>0);
            p.addParamValue('Err',0.02,@(x) isnumeric(x) && x>=0 && x<=1);
            p.addParamValue('nErr',1,@(x) isnumeric(x) && x>0);
            p.addParamValue('stdErr',0,@(x) isnumeric(x) && x>=0);
            p.addParamValue('dErr',1,@(x) isnumeric(x) && x>0);
            p.addParamValue('display',false,@(x) islogical(x));
            p.addParamValue('nopdf',true,@(x) islogical(x));
            p.addParamValue('noestimate',true,@(x) islogical(x));
            p.addParamValue('noentropy',true,@(x) islogical(x));
            p.parse(varargin{:});
            p = p.Results;
            % we only need to check in the constructor, because unless the
            % user unloads the dll it must be there if a psiSC object
            % exists
            if strcmp(p.psf,'log'),
                p.psf = 0;
            elseif strcmp(p.psf,'inv'),
                p.psf = 1;
            elseif strcmp(p.psf,'symlog'),
                p.psf = 2;
            else
                p.psf = 0;
            end
            if ~libisloaded('psi'),
                loadlibrary('psi.dll','psi.h');
                % make psi write out psi files with every call
            end
            calllib('psi','SetDebugLevel',2);
            po.staircase = calllib('psi','SetupDist',p.choices,p.nX,p.xRange(1),p.xRange(2),...
                p.PSE,  p.nPSE,  p.stdPSE,  p.dPSE,...
                p.Slope,p.nSlope,p.stdSlope,p.dSlope,...
                p.Err,  p.nErr  ,p.stdErr  ,p.dErr,...
                p.psf);
            if po.staircase == -1,
                error('psi : Failed to create staircase object. Check parameters for consistency.');
            end
            po.parms = p;
            if po.parms.choices>1,
                po.parms.choices = 1/po.parms.choices;
            end
            % get the prior and store it
            calllib('psi','NextTrial',po.staircase);
            po.prior.slope = load('p_slope.psi');
            po.prior.pse = load('p_pse.psi');
            po.prior.err = load('p_p_err.psi');
            po.prior.data = reshape(load('p.psi'),numel(po.prior.slope),numel(po.prior.pse),numel(po.prior.err));
            po.pdf = po.prior;
            delete('*.psi');
            calllib('psi','SetDebugLevel',0);
            po.trials.intensity = [];
            po.trials.response = [];
            po.trials.n = 0;
            po.nopdf = p.nopdf;
            po.noestimate = p.noestimate;
            po.noentropy = p.noentropy;
            po.visualize = p.display;
            if po.visualize,
                po.nopdf = false;
                po.noestimate = false;
                po.noentropy = false;
            end
            po = po.getEstimate;
        end
        
        % destructor: close down the associated staircase
        function delete(p)
            calllib('psi','FinishDist',p.staircase);
        end
        
        % set the visualization state and update the graph if visualization
        % is true
        function p = setDisplay(p,x)
            if ~islogical(x),
                return
            end
            p.visualize = x;
            if p.visualize && ~p.noestimate,
                p.getEstimate;
            end
        end
        
        % store a vector of results, one at a time
        function p = storeResultsAnimate(p,x,r)
            for i=1:numel(x),
                p = p.storeResults(x(i),r(i));
            end
        end
        
        % store a result
        function p = storeResults(p,x,r)
            for i=1:numel(x)-1,
                calllib('psi','StoreResult',p.staircase,x(i),r(i));
            end
            p.trials.intensity = cat(1,p.trials.intensity,x(:));
            p.trials.response = cat(1,p.trials.response,r(:));
            p.trials.n = numel(p.trials.response);
            if ~p.nopdf,
                calllib('psi','SetDebugLevel',2);
            end
            calllib('psi','StoreResult',p.staircase,x(end),r(end));
            if ~p.nopdf,
                p.pdf.pse   = load('p_pse.psi');
                p.pdf.slope = load('p_slope.psi');
                p.pdf.err   = load('p_p_err.psi');
                p.pdf.data  = reshape(load('p.psi'),numel(p.pdf.slope),numel(p.pdf.pse),numel(p.pdf.err));            
                delete('*.psi');
                calllib('psi','SetDebugLevel',0);
            end
            p = p.getEstimate;
        end
        
        % implement the rescale functionality
        function p = rescale(p,varargin)
            pr = inputParser;
            % default to the original parameters
            pr.addParamValue('flatten',true,@(x) islogical(x));
            pr.addParamValue('rescale',true,@(x) islogical(x));
            pr.addParamValue('resize',false,@(x) islogical(x));
            pr.addParamValue('nPSE',p.parms.nPSE,@(x) isnumeric(x));
            pr.addParamValue('nSlope',p.parms.nSlope,@(x) isnumeric(x));
            pr.addParamValue('nErr',p.parms.nErr,@(x) isnumeric(x));
            pr.addParamValue('dPSE',p.parms.dPSE,@(x) isnumeric(x));
            pr.addParamValue('dSlope',p.parms.dSlope,@(x) isnumeric(x));
            pr.addParamValue('dErr',p.parms.dErr,@(x) isnumeric(x));
            pr.parse(varargin{:});
            pr = pr.Results;
            method=1;
            if pr.flatten,
                method = method + 1;
            end
            if ~pr.rescale,
                method = method + 2;
            end
            if pr.resize,
                method = method + 4;
            end
            calllib('psi','RescaleDist',p.staircase,method,pr.dPSE,pr.dSlope,pr.dErr,pr.nPSE,pr.nSlope,pr.nErr);
            p = p.getEstimate;
        end
            
        % finish the staircase and return a matlab structure with all the
        % data in it
        function data = finish(p)
            calllib('psi','SetDebugLevel',0);
            calllib('psi','FinishDist',p.staircase);
            calllib('psi','SetDebugLevel',2);
            data.prior = p.prior;
            data.parms = p.parms;
            data.estimate = p.estimate;
            data.trials = p.trials;
            p.delete;
        end
    end
    
    % this is just here to hide the dll from the methods listing
    methods(Static,Access='private');
        function psi
        end
    end
    
    % no reason to expose getEstimate
    methods(Access = 'private')
        function p = getEstimate(p)
            if ~p.noestimate,
                p.estimate.chance    = p.parms.choices;
                p.estimate.pse       = calllib('psi','CurrentEstimate',p.staircase,-1);
                p.estimate.slope     = calllib('psi','CurrentEstimate',p.staircase,-2);
                p.estimate.err       = calllib('psi','CurrentEstimate',p.staircase,-3);
                p.estimate.stdpse    = calllib('psi','CurrentEstimate',p.staircase,-4);
                p.estimate.stdslope  = calllib('psi','CurrentEstimate',p.staircase,-5);
                p.estimate.stderr    = calllib('psi','CurrentEstimate',p.staircase,-6);
            end
            if ~p.noentropy,
                calllib('psi','SetDebugLevel',2);
            end
            p.nextTrial = calllib('psi','NextTrial',p.staircase);
            if ~p.noentropy,
                e = load('e.psi');
                delete('*.psi');
                calllib('psi','SetDebugLevel',0);
                p.entropy.e = e(1,:);
                p.entropy.x = e(2,:);
            end
            if p.visualize,
                if p.visfigure==-1,
                    p.visfigure = figure;
                    subplot(2,3,1); 
                end
                figure(p.visfigure);
                
                % pdf
                subplot(2,3,1); cla;
                if ~p.nopdf,
                    surf(p.pdf.pse,p.pdf.slope,mean(p.pdf.data,3),'EdgeColor','none');
                    colormap(hot);
                    view(2);
                    axis tight;
                end
                if p.noestimate,
                    xlabel('pse');
                    ylabel('slope');
                else
                    xlabel(['pse (' num2str(p.estimate.pse)  ')']);
                    ylabel(['slope (' num2str(p.estimate.slope) ')']);
                end
                title(['pdf (' num2str(p.trials.n) ')']);
                
                % entropy function
                subplot(2,3,4);
                cla; hold on;
                if ~p.noentropy,
                    plot(p.entropy.x,p.entropy.e,'k-','LineWidth',2);
                    plot([p.nextTrial p.nextTrial],[min(p.entropy.e) max(p.entropy.e)],'g-','LineWidth',2);
                    axis tight;
                end
                xlabel('intensity');
                ylabel('entropy');
                
                % data plot
                subplot(2,3,[2 3 5 6]); cla; hold on;
                if numel(p.trials.intensity)>0,
                    for i = unique(p.trials.intensity'),
                        plot(i,sum(p.trials.response(p.trials.intensity==i))/sum(p.trials.intensity==i),'ok','MarkerSize',sum(p.trials.intensity==i)+3);
                        plot(i,sum(p.trials.response(p.trials.intensity==i))/sum(p.trials.intensity==i),'.k');
                    end
                end
                if ~p.noestimate,
                    plot(p.entropy.x,p.psycho(p.parms.psf,p.estimate,p.entropy.x),'r-','LineWidth',2);
                end
                a = axis;
                plot([p.nextTrial p.nextTrial],[a(3) a(4)],'g-','LineWidth',2);
                xlabel('intensity'); ylabel('response');
            end
        end
        
    end
    
    methods(Static)
        % psychometric function. Exposed because it is useful in simulating
        % data for testing
        function y = psycho(psf,parms,x)
            % psiSC/psycho(psf,p,x)
            %
            % Produces a psychometric function from intensities x
            % and the parameters structure p.
            %   p.chance - chance level
            %   p.pse - threshold/center of Gaussian
            %   p.slope - angle of rise at threshold / middle of
            %                           rise
            %   p.err - error rate
            % 
            % psf - type of function
            %     log    : logistic with false negatives (nAFC)
            %     inv    : inverted Gaussian (discrimination)
            %     symlog : symmetrical logisitic with false positives and
            %                negatives (chance is ignored) for detection
            %
            %
            
            if ~isstruct(parms),
                error('psiSC : psycho : parameters must be in a structure');
            end
            
            if psf==2,
                parms.chance = 0;
            end
            
            if ~isfield(parms,'chance') || ~isfield(parms,'pse') || ~isfield(parms,'slope') || ~isfield(parms,'err'),
                error('psiSC : psycho : parameter structure incomplete');
            end
            
            switch psf
                case {'log',0},
                    y = parms.chance + (1-parms.chance-parms.err) ./ (1 + exp( - 4 * tan(parms.slope/180*pi)./(1-parms.chance-parms.err)*(x-parms.pse) ) );
                case {'inv',1},
                    y = (1 - parms.err) - (1-parms.err-parms.chance) * exp( - ( tan(parms.slope/180*pi)/(1-parms.chance-parms.err)*(x-parms.pse) ).^2 *exp(1)/2);
                case {'symlog',2},
                    y = parms.err + (1-2*parms.err) ./ (1 + exp( - 4 * tan(parms.slope/180*pi)./(1-parms.chance-parms.err)*(x-parms.pse) ) );
            end
        end
    end
end