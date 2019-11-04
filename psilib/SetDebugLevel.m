function SetDebugLevel(l)

% function SetDebugLevel(l)
%
% Sets the debug level
%
% l=0: no output saved
% i=1: FinishDist saves the trials in file trials.psi
% i=2: Additionally: every change in the probability distribution of entropy function creates files p.psi, and e.psi
%         the scaling for the distribution is contained in the files p_pse.psi, p_slope.psi and p_p_err.psi
%         the scaling for the entropy function is contained in the file e.psi as a second line

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

calllib('psi','SetDebugLevel',l);