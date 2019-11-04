function b=RescaleDist(nd,method,nsd_shift,nsd_slope,nsd_p_err,nshift,nslope,nperr)

% function b=RescaleDist(nd,method,nsd_shift,nsd_slope,nsd_p_err,nschift,nslope,nperr)
%
% Will recompute the current probability distribution based on the trials 
% already gathered. This operation leaves the resolution of the probability
% grid unchanged
%
% method=1: use the original prior, but rescale the grid using the current
%            estimates of standard deviations
% method=2: use a flat prior and rescale using current std
% method=3: use the original prior and do not rescale 
% method=4: use a flat prior and the original scale
% method=5: same as 1, but change resolution to new values
% method=6: same as 2, but change resolution to new values
% method=7: same as 3, but change resolution to new values
% method=8: same as 4, but change resolution to new values
%
% methods 1-4 ignore the last three parameters
% methods 3,4,7 and 8 ignore the first three parameters


% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

b=calllib('psi','RescaleDist',nd,method,nsd_shift,nsd_slope,nsd_p_err,nshift,nslope,nperr);