Attribute VB_Name = "Staircase"
Option Explicit

Public Type muestdata
   gamma As Double
   delta As Double
   xi1 As Double
   xi2 As Double
   lambda As Double
   size As Integer
   alfamean As Double
   alfasd As Double
   betamean As Double
   betasd  As Double
   domainalfa  As Double
   domainbeta  As Double
   priordiv As Integer
   idxalfa As Integer
   idxbeta As Integer
   measidx As Integer
   pdf As Variant
   alfaLu As Variant
   betaLu As Variant
   measfirst As MeasClass
   measlast As MeasClass
End Type

Private Const Ps_Gamma As Double = 0.01
Private Const Ps_Delta As Double = 0.01
Private Const Ps_Xi1 As Double = -1.0986
Private Const Ps_Xi2 As Double = 1.0986
Private Const Ps_Lambda As Double = 0.5
Private Const Ps_Size As Integer = 100
'Private Const Ps_AlfaMean As Double = 0#
Private Const Ps_AlfaStd As Double = 10000#
'Private Const Ps_BetaMean As Double = 17
'Private Const Ps_BetaStd As Double = 17
'Private Const Ps_DomainAlfa As Double = 14#
'Private Const Ps_DomainBeta As Double = 32.3
Private Const Ps_PriorDiv As Integer = 20


Private Function fpow(X As Double, Y As Double) As Double
   fpow = Exp(Y * Log(X))
End Function

Private Function logistic(level As Double, alfa As Variant, beta As Variant, gamma As Double, delta As Double) As Double
   logistic = gamma + (1# - gamma - delta) / (1# + Exp(-beta * (level - alfa)))
End Function

Public Sub PsFillIn(m As muestdata, before As Integer)
   With m
      .gamma = Ps_Gamma
      .delta = Ps_Delta
      .xi1 = Ps_Xi1
      .xi2 = Ps_Xi2
      .lambda = Ps_Lambda
      .size = Ps_Size
      If before = 1 Then
         .alfamean = 0
      Else
         .alfamean = (CDbl(Form1.txtEndFromDis) + CDbl(Form1.txtEndToDis)) / 2
      End If
      .alfasd = Ps_AlfaStd
      .betamean = 1.7 / (CDbl(Form1.TxtEstThreshold))
      .betasd = 1.7 / (CDbl(Form1.TxtEstThreshold))
      .domainalfa = CDbl(Form1.txtEndToDis) - CDbl(Form1.txtEndFromDis)
      .domainbeta = 1.8 * 1.7 / (CDbl(Form1.TxtEstThreshold))
      .priordiv = Ps_PriorDiv
   End With
End Sub

Private Function PsLogGauss(alfa As Variant, beta As Variant, m As muestdata) As Double
   Dim a As Double
   Dim b As Double
   a = (CDbl(alfa) - CDbl(m.alfamean)) / CDbl(m.alfasd)
   b = (CDbl(beta) - CDbl(m.betamean)) / CDbl(m.betasd)
   PsLogGauss = -(a * a + b * b)
End Function

Public Sub PsInitMuest(m As muestdata)
   Dim minlogbeta As Double
   Dim maxlogbeta As Double
   Dim steplogbeta As Double
   Dim minalfa As Double
   Dim stepalfa As Double
   Dim i As Integer
   Dim j As Integer

   With m
      .measidx = 0
      ReDim .pdf(1 To .size, 1 To .size) As Double
      ReDim .alfaLu(1 To .size) As Double
      ReDim .betaLu(1 To .size) As Double
      Set .measfirst = Nothing
      Set .measlast = Nothing
   End With
   minlogbeta = Log(m.betamean - (m.domainbeta * 0.5))
   maxlogbeta = Log(m.betamean + (m.domainbeta * 0.5))
   steplogbeta = (maxlogbeta - minlogbeta) / m.size
   minalfa = m.alfamean - (m.domainalfa * 0.5)
   stepalfa = m.domainalfa / m.size
   
   For i = 1 To m.size
      m.alfaLu(i) = minalfa + stepalfa * i
      m.betaLu(i) = Exp(minlogbeta + (steplogbeta * i))
   Next
   
   m.idxalfa = 1
   m.idxbeta = 1
   
   For i = 1 To m.size
      For j = 1 To m.size
         m.pdf(i, j) = PsLogGauss(m.alfaLu(i), m.betaLu(j), m) 'doet-ie het?????
         If m.pdf(i, j) > m.pdf(m.idxalfa, m.idxbeta) Then
            m.idxalfa = i
            m.idxbeta = j
         End If
      Next
   Next
         
End Sub


Private Sub NukePdf(m As muestdata)
   On Error Resume Next
   Erase m.pdf
End Sub


Private Sub NukeMeasurements(m As muestdata)
   On Error Resume Next
   Do While Not (m.measfirst Is Nothing)
      Set m.measfirst = m.measfirst.nextmeas
   Loop
   Set m.measlast = Nothing
End Sub

Public Sub PsCloseMuest(m As muestdata)
   NukePdf m
   Erase m.alfaLu
   Erase m.betaLu
   NukeMeasurements m
End Sub

Private Sub addmeasurement(m As muestdata, level As Double, response As Integer)
   Dim p As MeasClass
   Set p = New MeasClass
   If m.measfirst Is Nothing Then
      Set m.measfirst = p
   Else
      Set m.measlast.nextmeas = p
   End If
   Set m.measlast = p
   Set p.nextmeas = Nothing
   p.level = level
   p.response = response
End Sub

Private Function succes(m As muestdata, l As Double, a As Integer, b As Integer)
   succes = Log(logistic(l, m.alfaLu(a), m.betaLu(b), m.gamma, m.delta))
End Function

Private Function failure(m As muestdata, l As Double, a As Integer, b As Integer)
   failure = Log(1 - logistic(l, m.alfaLu(a), m.betaLu(b), m.gamma, m.delta))
End Function

Public Function PsUpdatePdf(m As muestdata, stimlevel As Double, result As Integer)
   Dim i As Integer
   Dim j As Integer
   Dim max As Double

   max = m.pdf(m.idxalfa, m.idxbeta)
   m.measidx = m.measidx + 1
   If (m.measidx - 1 <> 0) Then
      addmeasurement m, stimlevel, result
      For i = 1 To m.size
         For j = 1 To m.size
            If (result <> 0) Then
               m.pdf(i, j) = m.pdf(i, j) + succes(m, stimlevel, i, j)
            Else
               m.pdf(i, j) = m.pdf(i, j) + failure(m, stimlevel, i, j)
            End If
            If (m.measidx <= m.priordiv) Then
               m.pdf(i, j) = m.pdf(i, j) - PsLogGauss(m.alfaLu(i), m.betaLu(j), m) / m.priordiv
            End If
            If max < m.pdf(i, j) Then
               max = m.pdf(i, j)
               m.idxalfa = i
               m.idxbeta = j
            End If
         Next
      Next
   End If
   Dim temp As Double
   temp = Rnd()
   If (temp < m.lambda) Then
      PsUpdatePdf = m.xi1 / m.betaLu(m.idxbeta) + m.alfaLu(m.idxalfa)
   Else
      PsUpdatePdf = m.xi2 / m.betaLu(m.idxbeta) + m.alfaLu(m.idxalfa)
   End If
End Function

