VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5670
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7935
   LinkTopic       =   "Form1"
   ScaleHeight     =   5670
   ScaleWidth      =   7935
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "SetupStaircase"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GetDebugLevel"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   255
      Left            =   1680
      TabIndex        =   3
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  SetDebugLevel (2)
  Label1.Caption = GetDebugLevel
End Sub

Private Sub Command2_Click()
  n = SetupDist(2, 20, 7, 13, 10, 100, 1, 4, 7, 30, 0.2, 3, 0)
  Label2.Caption = n
  'Label1.Caption = EstimateTime(10, 10, 10, 10)
End Sub
