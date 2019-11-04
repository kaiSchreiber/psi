function nd=HighestActive;

% function nd=HighestActive;
%
% Returns the number of the highest active distribution. Useful for cleanup.

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

nd=calllib('psi','HighestActive');