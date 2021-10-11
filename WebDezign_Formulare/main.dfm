object win: Twin
  Left = 220
  Top = 126
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'WebDezign Formulare'
  ClientHeight = 577
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 19
  object perso: TGroupBox
    Left = 0
    Top = 0
    Width = 299
    Height = 502
    Hint = 'Zone d'#39'informations personnelles (Votre Identite)'
    Caption = 'Informations Personnelles'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object nom_client: TLabeledEdit
      Left = 13
      Top = 51
      Width = 153
      Height = 23
      EditLabel.Width = 29
      EditLabel.Height = 19
      EditLabel.Caption = 'Nom'
      TabOrder = 0
    end
    object prenom_client: TLabeledEdit
      Left = 13
      Top = 108
      Width = 153
      Height = 23
      EditLabel.Width = 47
      EditLabel.Height = 19
      EditLabel.Caption = 'Prenom'
      TabOrder = 1
    end
    object adress_client: TLabeledEdit
      Left = 13
      Top = 158
      Width = 273
      Height = 23
      EditLabel.Width = 54
      EditLabel.Height = 19
      EditLabel.Caption = 'Adresse'
      TabOrder = 2
    end
    object adress2_client: TEdit
      Left = 13
      Top = 190
      Width = 273
      Height = 23
      TabOrder = 3
    end
    object code_postal_client: TLabeledEdit
      Left = 13
      Top = 247
      Width = 77
      Height = 23
      EditLabel.Width = 74
      EditLabel.Height = 19
      EditLabel.Caption = 'Code Postal'
      TabOrder = 4
      OnKeyPress = Numeric
    end
    object ville_client: TLabeledEdit
      Left = 108
      Top = 247
      Width = 178
      Height = 23
      EditLabel.Width = 29
      EditLabel.Height = 19
      EditLabel.Caption = 'Ville'
      TabOrder = 5
    end
    object tel_client: TLabeledEdit
      Left = 13
      Top = 304
      Width = 109
      Height = 23
      EditLabel.Width = 66
      EditLabel.Height = 19
      EditLabel.Caption = 'Telephone'
      TabOrder = 6
      OnKeyPress = Numeric
    end
    object mail_cliient: TLabeledEdit
      Left = 133
      Top = 304
      Width = 153
      Height = 23
      EditLabel.Width = 27
      EditLabel.Height = 19
      EditLabel.Caption = 'Mail'
      TabOrder = 7
    end
    object adress_ftp: TLabeledEdit
      Left = 13
      Top = 355
      Width = 273
      Height = 23
      EditLabel.Width = 180
      EditLabel.Height = 19
      EditLabel.Caption = 'Adresse FTP (Si disponible)'
      TabOrder = 8
    end
    object login_ftp: TLabeledEdit
      Left = 13
      Top = 405
      Width = 273
      Height = 23
      EditLabel.Width = 159
      EditLabel.Height = 19
      EditLabel.Caption = 'Login FTP (Si disponible)'
      TabOrder = 9
    end
    object pass_ftp: TLabeledEdit
      Left = 13
      Top = 456
      Width = 273
      Height = 23
      EditLabel.Width = 186
      EditLabel.Height = 19
      EditLabel.Caption = 'Password FTP (Si disponible)'
      TabOrder = 10
    end
  end
  object site: TGroupBox
    Left = 304
    Top = 0
    Width = 324
    Height = 502
    Hint = 
      'Zone des caracteristiques de votre site (Fiche technique du site' +
      ')'
    Caption = 'Caracteristiques principales du site'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 133
      Width = 82
      Height = 19
      Caption = 'Type de site'
    end
    object Label2: TLabel
      Left = 13
      Top = 190
      Width = 85
      Height = 19
      Caption = 'Style du site'
    end
    object Label3: TLabel
      Left = 13
      Top = 241
      Width = 114
      Height = 19
      Caption = 'Couleur Principale'
    end
    object Label4: TLabel
      Left = 13
      Top = 291
      Width = 124
      Height = 19
      Caption = 'Couleur de la Police'
    end
    object Label5: TLabel
      Left = 13
      Top = 393
      Width = 120
      Height = 19
      Caption = 'Petite Description'
    end
    object Label6: TLabel
      Left = 13
      Top = 342
      Width = 93
      Height = 19
      Caption = 'Style du Menu'
    end
    object nom_site: TLabeledEdit
      Left = 13
      Top = 51
      Width = 292
      Height = 23
      EditLabel.Width = 81
      EditLabel.Height = 19
      EditLabel.Caption = 'Nom du Site'
      TabOrder = 0
    end
    object type_site: TComboBox
      Left = 13
      Top = 158
      Width = 299
      Height = 27
      ItemHeight = 19
      ItemIndex = 3
      TabOrder = 1
      Text = 'Commerce'
      Items.Strings = (
        'Adulte'
        'Artistique (Musique, Video...etc)'
        'Batiment'
        'Commerce'
        'Cuisine'
        'Education'
        'Informatique'
        'Jeux'
        'Science')
    end
    object style_site: TComboBox
      Left = 13
      Top = 209
      Width = 299
      Height = 27
      ItemHeight = 19
      ItemIndex = 0
      TabOrder = 2
      Text = 'Classique'
      Items.Strings = (
        'Classique'
        'Moderne'
        'Rustique')
    end
    object color_principal: TColorBox
      Left = 13
      Top = 260
      Width = 299
      Height = 22
      Selected = clSkyBlue
      ItemHeight = 16
      TabOrder = 3
    end
    object color_police: TColorBox
      Left = 13
      Top = 310
      Width = 299
      Height = 22
      ItemHeight = 16
      TabOrder = 4
    end
    object des1_site: TEdit
      Left = 13
      Top = 418
      Width = 299
      Height = 23
      TabOrder = 5
    end
    object des2_site: TEdit
      Left = 13
      Top = 456
      Width = 299
      Height = 23
      TabOrder = 6
    end
    object domaine_site: TLabeledEdit
      Left = 13
      Top = 101
      Width = 292
      Height = 23
      EditLabel.Width = 164
      EditLabel.Height = 19
      EditLabel.Caption = 'Nom du Domaine souhaite'
      TabOrder = 7
    end
    object style_menu_site: TComboBox
      Left = 13
      Top = 361
      Width = 299
      Height = 27
      ItemHeight = 19
      ItemIndex = 0
      TabOrder = 8
      Text = 'Horizontal'
      Items.Strings = (
        'Horizontal'
        'Vertical')
    end
  end
  object formulaire: TGroupBox
    Left = 0
    Top = 621
    Width = 628
    Height = 242
    Hint = 'Formulaire a envoyer a Craft@live.fr'
    Caption = 'formulaire a envoyer'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object Memo: TRichEdit
      Left = 6
      Top = 25
      Width = 616
      Height = 211
      BorderStyle = bsNone
      PlainText = True
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      WantTabs = True
    end
  end
  object Button1: TButton
    Left = 8
    Top = 544
    Width = 617
    Height = 25
    Cursor = crUpArrow
    Caption = 'Generer et Envoyer le Formulare'
    TabOrder = 3
    OnClick = Button1Click
  end
  object webmaster: TLabeledEdit
    Left = 260
    Top = 507
    Width = 172
    Height = 23
    EditLabel.Width = 127
    EditLabel.Height = 19
    EditLabel.Caption = 'Mail du Webmaster'
    EditLabel.Transparent = True
    EditLabel.Layout = tlCenter
    LabelPosition = lpLeft
    TabOrder = 4
  end
  object XPManifest1: TXPManifest
    Left = 237
    Top = 42
  end
  object MainMenu1: TMainMenu
    Left = 199
    Top = 42
    object Gestion1: TMenuItem
      Caption = 'Base'
      object Ouvrir1: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = Ouvrir1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Quitter1: TMenuItem
        Caption = 'Exit'
        ShortCut = 16465
        OnClick = Quitter1Click
      end
    end
    object Action1: TMenuItem
      Caption = 'Action'
      object GnrerleFormulaire1: TMenuItem
        Caption = 'Generer et Envoyer le Formulaire'
        ShortCut = 120
        OnClick = Button1Click
      end
    end
    object About1: TMenuItem
      Caption = 'Info'
      ShortCut = 112
      OnClick = About1Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.wdf'
    Filter = 'WebDezign Formulaire [*.wdf]|*.wdf'
    InitialDir = '.'
    Title = 'Ouvrir un Formulaire WebDezign'
    Left = 199
    Top = 75
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.wdf'
    FileName = 'Nouveau'
    Filter = 'WebDezign Foormulaire [*.wdf]|*.wdf'
    InitialDir = '.'
    Title = 'Sauvegarder votre Formulaire'
    Left = 237
    Top = 75
  end
end
