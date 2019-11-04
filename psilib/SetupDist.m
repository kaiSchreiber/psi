function n=SetupDist(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q)

% function nd=SetupDist(n_fc,n_x,x_min,x_max,shift,n_shift,sd_shift,nsd_shift,
%        slope,n_slope,sd_slope,nsd_slope,p_err,n_p_err,sd_p_err,nsd_p_err,psf)
%
% Sets up a full Dist. 
%
% n_fc      number of alternatives in the task
% n_x       number of possible stimulus intensities
% x_min     lower limit of these intensities
% x_max     upper limit of these intensities
% shift     center of the prior gaussian distribution for the shift
% n_shift   number of values of shift that should be considered
% sd_shift  standard deviation of that distribution
% nsd_shift extent of pse in standard deviations around e that should be considered
% 
% slope and p_err work the same way as pse.
%
% psf is a parameter specifying the psychometric function used:
% psf = 0 : cumulative logistic function (detection)
%           p = 1/n_fc + (1 - 1/n_fc - p_err) / (1 + exp(-slope*(x-shift)))
% psf = 1 : inverted Gaussian (discrimination)
%           p = (1-p_err)*(1-p_err-1/n_fc)*exp(-slope*(x-shift)^2))
% psf = 2 : symmetrical cumulative logistic (discrimination)
%           p = p_err + (1 - 2*p_err) / (1 + exp(-slope*(x-shift)))

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope, and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

n=calllib('psi','SetupDist',a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q);