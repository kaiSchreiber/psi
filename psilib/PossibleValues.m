function r=PossibleValues(nd,varargin)

% function r=PossibleValues(nd,[i])
%
% Gets the exact return value for possible return intensity i of NextTrial
% i runs from 0 to n_x-1
%
% If you don't provide i the function returns the full vector of all intensities
% i=-1 returns the number of possible intensities.

% part of the PSI Matlab library for adaptive Bayesian estimation of the slope, 
% threshold and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

if nargin==1,
    r=[];
    if calllib('psi','PossibleValues',nd,-1)==-9999,
        r=NaN;
    else
        for i=0:calllib('psi','PossibleValues',nd,-1)-1,
            r=[r calllib('psi','PossibleValues',nd,i)];
        end
    end
else
    r=calllib('psi','PossibleValues',nd,varargin{1});
    if r==-9999,
        r=NaN;
    end
end