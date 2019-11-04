function b=DistActive(nd);

% function b=DistActive(nd);
%
% Returns 0 if the probability distribution number nd is not active, 1 if
% it is.

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

b=calllib('psi','DistActive',nd);