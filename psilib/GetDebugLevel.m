function n=GetDebugLevel

% function n=GetDebugLevel
%
% Returns the current setting of DebugLevel

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

n=calllib('psi','GetDebugLevel');