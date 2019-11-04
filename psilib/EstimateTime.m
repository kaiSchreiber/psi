function n=EstimateTime(a,b,c,d,e,varargin)

% function n=EstimateTime(nrep,nx,npse,nslope,nperr,[f])
%
% Estimates the time it takes to determine a new target intensity
% based on the resolution of the probability density function in the
% pse, slope and miss rate direction.
% Set f to one to make the function output the estimates onscreen.

% This is part of the PSI Matlab library for adaptive Bayesian estimation 
% of the shift, slope and miss-rate of the psychometric function.
%
% Kai Schreiber, 3/11/2004

talk=0;
if nargin>5,
    if varargin{1}==1,
        talk=1;
    else
        talk=0;
    end
end

if ~libisloaded('psi'),
    loadlibrary('psi.dll','psi.h');
end

% first call the dlls own Estimator to get the time it takes to do the
% actual job
n(1)=calllib('psi','EstimateTime',a,b,c,d,e);

% now do the Estimation manually, by setting up a distribution
ns=SetupDist(2,b,1,1,1,c,1,1,1,d,1,1,0,e,1,0,0);
tic;
for i=1:a,
    x=NextTrial(ns);
    StoreResult(ns,x,1);
end
n(2)=toc/a;
FinishDist(ns);

if talk,
    disp(['Internal estimate: ' num2str(n(1))]);
    disp(['Matlab estimate:   ' num2str(n(2))]);
    disp(['Matlab overhead:   ',num2str(n(2)-n(1))]);
end;
