function UnloadPsi;

% function UnloadPsi
%
% Removes psi.dll from memory

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if libisloaded('psi'),
    unloadlibrary('psi');
end