function SavePFile(nd)

% function SavePFile(nd)
%
% Saves the probability distribution nd in external file p.psi. Also saves
% the scaling of the three dimensions in p_pse.psi, p_slope.psi and
% p_p_err.psi

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

calllib('psi','SavePFile',nd);