extern int HighestActive();

extern int DistActive(int ns);

extern int SetupDist(
   double n_guess,
   int n_x,
   double x_min,
   double x_max,
   double shift,
   int n_shift,
   double sd_shift,
   double nsd_shift,
   double slope,
   int n_slope,
   double sd_slope,
   double nsd_slope,
   double p_err,
   int n_p_err,
   double sd_p_err,
   double nsd_p_err,
   int psf
   );

extern double EstimateTime(
   int rep,
   int n1,
   int n2,
   int n3,
   int n4
   );

extern int GetDebugLevel();

extern void SetDebugLevel(int l);

extern void SavePFile(int ns);

extern void SaveEFile();

extern double CurrentEstimate(
   int nd,
   int v
   );

extern int StoreResult(
   int nd,
   double x,
   int res
   );

extern int RemoveResult(
   int nd,
   double x,
   int res
   );

extern double NextTrial(int nd);
   
extern int RescaleDist(
   int nd,
   int method,
   double nsd_shift,
   double nsd_slope,
   double nsd_p_err,
   int nshift,
   int npslope,
   int nperr
   );

extern int FinishDist(int nd);

extern double PossibleValues(
   int nd,
   int i
   );
