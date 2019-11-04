function r=CurrentEstimate(nd,varargin)

% function r=CurrentEstimate(nd,[v])
%
% Gets the current estimate of the parameters of the psychometric
% function
%
% v=1: point of subjective equality / bias
% v=2: slope
% v=3: miss rate / error probability
% v=4: std of pse
% v=5: std of slope
% v=6: std of miss rate
% v=7: number of trials
%
% When v is not specified, the function returns a 7x1 vector containg all
% seven estimates.

% part of the PSI Matlab library for adaptive Bayesian estimation of the slope, 
% threshold and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

if nargin==1,
    r=zeros(7,1);
    for i=1:7,
        r(i)=calllib('psi','CurrentEstimate',nd,i);
        if r(i)==-9999,
            r(i)=NaN;
        end
    end
else
    r=calllib('psi','CurrentEstimate',nd,varargin{1});
    if r==-9999,
        r=NaN;
    end
end