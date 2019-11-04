function SaveEFile

% function SaveEFile
%
% Saves the most recent entropy function in file e.psi

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

calllib('psi','SaveEFile');