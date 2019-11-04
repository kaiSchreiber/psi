unit psi;

interface

function SetupDist(n_guess:Double;n_x:Integer;x_min,x_max,shift:Double;
   n_shift:Integer;sd_shift,nsd_shift,slope:Double;n_slope:Integer;
   sd_slope,nsd_slope,p_err:Double;n_p_err: Integer;
   sd_p_err,nsd_p_err:Double;psf:Integer): Integer; cdecl external 'psi.dll'

function RescaleDist(nd,method: Integer;nsd_shift,nsd_slope,nsd_p_err:Double;nshift,nslope,nperr:Integer):Integer; cdecl external 'psi.dll'

function DistActive(nd: Integer):Integer; cdecl external 'psi.dll'

function FinishDist(nd: Integer): Integer; cdecl external 'psi.dll'

function HighestActive: Integer; cdecl external 'psi.dll'

function StoreResult(nd: Integer;x:Double;res: Integer): Integer; cdecl external 'psi.dll'

function CurrentEstimate(nd,v:Integer): Double; cdecl external 'psi.dll'

procedure SetDebugLevel(dl:Integer); cdecl external 'psi.dll'

function GetDebugLevel: Integer; cdecl external 'psi.dll'

function NextTrial(nd:Integer):Double; cdecl external 'psi.dll'

function EstimateTime(rep,n1,n2,n3,n4: Integer): Double; cdecl external 'psi.dll'

procedure SavePFile(nd:Integer); cdecl external 'psi.dll'

procedure SaveEFile; cdecl external 'psi.dll'

function PossibleValues(nd,i:Integer): Double; cdecl external 'psi.dll'

implementation

end.
