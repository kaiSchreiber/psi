function b=StoreResult(nd,x,res)

% a=StoreResult(nd,x,res)
%
% Stores a single trial of intensity x in distribution number nd. res is 1 if the
% answer at that intensity was correct, 0 otherwise.

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

b=calllib('psi','StoreResult',nd,x,res);