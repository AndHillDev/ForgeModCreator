object settingsFrm: TsettingsFrm
  Left = 168
  Top = 268
  BorderStyle = bsDialog
  Caption = 'Einstellungen'
  ClientHeight = 329
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 329
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.1.0.4'
    BorderColor = 13815240
    Caption.Color = clWhite
    Caption.ColorTo = 15590880
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = 5978398
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15590880
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16249840
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 5978398
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = clWhite
    StatusBar.ColorTo = 15590880
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    DesignSize = (
      406
      329)
    FullHeight = 200
    object Label1: TLabel
      Left = 20
      Top = 15
      Width = 109
      Height = 13
      Caption = 'Projektverzeichnis:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 20
      Top = 60
      Width = 41
      Height = 13
      Caption = 'Eclipse:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 105
      Width = 67
      Height = 13
      Caption = 'GUI-Design:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 150
      Width = 283
      Height = 13
      Caption = 'Standardm'#228#223'ige Java Virtual Maschine ausw'#228'hlen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 0
      Top = 272
      Width = 406
      Height = 6
      Anchors = [akLeft, akRight, akBottom]
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 20
      Top = 195
      Width = 49
      Height = 13
      Caption = 'Sprache:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object projectFolder: TJvDirectoryEdit
      Left = 20
      Top = 30
      Width = 366
      Height = 24
      DialogKind = dkWin32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object eclipseFile: TJvFilenameEdit
      Left = 20
      Top = 75
      Width = 341
      Height = 24
      Filter = 'Eclipse Anwendung|eclipse.exe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GUIDesign: TComboBox
      Left = 20
      Top = 120
      Width = 366
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'Office 2003 Blue'
        'Office 2003 Classic'
        'Office 2003 Olive'
        'Office 2003 Silver'
        'Office 2007 Luna'
        'Office 2007 Obsidian'
        'Office 2007 Silver'
        'Office 2010 Black'
        'Office 2010 Blue'
        'Office 2010 Silver'
        'Terminal'
        'Whidbey Style'
        'Windows XP'
        'Windows Vista'
        'Windows 7')
    end
    object JavaSDK: TComboBox
      Left = 20
      Top = 165
      Width = 366
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
    end
    object autoUpdate: TCheckBox
      Left = 20
      Top = 240
      Width = 366
      Height = 17
      Caption = 'Automatisch nach Updates suchen'
      TabOrder = 4
    end
    object applyBtn: TAdvGlowButton
      Left = 170
      Top = 282
      Width = 106
      Height = 31
      Anchors = [akRight, akBottom]
      Caption = #220'bernehmen'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000002FE49444154789C5D935D689B5518C77FE77DDF346F68EDD2D4AEAD1D
        35EB20947DD876512FA60E17B162552C5356153B2F1C6617C2548481885EE8C5
        2EC4324566A72032A48A1B827454110A2B9BDB282D6B185BB7AE5DC7927EB8B4
        4DF5D57CBD398F176933E3033F3817E7CF799EFF73FE8AFF95D161B46F0A3545
        C3E19D914D8D4D41039385C585D9F3A31786E353897E3DAE2FFDF7BE2A1D42CA
        D7D8D670F4A5E8BED7C31D3B0D5BD9D8C61ACAC66B78393B764E7FF279DFD789
        CB894372553200E6BAB8E589CD43FB3F7C756FE0BE80CA499E75F26BA49C5532
        A9AC8AEC793C3CBA38F698F38FF33D495C13A02652F3C553EF75BE80574A8222
        39B292235BC8F0E7951CAFEC7E83BF96B31CF71D0B4A5C6F648A414BB5A9F6D6
        D7420756CD55B26E9662EB5ED647F8237587959843FF8B2710A5108F42650DCC
        473D070AF3F96396AFD58E165A0A46D24DAECDEBC3366C24235C9A8891B839CF
        F0CBBF63792AC8B979DE1D7A138542F94C4307DCA8656EB5224977A964966DD8
        A4E319AE9F9B269FCBF3CE038769DDBC1D01BE1CFA8CEB7726511845E3FD66C4
        CAD5E4824BEE72A9EDFC7481A50B2B8840B3BA9FB7BB0F23C05C3241DFC81150
        EAEE0A2B54D0BA271340CD2B7AEC1E6AAD3A8E4EF4A1AB34B8F0C1931F53E1B5
        D1C04783EFE3543BE59FC616ACAA05FF6C677367E848D7A768E0996037CF9F7C
        9A7A69E0D947F6A281F11BA39C4A0E201BCAF5DA9559937AB5CDB3A5FAC17A6A
        09366CA176431DBB1BF7B0A3AE8396A61022C2C1C15E6EFB6E8157CAD017DD1F
        95DAA1DAB71E7C78EC967DC5F869D72F3CD4BA0B013420C0AFB1417A27BBC12A
        7F5D6E8A96133A5C34A34B1D57A70DF10F04E4ECCC842C8B485244160B05D976
        AA4DD46F4639A70DA18B7EA0B80F99944332A0479C06879EF1E798999B46809F
        6327B9567F15B3D2BA8B652103FA0C3778AB9405567071F8414DA98D9EA0AF63
        64FE8C9A9B8BF35DF25B6CAB926A3740B51BC0B866EAF437CE5732A17B99225D
        96C6526DA7DDD75C15F5B7DC1BF1F92B8300E9D4DFB3A999E4703AEEF413A32C
        CEFF025A0357CE7E824F0B0000000049454E44AE426082}
      Rounded = False
      TabOrder = 5
      OnClick = applyBtnClick
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object cancelBtn: TAdvGlowButton
      Left = 280
      Top = 282
      Width = 106
      Height = 31
      Anchors = [akRight, akBottom]
      Caption = 'Abbrechen'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000002CB49444154789C5D934F68147714C73FBF999D4976375B53339345A3
        C91A68D4E4E0146B49D4A6CD5E140B427BD1839EC4E84DB4D043A104043D1603
        8510A3D243296894422925079B60FC07A5A2E6A046DDC4A44D57B2DA44B3EEEC
        ECCECCF31017D6BCD3E3BD2F9FF7E5C157B1A27E4C249CF6D6D623565353DA8C
        C7532845C9759FBD989B1B7D9CC90C1E7DF5EA5EB55E559A6F0C23BAA7A5A5BF
        DD710E45EBEA34D4BB9552A014A214C542217C70F7EEF9D1A9A963A73CCF05D0
        014EE87A745F6BEB88D3D6F6B519044A735D5EE772C1CB6C766629975BC4753F
        8886A16606816A6A6CDCDA20F2597261E1E2F530F40118B3EDB385CE4E297475
        4961FB76B99A4C0E9F360CABE2EE782462FD6EDB7DD9CECE62BEA747F2E9B48C
        AD5D7B168033BAEE2C6ED810786D6DE26DDC28DEA64DF23C955AFAC53477ACFC
        CF85DADAF4FCE6CDC5A2E3C8FF1D1DC1A0693A8C9BE680DFD020BE65C9782C36
        B26859E5723229D9D5AB177FD6B46D2B217FC4627DA5E66629B5B4C88D446280
        C79A36E94722928B44FC1FC0BAAC6907974C33086A6A246B182F7F822DD580E3
        60BF88C783209190A7D1E82419F0F2208F60AA22FA150E2F40E8824CC3FC10B4
        57439E28355D524A6695F23417C803C52AC157303406C716401260EF80AB03F0
        5165EF895010C113819B309901B90F7E1F58D597AEC0B719086740FE86D97E48
        7D0FF643F0FF5D9E4DEA7BA1230E9F28D074280CC3B50AE012DCEC5E76D15303
        ABEA616F1DAC4FC2A765E01F18D6B7C09C0DBD01A81AE8EA865BBFC17415E4DA
        17501B839D067CB80AB6F9C01B0827A057FF139EEF8275066C1588C461FF6ED0
        DBE1C1752800EC8409055F46C0F68112F01F9C3B04430AA017A29FC3481CBA61
        39203E843ECC0218D06C8256094E1EC66FC3EE33E0EA0077C0B7E062033486F0
        711954084AA01EA80F4095010FC2D770EE2F38D00F6EE5D87B75129C35704441
        1A48BD133D13189D87C1EFE0BD38BF05213810390AC105C60000000049454E44
        AE426082}
      Rounded = False
      TabOrder = 6
      OnClick = cancelBtnClick
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 362
      Top = 75
      Width = 24
      Height = 24
      Hint = 'Eclipse herunterladen und installieren'
      Caption = 'AdvGlowButton3'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000002AD4944415478DAA5534D48545114FEEE7B6FFED4742CABC5A4F88735
        A88984451B51310AA285041191835184BB5645448BA088A236463FB40809B3B1
        44273172610DFE344836A4D388138EA968E8303A6ACEDF9B99F7DEEDCE844365
        B8A873B970B9F79CEF9CF37DE712FCA7913F2FA27D57A9732E048B1D181A5984
        D7E383A012905F684047D723B22980DF7C8CDE1DCEC78BCE2908BCF6AF19B5A9
        12EC4E0BD900106CA9A297AC46F4F52D821082FADD2938919B028E9D15F6DE39
        2BA279DC9FF0951511AE996E9204083FDE43DB03C771EBBE8B05F00927533641
        C3DE9DE0552AC83E1F5A1D0B78B29691AC84D744E1707511127D7F9D4ADE711C
        BE4DB0B62C271D4CFA00CE1854207E3FA2A3A330EB72D0AC2BFAAD9D930D9520
        E2B36AEA90CA311A3C88F27D46F01C9FA84BD3F614BBDEF6409A99811C0A61C9
        741662E3859F9194221693D0DF6F03093FC8A356FE34DE39F5D8BA45838C5000
        9C28A2D86943897308341C86C278183B500357452D286B29A0D6212429704FBA
        19C0C37C6AE54EE18D3D0D86541ED5F61E14D86DE064195461F4B1E07846253D
        1DC8CCC4B7A25258CB0E6131AA607A7A92B5D05A439D7239BEC855282E29843A
        E087EE7C3DD22627120AC4291518407C477272E1696E83BC7D0722AC4AAB7510
        246ABB49258F0347EE7058F64A4C7F1DF279352ECE76A338EC4D04C6A50AEBF5
        B89C5D873164602D381F2702F5E7AAD76534524BA80E379A988C9C00AD468F06
        DD2A4CAED7EC318C154180D5588B3675293CDFE7D91C44A14E89E1D3D82B921C
        A4504B25BD32588ADE5E0F6B9B636A68D0287D45C5DC3006B2CA60DEB61FA2B8
        C2F22A6C89189FFA6590D62D603E4AEF8D14A1A5DD0D9EE8A05562288C2CC1AD
        C9428453312E29D2F4141F463A368E72F2330D5CA3130B41583E2A18FABC0AEF
        820F2AB580BC02039EBF6CDAFC33FD8BFD00E08D21DF8BBBE6C2000000004945
        4E44AE426082}
      Rounded = False
      ShowCaption = False
      TabOrder = 7
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
    end
    object language: TComboBox
      Left = 20
      Top = 210
      Width = 366
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 8
      Text = 'Deutsch'
      Items.Strings = (
        'Deutsch'
        'Englisch')
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 13815240
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = clWhite
    Settings.Caption.ColorTo = 15590880
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = 5978398
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = clWhite
    Settings.ColorTo = 15590880
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clBlack
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderColor = 16249840
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = 5978398
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = clWhite
    Settings.StatusBar.ColorTo = 15590880
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2010Silver
    Left = 325
    Top = 130
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2010Silver
    AppStyle = mainFrm.AdvAppStyler1
    Left = 290
    Top = 185
  end
end
