Attribute VB_Name = "Module1"
Declare Function HighestActive Lib "psi.dll" Alias "SCHighestActive" () As Integer

Declare Function DistActive Lib "psi.dll" Alias "SCDistActive" (ByVal ns As Integer) As Integer

Declare Function SetupDist Lib "psi.dll" Alias "SCSetupDistErr " ( _
   ByVal n_guess As Double, _
   ByVal n_x As Integer, _
   ByVal x_min As Double, _
   ByVal x_max As Double, _
   ByVal shift As Double, _
   ByVal n_shift As Integer, _
   ByVal sd_shift As Double, _
   ByVal nsd_shift As Double, _
   ByVal slope As Double, _
   ByVal n_slope As Integer, _
   ByVal sd_slope As Double, _
   ByVal nsd_slope As Double, _
   ByVal p_err As Double, _
   ByVal n_p_err As Integer, _
   ByVal sd_p_err As Double, _
   ByVal nsd_p_err As Double, _
   ByVal psf As Integer) As Integer
   
Declare Function EstimateTime Lib "psi.dll" Alias "SCEstimateTime" (ByVal rep, n1, n2, n3, n4 As Integer) As Double

Declare Function GetDebugLevel Lib "psi.dll" Alias "SCGetDebugLevel" () As Long

Declare Sub SetDebugLevel Lib "psi.dll" Alias "SCSetDebugLevel" (ByVal l As Integer)

Declare Sub SavePFile Lib "psi.dll" Alias "SCSavePFile" (ByVal nd As Integer)

Declare Sub SaveEFile Lib "psi.dll" Alias "SCSaveEFile" ()

Declare Function CurrentEstimate Lib "psi.dll" Alias "SCCurrentEstimate" ( _
    ByVal nd, _
    v As Integer) As Double

Declare Function StoreResult Lib "psi.dll" Alias "SCStoreResult" ( _
    ByVal nd As Integer, _
    ByVal x As Double, _
    ByVal Res As Integer) As Integer

Declare Function RemoveResult Lib "psi.dll" Alias "SCRemoveResult" ( _
    ByVal nd As Integer, _
    ByVal x As Double, _
    ByVal Res As Integer) As Integer

Declare Function NextTrial Lib "psi.dll" Alias "SCNextTrial" (ByVal nd As Integer) As Double

Declare Function RescaleDist Lib "psi.dll" Alias "SCRescaleDist" ( _
    ByVal nd, _
    ByVal method As Integer, _
    ByVal nsd_shift, _
    ByVal nsd_slope, _
    ByVal nsd_p_err As Double) As Integer

Declare Function FinishDist Lib "psi.dll" Alias "SCFinishDist" (ByVal nd As Integer) As Integer

Declare Function PossibleValues Lib "psi.dll" Alias "SCPossibleValues" ( _
    ByVal nd As Integer, _
    ByVal i As Integer) As Double
