object frmSpringLogging: TfrmSpringLogging
  Left = 0
  Top = 0
  Caption = 'Spring Logging'
  ClientHeight = 260
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    818
    260)
  PixelsPerInch = 96
  TextHeight = 13
  object btnTrackThis: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 25
    Action = actTrackThis
    Caption = 'Track a method'
    TabOrder = 0
  end
  object grp1: TGroupBox
    Left = 8
    Top = 39
    Width = 409
    Height = 209
    Caption = 'TLogEntry'
    TabOrder = 1
    object lbl1: TLabel
      Left = 12
      Top = 26
      Width = 46
      Height = 13
      Caption = 'Message:'
      FocusControl = edtMessage
    end
    object lblData: TLabel
      Left = 13
      Top = 51
      Width = 27
      Height = 13
      Caption = 'Data:'
      FocusControl = edtData
    end
    object rgpLogEntryTypes: TRadioGroup
      Left = 13
      Top = 75
      Width = 197
      Height = 121
      Caption = 'TLogEntryType'
      Columns = 2
      TabOrder = 0
    end
    object rgpLogLevel: TRadioGroup
      Left = 216
      Top = 75
      Width = 178
      Height = 121
      Caption = 'TLogLevel'
      Columns = 2
      TabOrder = 1
    end
    object edtMessage: TEdit
      Left = 68
      Top = 23
      Width = 232
      Height = 21
      TabOrder = 2
      Text = 'You have been warned!'
    end
    object edtData: TEdit
      Left = 68
      Top = 48
      Width = 232
      Height = 21
      TabOrder = 3
    end
    object btnLog: TButton
      Left = 319
      Top = 21
      Width = 75
      Height = 25
      Action = actLog
      TabOrder = 4
    end
  end
  object mmoLog: TMemo
    Left = 432
    Top = 10
    Width = 378
    Height = 242
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object chkTraceLogEnabled: TCheckBox
    Left = 143
    Top = 12
    Width = 84
    Height = 17
    Caption = 'TraceLog'
    TabOrder = 3
  end
  object chkFileLogEnabled: TCheckBox
    Left = 233
    Top = 12
    Width = 83
    Height = 17
    Caption = 'File log'
    TabOrder = 4
  end
  object chkMemoLogEnabled: TCheckBox
    Left = 320
    Top = 12
    Width = 92
    Height = 17
    Caption = 'Memo log'
    TabOrder = 5
  end
  object aclMain: TActionList
    Left = 192
    Top = 160
    object actTrackThis: TAction
      Caption = 'Track this'
      OnExecute = actTrackThisExecute
    end
    object actWarn: TAction
      Caption = 'Warn'
    end
    object actLog: TAction
      Caption = 'Log'
      OnExecute = actLogExecute
    end
  end
end
