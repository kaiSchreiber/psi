object FormPsitest: TFormPsitest
  Left = 518
  Top = 103
  Width = 784
  Height = 561
  Caption = 'Interface for psi.dll'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 233
    Caption = 'SetupStaircase'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 20
      Width = 21
      Height = 13
      Caption = 'n_fc'
    end
    object Label2: TLabel
      Left = 32
      Top = 84
      Width = 17
      Height = 13
      Caption = 'pse'
    end
    object Label5: TLabel
      Left = 16
      Top = 108
      Width = 29
      Height = 13
      Caption = 'n_pse'
    end
    object Label3: TLabel
      Left = 15
      Top = 132
      Width = 34
      Height = 13
      Caption = 'sd_pse'
    end
    object Label4: TLabel
      Left = 9
      Top = 156
      Width = 40
      Height = 13
      Caption = 'nsd_pse'
    end
    object Label6: TLabel
      Left = 104
      Top = 84
      Width = 25
      Height = 13
      Caption = 'slope'
    end
    object Label8: TLabel
      Left = 99
      Top = 156
      Width = 30
      Height = 13
      Caption = 'nsd_sl'
    end
    object Label7: TLabel
      Left = 105
      Top = 132
      Width = 24
      Height = 13
      Caption = 'sd_sl'
    end
    object Label9: TLabel
      Left = 110
      Top = 108
      Width = 19
      Height = 13
      Caption = 'n_sl'
    end
    object Label10: TLabel
      Left = 201
      Top = 84
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'p_err'
    end
    object SS: TLabel
      Left = 189
      Top = 108
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'n_p_err'
    end
    object Label22: TLabel
      Left = 184
      Top = 132
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'sd_p_err'
    end
    object Label23: TLabel
      Left = 178
      Top = 156
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'nsd_p_err'
    end
    object SSResult: TLabel
      Left = 112
      Top = 192
      Width = 153
      Height = 13
      AutoSize = False
      Caption = 'Result: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 25
      Top = 52
      Width = 17
      Height = 13
      Caption = 'n_x'
    end
    object Label26: TLabel
      Left = 105
      Top = 52
      Width = 27
      Height = 13
      Caption = 'x_min'
    end
    object Label27: TLabel
      Left = 195
      Top = 52
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'x_max'
    end
    object Label44: TLabel
      Left = 115
      Top = 20
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'psf'
    end
    object SS0: TEdit
      Left = 56
      Top = 20
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '2'
    end
    object SS1: TEdit
      Left = 56
      Top = 84
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '10'
    end
    object SS2: TEdit
      Left = 56
      Top = 108
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '100'
    end
    object SS3: TEdit
      Left = 56
      Top = 132
      Width = 33
      Height = 21
      TabOrder = 6
      Text = '1'
    end
    object SS4: TEdit
      Left = 56
      Top = 156
      Width = 33
      Height = 21
      TabOrder = 7
      Text = '4'
    end
    object SS5: TEdit
      Left = 136
      Top = 84
      Width = 33
      Height = 21
      TabOrder = 8
      Text = '7'
    end
    object SS6: TEdit
      Left = 136
      Top = 108
      Width = 33
      Height = 21
      TabOrder = 9
      Text = '50'
    end
    object SS7: TEdit
      Left = 136
      Top = 132
      Width = 33
      Height = 21
      TabOrder = 10
      Text = '0.2'
    end
    object SS8: TEdit
      Left = 136
      Top = 156
      Width = 33
      Height = 21
      TabOrder = 11
      Text = '4'
    end
    object SS9: TEdit
      Left = 232
      Top = 84
      Width = 33
      Height = 21
      TabOrder = 12
      Text = '0'
    end
    object SS10: TEdit
      Left = 232
      Top = 108
      Width = 33
      Height = 21
      TabOrder = 13
      Text = '1'
    end
    object SS11: TEdit
      Left = 232
      Top = 132
      Width = 33
      Height = 21
      TabOrder = 14
      Text = '0'
    end
    object SS12: TEdit
      Left = 232
      Top = 156
      Width = 33
      Height = 21
      TabOrder = 15
      Text = '0'
    end
    object Button1: TButton
      Left = 16
      Top = 192
      Width = 89
      Height = 25
      Caption = 'SetupDist'
      TabOrder = 16
      OnClick = Button1Click
    end
    object SS13: TEdit
      Left = 56
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '20'
    end
    object SS14: TEdit
      Left = 136
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '7'
    end
    object SS15: TEdit
      Left = 232
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '13'
    end
    object SS16: TEdit
      Left = 136
      Top = 20
      Width = 33
      Height = 21
      TabOrder = 17
      Text = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 296
    Top = 8
    Width = 233
    Height = 65
    Caption = 'FinishStaircase'
    TabOrder = 1
    object FSResult: TLabel
      Left = 152
      Top = 24
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FS: TEdit
      Left = 16
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Button5: TButton
      Left = 56
      Top = 24
      Width = 89
      Height = 25
      Caption = 'FinishDist'
      TabOrder = 1
      OnClick = Button5Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 296
    Top = 80
    Width = 233
    Height = 65
    Caption = 'HighestActive'
    TabOrder = 2
    object HAResult: TLabel
      Left = 152
      Top = 24
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button3: TButton
      Left = 56
      Top = 24
      Width = 89
      Height = 25
      Caption = 'HighestActive'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 248
    Width = 281
    Height = 121
    Caption = 'CurrentEstimate'
    TabOrder = 3
    object CER1: TLabel
      Left = 160
      Top = 24
      Width = 105
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CER2: TLabel
      Left = 160
      Top = 40
      Width = 105
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CER3: TLabel
      Left = 160
      Top = 56
      Width = 105
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 120
      Top = 24
      Width = 17
      Height = 13
      Caption = 'pse'
    end
    object Label24: TLabel
      Left = 120
      Top = 40
      Width = 25
      Height = 13
      Caption = 'slope'
    end
    object Label28: TLabel
      Left = 120
      Top = 56
      Width = 24
      Height = 13
      Caption = 'p_err'
    end
    object Label15: TLabel
      Left = 120
      Top = 72
      Width = 21
      Height = 13
      Caption = 'trials'
    end
    object CER4: TLabel
      Left = 160
      Top = 72
      Width = 105
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 120
      Top = 88
      Width = 14
      Height = 13
      Caption = 'psf'
    end
    object CER5: TLabel
      Left = 160
      Top = 88
      Width = 105
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CEButton: TButton
      Left = 16
      Top = 80
      Width = 89
      Height = 25
      Caption = 'CurrentEstimate'
      TabOrder = 0
      OnClick = CEButtonClick
    end
    object CENS: TEdit
      Left = 16
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object EstUnbiased: TCheckBox
      Left = 16
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Unbiased'
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox
    Left = 296
    Top = 152
    Width = 233
    Height = 65
    Caption = 'StairCaseactive'
    TabOrder = 4
    object SAResult: TLabel
      Left = 152
      Top = 24
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SA: TEdit
      Left = 16
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Button6: TButton
      Left = 56
      Top = 24
      Width = 89
      Height = 25
      Caption = 'DistActive'
      TabOrder = 1
      OnClick = Button6Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 296
    Top = 224
    Width = 233
    Height = 65
    Caption = 'NextTrial'
    TabOrder = 5
    object NTResult: TLabel
      Left = 152
      Top = 24
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button10: TButton
      Left = 56
      Top = 24
      Width = 89
      Height = 25
      Caption = 'NextTrial'
      TabOrder = 0
      OnClick = Button10Click
    end
    object NT: TEdit
      Left = 16
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
    end
  end
  object DebugLevel: TGroupBox
    Left = 296
    Top = 296
    Width = 233
    Height = 97
    Caption = 'DebugLevel'
    TabOrder = 6
    object GDLResult: TLabel
      Left = 152
      Top = 56
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button8: TButton
      Left = 56
      Top = 56
      Width = 89
      Height = 25
      Caption = 'GetDebugLevel'
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 56
      Top = 24
      Width = 89
      Height = 25
      Caption = 'SetDebugLevel'
      TabOrder = 1
      OnClick = Button9Click
    end
    object SDL: TEdit
      Left = 16
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '2'
    end
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 376
    Width = 281
    Height = 145
    Caption = 'Simulate'
    TabOrder = 7
    object Label19: TLabel
      Left = 30
      Top = 28
      Width = 11
      Height = 13
      Alignment = taRightJustify
      Caption = 'ns'
    end
    object Label32: TLabel
      Left = 24
      Top = 52
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'pse'
    end
    object Label33: TLabel
      Left = 196
      Top = 28
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = 'n_fc'
    end
    object Label34: TLabel
      Left = 108
      Top = 28
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = 'nrep'
    end
    object Label35: TLabel
      Left = 104
      Top = 52
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'slope'
    end
    object Label36: TLabel
      Left = 193
      Top = 52
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'p_err'
    end
    object SFResult: TLabel
      Left = 136
      Top = 104
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 27
      Top = 76
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'psf'
    end
    object SF1: TEdit
      Left = 48
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object SF4: TEdit
      Left = 48
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '11.5'
    end
    object SF3: TEdit
      Left = 224
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '2'
    end
    object SF2: TEdit
      Left = 136
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '10'
    end
    object SF5: TEdit
      Left = 136
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '7.1'
    end
    object SF6: TEdit
      Left = 224
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Button7: TButton
      Left = 16
      Top = 104
      Width = 97
      Height = 25
      Caption = 'SimulateFunction'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Update: TCheckBox
      Left = 104
      Top = 80
      Width = 137
      Height = 17
      Caption = 'Update CurrentEstimate'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object SF7: TEdit
      Left = 48
      Top = 76
      Width = 33
      Height = 21
      TabOrder = 8
      Text = '0'
    end
  end
  object GroupBox8: TGroupBox
    Left = 296
    Top = 400
    Width = 233
    Height = 121
    Caption = 'EstimateTime'
    TabOrder = 8
    object Label14: TLabel
      Left = 18
      Top = 28
      Width = 15
      Height = 13
      Alignment = taRightJustify
      Caption = 'rep'
    end
    object Label29: TLabel
      Left = 10
      Top = 52
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'npse'
    end
    object Label30: TLabel
      Left = 82
      Top = 52
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'nslope'
    end
    object Label31: TLabel
      Left = 96
      Top = 28
      Width = 11
      Height = 13
      Caption = 'nx'
    end
    object ETResult: TLabel
      Left = 152
      Top = 80
      Width = 65
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 161
      Top = 52
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'nperr'
    end
    object ET1: TEdit
      Left = 40
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '10'
    end
    object ET3: TEdit
      Left = 40
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '30'
    end
    object ET4: TEdit
      Left = 120
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '15'
    end
    object ET2: TEdit
      Left = 120
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '30'
    end
    object Button11: TButton
      Left = 48
      Top = 80
      Width = 89
      Height = 25
      Caption = 'EstimateTime'
      TabOrder = 5
      OnClick = Button11Click
    end
    object ET5: TEdit
      Left = 192
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '15'
    end
  end
  object GroupBox9: TGroupBox
    Left = 536
    Top = 8
    Width = 233
    Height = 121
    Caption = 'StoreResult'
    TabOrder = 9
    object Label13: TLabel
      Left = 14
      Top = 28
      Width = 11
      Height = 13
      Caption = 'ns'
    end
    object Label12: TLabel
      Left = 84
      Top = 28
      Width = 5
      Height = 13
      Caption = 'x'
    end
    object Label11: TLabel
      Left = 139
      Top = 28
      Width = 14
      Height = 13
      Caption = 'res'
    end
    object SRResult: TLabel
      Left = 136
      Top = 56
      Width = 81
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SR1: TEdit
      Left = 32
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object SR2: TEdit
      Left = 96
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '10'
    end
    object SR3: TComboBox
      Left = 160
      Top = 28
      Width = 57
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'true'
      Items.Strings = (
        'true'
        'false')
    end
    object Button2: TButton
      Left = 32
      Top = 56
      Width = 89
      Height = 25
      Caption = 'StoreResult'
      TabOrder = 3
      OnClick = Button2Click
    end
    object UpdateSR: TCheckBox
      Left = 16
      Top = 88
      Width = 153
      Height = 17
      Caption = 'Update CurrentEstimate'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object GroupBox10: TGroupBox
    Left = 536
    Top = 136
    Width = 233
    Height = 185
    Caption = 'RescaleStaircase'
    TabOrder = 10
    object Label16: TLabel
      Left = 44
      Top = 124
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'nsd_p'
    end
    object Label17: TLabel
      Left = 22
      Top = 52
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'method'
    end
    object Label18: TLabel
      Left = 46
      Top = 20
      Width = 11
      Height = 13
      Alignment = taRightJustify
      Caption = 'ns'
    end
    object Label20: TLabel
      Left = 33
      Top = 76
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'nsd_pse'
    end
    object Label37: TLabel
      Left = 43
      Top = 100
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'nsd_sl'
    end
    object RSResult: TLabel
      Left = 136
      Top = 152
      Width = 81
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 145
      Top = 124
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'nperr'
    end
    object Label40: TLabel
      Left = 138
      Top = 100
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'nslope'
    end
    object Label41: TLabel
      Left = 146
      Top = 76
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'npse'
    end
    object RS1: TEdit
      Left = 64
      Top = 20
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object RS5: TEdit
      Left = 80
      Top = 124
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '3'
    end
    object RS3: TEdit
      Left = 80
      Top = 76
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '3'
    end
    object RS4: TEdit
      Left = 80
      Top = 100
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '3'
    end
    object Button4: TButton
      Left = 16
      Top = 152
      Width = 97
      Height = 25
      Caption = 'RescaleDist'
      TabOrder = 8
      OnClick = Button4Click
    end
    object RS6: TEdit
      Left = 176
      Top = 76
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '500'
    end
    object RS7: TEdit
      Left = 176
      Top = 100
      Width = 33
      Height = 21
      TabOrder = 6
      Text = '100'
    end
    object Rs8: TEdit
      Left = 176
      Top = 124
      Width = 33
      Height = 21
      TabOrder = 7
      Text = '1'
    end
    object RS2: TComboBox
      Left = 64
      Top = 48
      Width = 153
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '1 - rescale to old prior'
      Items.Strings = (
        '1 - rescale to old prior'
        '2 - rescale to flat prior'
        '3 - original prior and scale'
        '4 - flat prior, originial scale'
        '5 - rescale, resize (orig. prior)'
        '6 - rescale, resize (flat prior)'
        '7 - resize (orig. prior and scale)'
        '8 - resize (flat prior, orig. scale)')
    end
  end
  object GroupBox11: TGroupBox
    Left = 536
    Top = 328
    Width = 233
    Height = 49
    Caption = 'Saving'
    TabOrder = 11
    object Label38: TLabel
      Left = 14
      Top = 20
      Width = 11
      Height = 13
      Alignment = taRightJustify
      Caption = 'ns'
    end
    object Button12: TButton
      Left = 78
      Top = 16
      Width = 67
      Height = 25
      Caption = 'Save p'
      TabOrder = 0
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 158
      Top = 16
      Width = 67
      Height = 25
      Caption = 'Save e'
      TabOrder = 1
      OnClick = Button13Click
    end
    object S1: TEdit
      Left = 32
      Top = 20
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '0'
    end
  end
  object Memo1: TMemo
    Left = 536
    Top = 456
    Width = 233
    Height = 65
    Enabled = False
    Lines.Strings = (
      'PSILIB: Library for adaptive estimation of '
      'threshold, slope and miss rate of the '
      'psychometric function. '
      'Kai Scheiber, 3/12/2004')
    TabOrder = 12
  end
end
