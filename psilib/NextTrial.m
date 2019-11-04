function n=NextTrial(nd)

% function n=NextTrial(nd)
%
% Returns the intensity of the optimal trial for distribution nd

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
% Returns NaN, if the specified distribution is inactive.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

n=calllib('psi','NextTrial',nd);
if n==-9999,
    n=NaN;
end