object javaSDKManager: TjavaSDKManager
  Left = 611
  Top = 240
  BorderStyle = bsDialog
  Caption = 'Java Runtime Manager'
  ClientHeight = 389
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 28
    Width = 665
    Height = 361
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
    FullHeight = 200
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 155
      Height = 13
      Caption = 'Verf'#252'gbare Java Versionen:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ListView1: TListView
      Left = 20
      Top = 35
      Width = 626
      Height = 306
      Columns = <
        item
          Caption = 'Java Dateiname'
          Width = 300
        end
        item
          Caption = 'Produktname'
          Width = 200
        end
        item
          Caption = 'Produkt Version'
          Width = 100
        end>
      GridLines = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object AdvDockPanel1: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 28
    MinimumSize = 3
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    UseRunTimeHeight = True
    Version = '5.4.0.1'
    object AdvToolBar1: TAdvToolBar
      Left = 3
      Top = 1
      Width = 659
      Height = 26
      AllowFloating = True
      Locked = True
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CompactImageIndex = -1
      FullSize = True
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList1
      ParentOptionPicture = True
      ToolBarIndex = -1
      object addJava: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 89
        Height = 24
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Caption = 'Hinzuf'#252'gen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '5.4.0.1'
        OnClick = addJavaClick
      end
      object removeJava: TAdvToolBarButton
        Left = 98
        Top = 2
        Width = 79
        Height = 24
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Caption = 'Entfernen'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '5.4.0.1'
        OnClick = removeJavaClick
      end
      object AdvToolBarSeparator1: TAdvToolBarSeparator
        Left = 177
        Top = 2
        Width = 10
        Height = 22
        LineColor = clBtnShadow
      end
      object closeBtn: TAdvToolBarButton
        Left = 187
        Top = 2
        Width = 77
        Height = 24
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Caption = 'Schlie'#223'en'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '5.4.0.1'
        OnClick = closeBtnClick
      end
    end
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2010Silver
    AppStyle = mainFrm.AdvAppStyler1
    Left = 555
    Top = 91
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
    Left = 450
    Top = 91
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    Style = bsOffice2010Silver
    BorderColor = 14731181
    BorderColorHot = 15590880
    ButtonAppearance.Color = clWhite
    ButtonAppearance.ColorTo = 15590880
    ButtonAppearance.ColorChecked = 7131391
    ButtonAppearance.ColorCheckedTo = 7131391
    ButtonAppearance.ColorDown = 7131391
    ButtonAppearance.ColorDownTo = 8122111
    ButtonAppearance.ColorHot = 9102333
    ButtonAppearance.ColorHotTo = 14285309
    ButtonAppearance.BorderDownColor = 3181250
    ButtonAppearance.BorderHotColor = 5819121
    ButtonAppearance.BorderCheckedColor = 3181250
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 15921133
    CaptionAppearance.CaptionColorTo = 15921133
    CaptionAppearance.CaptionTextColor = 6774616
    CaptionAppearance.CaptionBorderColor = 15921133
    CaptionAppearance.CaptionColorHot = 16250355
    CaptionAppearance.CaptionColorHotTo = 16250355
    CaptionAppearance.CaptionTextColorHot = 6774616
    CaptionAppearance.CaptionBorderColorHot = 15921133
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = clWhite
    Color.ColorTo = 15590880
    Color.Direction = gdVertical
    Color.Mirror.Color = 16777214
    Color.Mirror.ColorTo = 16777214
    Color.Mirror.ColorMirror = 16777214
    Color.Mirror.ColorMirrorTo = 15921133
    ColorHot.Color = 16777214
    ColorHot.ColorTo = 16777214
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 16777214
    ColorHot.Mirror.ColorTo = 16777214
    ColorHot.Mirror.ColorMirror = 16777214
    ColorHot.Mirror.ColorMirrorTo = 16250355
    CompactGlowButtonAppearance.BorderColor = 13815240
    CompactGlowButtonAppearance.BorderColorHot = 5819121
    CompactGlowButtonAppearance.BorderColorDown = 3181250
    CompactGlowButtonAppearance.BorderColorChecked = 3181250
    CompactGlowButtonAppearance.ColorTo = 15590880
    CompactGlowButtonAppearance.ColorChecked = 14285309
    CompactGlowButtonAppearance.ColorCheckedTo = 7131391
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 7131391
    CompactGlowButtonAppearance.ColorDownTo = 8122111
    CompactGlowButtonAppearance.ColorHot = 9102333
    CompactGlowButtonAppearance.ColorHotTo = 14285309
    CompactGlowButtonAppearance.ColorMirror = 15590880
    CompactGlowButtonAppearance.ColorMirrorTo = 15590880
    CompactGlowButtonAppearance.ColorMirrorHot = 14285309
    CompactGlowButtonAppearance.ColorMirrorHotTo = 9102333
    CompactGlowButtonAppearance.ColorMirrorDown = 8122111
    CompactGlowButtonAppearance.ColorMirrorDownTo = 7131391
    CompactGlowButtonAppearance.ColorMirrorChecked = 7131391
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 7131391
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 15590880
    DockColor.ColorTo = clWhite
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    FloatingWindowBorderColor = 13486790
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 13815240
    GlowButtonAppearance.BorderColorHot = 5819121
    GlowButtonAppearance.BorderColorDown = 3181250
    GlowButtonAppearance.BorderColorChecked = 3181250
    GlowButtonAppearance.ColorTo = 15590880
    GlowButtonAppearance.ColorChecked = 14285309
    GlowButtonAppearance.ColorCheckedTo = 7131391
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7131391
    GlowButtonAppearance.ColorDownTo = 8122111
    GlowButtonAppearance.ColorHot = 9102333
    GlowButtonAppearance.ColorHotTo = 14285309
    GlowButtonAppearance.ColorMirror = 15590880
    GlowButtonAppearance.ColorMirrorTo = 15590880
    GlowButtonAppearance.ColorMirrorHot = 14285309
    GlowButtonAppearance.ColorMirrorHotTo = 9102333
    GlowButtonAppearance.ColorMirrorDown = 8122111
    GlowButtonAppearance.ColorMirrorDownTo = 7131391
    GlowButtonAppearance.ColorMirrorChecked = 7131391
    GlowButtonAppearance.ColorMirrorCheckedTo = 7131391
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.BorderColor = 1340927
    GroupAppearance.Color = 4636927
    GroupAppearance.ColorTo = 4636927
    GroupAppearance.ColorMirror = 4636927
    GroupAppearance.ColorMirrorTo = 4636927
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clWhite
    GroupAppearance.CaptionAppearance.CaptionColor = 15921133
    GroupAppearance.CaptionAppearance.CaptionColorTo = 15921133
    GroupAppearance.CaptionAppearance.CaptionTextColor = 6774616
    GroupAppearance.CaptionAppearance.CaptionBorderColor = 15921133
    GroupAppearance.CaptionAppearance.CaptionColorHot = 16250355
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 16250355
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = 6774616
    GroupAppearance.CaptionAppearance.CaptionBorderColorHot = 15921133
    GroupAppearance.PageAppearance.BorderColor = 15921133
    GroupAppearance.PageAppearance.Color = 16777214
    GroupAppearance.PageAppearance.ColorTo = 16777214
    GroupAppearance.PageAppearance.ColorMirror = 16777214
    GroupAppearance.PageAppearance.ColorMirrorTo = 15921133
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = clGray
    GroupAppearance.PageAppearance.HighLightColor = clSilver
    GroupAppearance.TabAppearance.BorderColor = 13815240
    GroupAppearance.TabAppearance.BorderColorHot = 1340927
    GroupAppearance.TabAppearance.BorderColorSelected = 1340927
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 1340927
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 16777214
    GroupAppearance.TabAppearance.ColorSelectedTo = 16777214
    GroupAppearance.TabAppearance.ColorDisabled = 15921906
    GroupAppearance.TabAppearance.ColorDisabledTo = 15921906
    GroupAppearance.TabAppearance.ColorHot = 16777214
    GroupAppearance.TabAppearance.ColorHotTo = 16777214
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 16777214
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 16777214
    GroupAppearance.TabAppearance.ColorMirrorSelected = 16777214
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 16777214
    GroupAppearance.TabAppearance.ColorMirrorDisabled = 15921906
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = 15921906
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = 6381406
    GroupAppearance.TabAppearance.TextColorHot = 6774616
    GroupAppearance.TabAppearance.TextColorSelected = 6774616
    GroupAppearance.TabAppearance.TextColorDisabled = clGray
    GroupAppearance.TabAppearance.ShadowColor = 12565174
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16777214
    GroupAppearance.TabAppearance.HighLightColorSelected = 13815240
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 15590880
    GroupAppearance.TabAppearance.HighLightColorDown = 16119026
    GroupAppearance.ToolBarAppearance.BorderColor = 15921133
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 16777214
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 15921133
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 16777214
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16250355
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 15921133
    PageAppearance.Color = 16777214
    PageAppearance.ColorTo = 16777214
    PageAppearance.ColorMirror = 16777214
    PageAppearance.ColorMirrorTo = 15921133
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = clGray
    PageAppearance.HighLightColor = clSilver
    PagerCaption.BorderColor = 13815240
    PagerCaption.Color = 13946827
    PagerCaption.ColorTo = 13946827
    PagerCaption.ColorMirror = 13946827
    PagerCaption.ColorMirrorTo = 13946827
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clGray
    PagerCaption.TextColorExtended = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 13815240
    QATAppearance.Color = clWhite
    QATAppearance.ColorTo = 15590880
    QATAppearance.FullSizeBorderColor = 13815240
    QATAppearance.FullSizeColor = clWhite
    QATAppearance.FullSizeColorTo = 15590880
    RightHandleColor = clWhite
    RightHandleColorTo = 15590880
    RightHandleColorHot = 14285309
    RightHandleColorHotTo = 9102333
    RightHandleColorDown = 8122111
    RightHandleColorDownTo = 7131391
    TabAppearance.BorderColor = 13815240
    TabAppearance.BorderColorHot = 12236209
    TabAppearance.BorderColorSelected = 12565174
    TabAppearance.BorderColorSelectedHot = 12236209
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16777214
    TabAppearance.ColorSelectedTo = 16777214
    TabAppearance.ColorDisabled = 15921906
    TabAppearance.ColorDisabledTo = 15921906
    TabAppearance.ColorHot = 16777214
    TabAppearance.ColorHotTo = 16777214
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 16777214
    TabAppearance.ColorMirrorHotTo = 16777214
    TabAppearance.ColorMirrorSelected = 16777214
    TabAppearance.ColorMirrorSelectedTo = 16777214
    TabAppearance.ColorMirrorDisabled = 15921906
    TabAppearance.ColorMirrorDisabledTo = 15921906
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = 6381406
    TabAppearance.TextColorHot = 6774616
    TabAppearance.TextColorSelected = 6774616
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 12565174
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16777214
    TabAppearance.HighLightColorSelected = 13815240
    TabAppearance.HighLightColorSelectedHot = 15590880
    TabAppearance.HighLightColorDown = 16119026
    TabAppearance.BackGround.Color = 16446701
    TabAppearance.BackGround.ColorTo = 16710906
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 335
    Top = 96
  end
  object ImageList1: TImageList
    Left = 295
    Top = 163
    Bitmap = {
      494C0101030008000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0764800B0784A00B0764800B0784A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A0000009A0004049C0000000000000000000000000000000000000000000000
      000000000000000000001111A4000000000000000000000000000303DC000101
      D600000000000000000000000000000000000000000000000000000000000000
      00000101A10003039B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCB49100D09A6C00D0976800D7AD8800000000000000
      00000000000000000000000000000000000000000000000000000000A2000000
      A6000000A6000404AB000000A200000000000000000000000000000000000000
      0000000000000000A9000505AE000000A900000000000303E7000101FB000101
      F6000101DD000000000000000000000000000000000000000000000000000101
      B7000101B1000101A90003039F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBB49200CF986A00D0956500D8AE8900000000000000
      00000000000000000000000000000000000000000000000000000000B1000505
      B5000000B5000000B1000000B5001111A4000000000000000000000000000000
      00000000B5000000B5000505B500000000000303E2000101F9000101FA000101
      FD000101FB000101E300000000000000000000000000000000000101CD000101
      C8000101C0000101B8000101B0000303A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCB69500D09A6C00D09A6C00D8B08C00000000000000
      00000000000000000000000000000000000000000000000000003E3EB4000000
      BD000000BD000000BD000404BF000000C1005656BB0000000000000000000404
      C1000000C1000000C10000000000000000000101E4000101F4000101F7000101
      F9000101FA000101FD000101E70000000000000000000101E3000101DE000101
      D6000101CF000101C7000101BF000101B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDB89700D09A6C00D0976800DAB39000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      B5000000C9000000C9000505CD000000C9000000C9003232B0000505CD000000
      CD000505CD00000000000000000000000000000000000101E2000101F2000101
      F4000101F7000101F9000101FA000101E9000101F7000101F5000101ED000101
      E5000101DE000101D6000101C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD916E00BD916E00BE927000BE92
      7000BF947100BF947100DCBB9C00D09A6C00D09A6C00DBB49200BC8E6B00BC8E
      6B00BE927000BE927000BE927000BF9471000000000000000000000000000000
      0000000000000000D5000606D6000000D5000606D6000606D6000000D9000000
      D5003535B60000000000000000000000000000000000000000000202E1000101
      F0000101F2000101F4000101F7000101F9000101FB000101FD000101FA000101
      F4000101ED000101D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B47F5400DCBB9C00DCB99900DBB8
      9700DCB69500DBB49200DCB49100CF9C6F00D09A6C00D6AA8400D6AA8400D6A8
      8100D5A57C00D5A57C00D5A47B00AE7446000000000000000000000000000000
      000000000000000000000000DD000000E1000000E1000000E1000000E1000808
      B800000000000000000000000000000000000000000000000000000000000202
      DF000202EE000101F0000101F2000101F4000101F7000101F9000101FB000101
      FD000101E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B47F5400D9B59400DBBA9C00DDBC
      9D00DDB89700DCB49100DAB39000D8AA8400D5A47B00D49F7400D09A6C00D09A
      6C00D0986900D0976800D0956500AE7446000000000000000000000000000000
      000000000000000000000202EA000101ED000101ED000101ED000101ED000000
      D500000000000000000000000000000000000000000000000000000000000000
      00000202DE000202EC000202EE000101F0000101F2000101F5000101F7000101
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3805600DDBC9D00DDBC9D00DDBD
      A000DDBC9D00DDBDA000E0BC9E00E0BC9E00E0BC9E00DDBC9D00DDB89700DDB8
      9700DDB89700DDB89700DDB89700B07A51000000000000000000000000000000
      0000000000000000E5000000D9000000D1000000CD000404BF000505B5000505
      AE000000A2000000000000000000000000000000000000000000000000000000
      00000202E9000202EA000202EA000202EC000202EE000101F0000101F2000101
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AA6E4000C3977400C3987500C49A
      7700C49A7700C49A7700E9D5C100DDBC9D00DDBC9D00E7D0BC00C3977400C295
      7100C2957100C2957100C2956F00AC7042000000000000000000000000003030
      B6000000FC000101F1000202EA000000E1000000D900000000000000C5000000
      BD000000B5002020AA0000000000000000000000000000000000000000000404
      EA000606FC000606FD000606F8000303EB000202EA000202EC000202EE000101
      F0000202E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBD8C500DDBC9D00E0BC9E00E8D2BE00000000000000
      00000000000000000000000000000000000000000000000000000505CD000000
      FC000000FC000000FC000000F9000101F1000000000000000000000000000000
      CD000000C9000000BD007474CA000000000000000000000000001111E8001515
      FB001616FB001717FB001818FA001919FA001A1AFA001B1BFA001C1CFA001D1D
      FA001E1EFA001919E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECD8C600DDBDA000DDBC9D00EAD6C400000000000000
      000000000000000000000000000000000000000000000505E7000101F1000101
      F1000000F9000000F9000000FC00000000000000000000000000000000000000
      00000000CD000000D1000000C50000000000000000001E1EE6002626F8002727
      F8002828F8002929F8002A2AF8002222E6002323E6002D2DF7002E2EF7002F2F
      F7003030F7003131F7002929E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBD8C500DDBC9D00DDBC9D00EBD8C500000000000000
      0000000000000000000000000000000000000505CD000101ED000505E7000101
      F1000101F1000101F1004141BB00000000000000000000000000000000000000
      0000000000000D0DB5000000D9000000CD002C2CE4003838F6003939F6003A3A
      F6003B3BF6003C3CF5003131E40000000000000000003333E4004141F5004141
      F5004242F5004343F4004444F4003838E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBD8C500DDBDA000DDBDA000EAD6C400000000000000
      0000000000000000000000000000000000000202EA000101ED000505E7000101
      F1000101F1000D0DBC0000000000000000000000000000000000000000000000
      000000000000000000007575CC00000000002424C4004A4AF3004B4BF3004C4C
      F3004D4DF2003F3FE100000000000000000000000000000000004242E1005353
      F1005454F1005555F1005656F1002B2BC3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECD8C600DDBDA000DDBDA000ECD8C600000000000000
      0000000000000000000000000000000000000505DE000202EA000101ED000202
      EA000606D6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D2DC3005D5DF0005E5E
      F0004D4DDF000000000000000000000000000000000000000000000000005252
      DF006666EF006767EE003333C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BA896200BA896200BA896200BA896200000000000000
      000000000000000000000000000000000000000000000707DB000202EA000707
      C800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003636C1005959
      DD00000000000000000000000000000000000000000000000000000000000000
      00005F5FDC003A3AC00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3FE3FDCFF30000FC3FC1F887E10000
      FC3FC0F103C00000FC3FC06301800000FC3FE007800100000000F807C0030000
      0000FC0FE00700000000FC0FF00F00000000F807F00F00000000E043E0070000
      FC3FC0E1C0030000FC3F81F180010000FC3F01F801800000FC3F03FD03C00000
      FC3F07FF87E10000FC3F8FFFCFF3000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    FileName = 'javaw.exe'
    Filter = 'Java Runtime Enviroment|javaw.exe'
    Title = 'Java Runtime Enviroment ausw'#228'hlen'
    Left = 340
    Top = 208
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 130
    Top = 143
  end
end
