function b=FinishDist(nd)

% function b=FinishDist(nd)
%
% Finsishes distribution nd, if active. if DebugLevel greater than 0, this saves the
% trials in a file trials.psi

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

b=calllib('psi','FinishDist',nd);