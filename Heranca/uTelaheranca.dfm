object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informe Aqui o Titulo'
  ClientHeight = 370
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 740
    Height = 320
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -6
    ExplicitWidth = 705
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 732
        Height = 52
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 16
          Top = 11
          Width = 313
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Pesquise Aqui'
        end
        object btnPesquisar: TBitBtn
          Left = 328
          Top = 9
          Width = 75
          Height = 25
          Caption = '&PESQUISAR'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 52
        Width = 732
        Height = 240
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 320
    Width = 740
    Height = 50
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 322
    object btnNovo: TBitBtn
      Left = 3
      Top = 13
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 84
      Top = 13
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 165
      Top = 13
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 246
      Top = 13
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 327
      Top = 13
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 660
      Top = 13
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 408
      Top = 13
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 436
    Top = 24
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 500
    Top = 24
  end
end
