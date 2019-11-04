% Library for estimation of psychometric functions
%
% Bayesian adaptive estimation of slope, threshold and miss rates 
% of the psychometric function.
%
% This library uses the functionality provided by psi.dll in combination
% with the ExternalDLL package for Matlab 6.5(R13).
% 
% Kai Schreiber, 03/11/2004
%
%
%  SetupDist            -  Create a new distribution
%  StoreResult          -  Store a response
%  RemoveResult         -  Remove a stored response
%  NextTrial            -  Compute the optimal intensity for the next trial
%  CurrentEstimate      -  Get the current estimates for the parameters
%  RescaleDist          -  Rescales the probability distribution
%  FinishDist           -  Remove distribution data from memory
%  HighestActive        -  Returns the index of the highest active distribution
%  PossibleValues       -  Returns the number of possible intensities or their value
%  DistActive           -  Checks whether a particular distribution is active
%  SetDebugLevel        -  Sets the internal debug flag, affecting file output
%  GetDebugLevel        -  Returns the flag
%  EstimateTime         -  Estimates the time required to create a single trial
%  SavePFile            -  Save the probability distribution
%  SaveEFile            -  Save the entropy function
%  UnloadPsi            -  Unloads the DLL