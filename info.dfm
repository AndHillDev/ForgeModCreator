object infoFrm: TinfoFrm
  Left = 101
  Top = 186
  BorderStyle = bsDialog
  Caption = 'Programminformationen'
  ClientHeight = 293
  ClientWidth = 422
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
    Top = 0
    Width = 422
    Height = 293
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
    object Label7: TLabel
      Left = 95
      Top = 150
      Width = 301
      Height = 71
      AutoSize = False
      Caption = 
        'Dieses Programm nutzt Bibliotheken, die von Drittanbietern stamm' +
        'en. Das Copyright f'#252'r die folgenden Bibliotheken liegt bei dem j' +
        'eweiligen Entwickler. DelphiZip (DelZip64.dll und DelZip190.dll)' +
        ', Borland Memory Manager (borlndmm.dll) sowie SQLite3 Library (s' +
        'qlite3.dll)'
      WordWrap = True
    end
    object Label6: TLabel
      Left = 140
      Top = 120
      Width = 129
      Height = 13
      Cursor = crHandPoint
      Caption = 'https://www.andhilldev.de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label6Click
    end
    object Label5: TLabel
      Left = 95
      Top = 120
      Width = 36
      Height = 13
      Caption = 'WWW:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 95
      Top = 90
      Width = 135
      Height = 16
      Caption = 'Alle Rechte vorbehalten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 95
      Top = 70
      Width = 223
      Height = 16
      Caption = 'Copyright '#169' 2018 AndHill Development'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 95
      Top = 50
      Width = 273
      Height = 16
      Caption = 'Programmiert und entwickelt von Andreas Hiller'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 95
      Top = 20
      Width = 303
      Height = 19
      Caption = 'Forge Mod Creator V0.0.0 Build XXXX'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 20
      Top = 20
      Width = 64
      Height = 64
      Picture.Data = {
        0A544A504547496D616765711C0000FFD8FFE000104A46494600010100000100
        010000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC00011080080008003012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00C4B5
        D36D9350759248DAE17EE3EEE7FEF8ABDA969715CED7B1B292595783E6BA2FFE
        8550DEF88624745B3D3267DC7E478E05DDFF00A154D61E39D4E1564FB244FF00
        F4D25DB13FFE815FCFAA36D4FDB5F3BD916349D2B57DDBBCB95216FE1FF3F7EB
        27C550CF633C32C76F24370CDB37EDDAB5B7FF00096EB5A842F1AC174E98F95F
        6FCBFF007DAA564DD586B9ACCEB1DD4CFE46EFBBE43BFF00ECD531DEEEC1ADEF
        2B1A31C33CFA4ADDC99797EE6F5EB583E25B6D3EDA34961D916A0FF32ECF93E7
        DDFC7534F672AE02CD793315744F9153FF0064F96B3ADFC3FE7DE23DBC510BA9
        7A6E6791BFF1EFBB4A1683BB65DB991B7E1D99EF2D72CADF6BFE29A2F9715D05
        B59CA929B917BB2657FE335CFE97E09D566675BAB39E58CAFF00032C47FF0043
        AEAE5D1D74CD310C9A6476FF002A7CFE7ECAA767AA3094A2B44EE72F79E25B54
        BAFB0C764B7BBE5DD72F6ECEA9BFFDEDF5B515B4B0DBF9505B41636FB36AF948
        B8E9FEDA572B610AEB1AB3AB97B8877FFAA84F948BFF0003FE3AED61B7B4D3EC
        26F2A3B2B5B7B68CB4BF6893CB2AA0399093B781DEAB99FC22A89436454BB5BA
        86C4DC7F6A43A6C084BCAF30475C0E49525F8C57C43FB457ED1571E31BBBAF0E
        787353B993C3C8764F75BB67DB31D801C08C1FFBEBE957BF696FDA82EFC7B25D
        785FC3574D078683EDB9B884B29BF20F4E7FE59F1C0C0DDD4F6AF9CA289E7952
        38D1A491C85545192C4F4007735FA4E4991AA36C56263EF745DBCDF9FE5EBB7C
        1E699BCAADE8517A757DFC9797E7E9BFD5FF00B37FC77B5F105CDB7873C57701
        358E23B0D4E66E2E3D23933C799E87F8BA7DEFBDF4BEA5A5C573B5EC6CA49655
        E0F9AE8BFF00A157E5B8254820E08EE2BEC5FD9CBF6B4BFBC86D7C29E25786E3
        51E22B2D4EE1951A71DA391F69CBF60C7EF700FCDCB70E7791F25F17845A758F
        6F35E5DD1DB94E7129DB0D887AF477FC1FE87D17A4E95ABEEDDE5CA90B7F0FF9
        FBF593E2A867B19E1963B7921B866D9BF6ED5ADBFF0084B75AD42178D60BA74C
        7CAFB7E5FF00BED52B26EAC35CD66758EEA67F2377DDF21DFF00F66AF818EF77
        63ED35BDE562F4168BBF748A90CADF23EC976B7FE80B4E6B093C85555DCFFEDE
        EF9BFF001EFAD6FDE6811C23635D5B5A6FF9D5DA2D9BBFF1DF9AB9EBCBC96C27
        8526BEF36DBEFA4A857EEFFC0956A791A146A2A9F092D8D834316DB89608B1C3
        C496D86FFD0EA5B0FECA45FF004BBA82256FB8F3459F9BFEFBFAD52BEBE826B5
        6FB1EA2AF379BD5FC85FFD06B1E7875096DFCDFED38FCA67F977CEACBFF8EECF
        F6A972B8EAFF0052D7BCACF43D0ED6CF4A7B0796DE3D36EB6BFF00A976DAFF00
        FA0B516F78D60A8D75A55A456A8DB65786E7CDDBFF0000F2BFCF15E79A3CDA8C
        62416FA96A31A2E77AC7326C63D08DA9BFD2BB389EDB51F2E065BC86E157EF3B
        CBB19F67F7FCAABBB8BE8724E959FBCEE8D096FF0048B9BCFF00897DB4F2A49F
        2B3DBC0AEA9FF00DE9536B3A569FE53C71CF3CFF00365FE4DAFF0073EEAFF9FE
        0ACEB2D065B6911ADA5BE87E6E37CB2ECFF7BE4B7A8F55647496EAF6E668E2B6
        C4D24B2DCB471A281924975E001DCFFB3436DE84A8C54938BD111DB5A695A258
        4973234F69140A5DCCCC918DA039054EFE00FD2BE15FDA2BF68A97E235D3E89A
        0ABD8787E2204C5652C6EDC70493FDDCE718EB9CD687ED2FFB4CCDF10E7B9F0D
        786AE258BC2E8E3CE9C9F9EF987BE011183D077C027A003C034BD2EF75CD4AD3
        4ED3AD27D4350BB9560B7B4B589A496691880A888A09662480001924D7E9791E
        47EC2D8AC547DFE8BB79BF3FCBD76F88CD73675AF4283D3ABEFE9E5F9FA09A6E
        9B77ACEA36BA7E9F6B35F5FDDCA905BDADB4664966918855445192CC490001C9
        26BF6C7FE09E5FF04EEB3FD9EB4EB6F1E78FED60D43E25DD479B7B638922D0E3
        6182887A34E4121E41C004A29C6E6793FE09E7FF0004F0B3FD9D74EB6F1DF8F2
        DE1BFF00899771661B73B648B438D8731A1190D3904879070065138DCCFF0074
        57DC9F287E4BFF00C1487FE09BE3C3C354F8B1F0A34C0BA50DD73AEF86AD13FE
        3D7BBDCDB20FF967D4BC63EE72CBF2E427E61038391C1AFD41FF0082917FC148
        175B5D57E137C28D4C369A775B6BBE25B493FE3E3B3DADB30FE0ECF20FBDCAAF
        CB92DF97DD6803EBBFD99BF6898F596B5F08F8B2EE386EF023B2D4648B71B9EC
        2291B70F9FA004FDEE84EEFBDF4E587F6522FF00A5DD4112B7DC79A2CFCDFF00
        7DFD6BE55FD9E3F67B8B4DB4B6F167889A21ABEF57B0D32664C5BF712CA09FBF
        E8A47CBD4FCDC2FD0B3C3A84B6FE6FF69C7E533FCBBE7565FF00C7767FB55F8B
        6771C24718DE136EBDAFE5FD7A1FABE52B132C2A58ADFA77B79FF5EA77175379
        DE521BE5776F937B2337DFFEE7EF7E46AC895D44A9B7599D2166FB90B22BFF00
        B5F71EBD5752B0D1CC6563820B77FBBF73F8BFDBF92B8CD4ADBE72ED25A322B3
        AAFF00A0EFDBFF008FD78529D91D3426A5A5AC7097FA3698EE1ACEE9E5756DAE
        66DAFBBFEFBAF08FDA23E38C7F0F45CF857C3EF6F36BEEBB6EEE45A22AD92B2E
        405F590820E7F873EBD3EB25B6FB5DD2C6AB122FDC577B65C7FC03E7AF1DFDA5
        3F65A5F8A5632EAFA5C315978A2DA3CA4C2DBC88AF147485C6E38603EEB7E078
        C6DF5329A9858E2E32C67C1F85FA5FCBFAD8E6CC675DE1DC30CFDEFC6DE5E67C
        97F013E3A3FC34D712D35B886A3E1ABB941B957856596024F32479E7EAB9E7AF
        5AFD13F0DAF87F54D1E0D574B9ADEEF4FBB85658A6B5B780C72E47CC5BFC2BF2
        5F54D2EEF44D4AE74FBFB692D2F6DA468A68265DAF1B838208AF65FD9CBF696D
        53E0C5F1D2EF08BEF0ADDC81A5B7963F34DAB679962191F8AE403D7A8AFBECEB
        248E323F59C2AF7FAAE92FF83F99F1B96E693A0D50ACFDDE9E5FF03F23F4585A
        D8E9B07DB2E6136B0DAA99A579E048A28A20324B48BC000739AFCFFF00DA77F6
        8B8BE216A973E1FF000A3B45E1789B125D18C4725FB0E49C00311EE1903A9EA7
        B01F7ECDFD97F117C1EA976D6DABE85A9460BAA42E12E6175C83B3721C1041F5
        FA57E78FED2FFB336A1F053556D4B4EF3750F07DD4BB6DEF19407818FF00CB39
        002703FBADDFEB5F39C391C24B14D57FE22F853DAFFE7DBFCCF57389E2151FDD
        FC2F7B76FF0023C534BD2EF35BD4AD74ED3AD26BFBFBB9560B7B5B68CC92CD23
        1C2A228E598920003939AFDB5FF8278FFC13D2C7F675D2AD7C79E39B686FFE27
        5E4198A0244916871B8E638C8C869C83879064019443B77349F8AFE11F16EB1E
        03F13699E21D02FE5D2F5AD3675B9B4BC808DD148A720F39047A820820904106
        BF77FF00613FDBB741FDAC3C2634CD4CDBE8BF1234C8036A3A503B63BA41806E
        6DB272509C6E5E4A138390559BF563E14FAC09C0C9AFC97FF828F7FC1493FE12
        0FED4F853F09B54FF89510D6BAEF896D1FFE3EBB3DB5B38FF967D43C83EFFDD5
        3B725E3FF828FF00FC1488F894EA7F0A7E136A8468E375B6BBE25B37FF008FCE
        CD6D6CE3FE59750F20FBFF00757E4C97FCC6A6015E83F027C45E19F0BFC47D36
        FF00C5304AF608C3CBB98F9FB24991B652BFC58E7E99DC3240AFA53E02FF00C1
        35358FDA0BF65BD47E24F86FC59A75E78B5AE5C69BE1B824564648B22486E243
        FEAAE1F2AC8A7E50BB371025CC7F1B6B3A3DFF0087756BDD2F54B39F4ED4ACA6
        7B7B9B4BA8CC72C32A12AC8EA7956041041E98AC2BD28D7A52A52765256D3735
        A551D1A91A91DD773F4AA7D3B47BE8A2B9D32FBED71BE08958A4AB282321816E
        A31D0D6A5BE950697CDC7D99BFD87B3554AF8D7F66CFDA465F877796FE1DF124
        A27F0B4AFB63B8922F364D3893F790672509392BDB923B83F7E2D87F695A4173
        04B04F612A0B886EA2B61E4C884023680E410410722BF13CD32EAD96D5E59FC2
        F67D1FFC1F23F54C0E654B1B4D35A3EABA97AFEFD61B046BFD423B276FB92EE5
        D9FF00006F2977D7316A92DF6C97CF8A587CDFF97A8B6A7DCFF6BF86B575BBF9
        FCB4787598A5B66DAEE9BD91B6EDFEFA3FFEC95C65BBE9F36A91451DAB4A8AAC
        ECEF3EE89BFDDF9DBFEF9AE270BF43AE85A317FD7F91D2A69BE6C50FD963D8ED
        FB9FF41BADE9B7FBFB7E7A8A3F0C62FF0074AFB3CA54D8FE43ACBBFF00DBF29F
        FF001CAF853F695F895E26D23E33788ECF45F13EAFA7697B6DF65AD8EA52A420
        1B78C9002B01D49EDD49AF2E1F15BC6C1428F186BE147007F69CF81FF8F57D7E
        1F86AAE22942BAAABDE49ECFAAB9F3B5B3FA742ACA9723D1B5F71F69FED23FB3
        FE9BF15122D4349B8B5B2F15C70BF962495B37AA8388DB318E7B06278E878E9E
        55FB387ECBB7373A8C7E25F1AE96C2CED65CDBE933F947CC756C6E9D1E452132
        385FE2EA7E5E1BC1A1F8C1E3DB7C795E37F11C78E46CD5AE063FF1FF0061F957
        E98E97E27F2E4668AF25BB2DDD3737F7BF8F637FB75D38D963B26C2C70BED135
        2BD9EB7495AE97ADFE463838E1734C44B10A9D9C6D74DE8EF7D7F0F99D058E89
        73773C925B4D0DA46DF379215B722FA7FADDB53DE7876C7C47A7DD691AD258EA
        56975098DE09A3F33CD5F4237EFACCFF0084B2E50992DE457DCFFBD48FEFBFF7
        2AB6AFFDA37F15BCF6CB6737EF7EECD06D7F9ABE293D538E963E965093BA9ECC
        F81FF692FD9AF50F83BAACDAA69914D77E119E5DB15C10CC6D58F48E4620647F
        75F183F5EBE2B61A8DDE95722E2CAEA6B3B80AE825B790A3ED652AC3239C1562
        08EE091DEBF576E7C3716A7A7CDA7EA9A547A85BDCA18A5B696680452A9EC77A
        FF00ECD5F047ED13FB366ADF08B536D4EC2CAE26F0B5D49B61977ACC6D9CF489
        DD321BD15BBF4EBD7F4DC9B395894B0F887EFF0047DFFE0FE67C1E6995FD5DBA
        B4758F5F2FF81F91E22016200192780056D78B3C13AFF813508AC7C43A45DE8D
        792C297090DE4463668DBA3007F107D0820E0822BEC9FD963F65997C202CFC6D
        E30D2D6EF5265F32CB4D7DAC6C3B896442EBFBDF453F73A91BB1B7D77E337C25
        F0FF00C54F09C7A7789750369751A6EB2BD8E30CD6B21EE32FCA9C0DCB9E40EC
        4022B11C454696295182E68757FE5DD2EBF879C51C9AAD5A0EA37697447C61FB
        25FED6BE2DFD92FE2126B9A139D4343BB2B1EB1A04D21582FE107D79D92AE494
        900241241054B29F68FF0082957C7AF81FFB416B5E11F137C37B0BA7F195D5A2
        CBAE6A86136C9E5ED023B69E323F79711E306453B4280BBA41B7CBF933E227C3
        CD5FE18F89EE344D662513200F14F0B6E8AE223F7648DBBA9FCC1C8201045733
        5F5709C6A454E0EE99F3F28CA127192B3415F737EC71E06F165AF841EF35F94D
        AE8736C9749B696394DC2E4E77828C0AC6DD421CEECEE18072FE69FB347ECDF6
        BE201078ABC60ACBA78C4965A67CBBA61DA5901FE0F44FE2EA7E5C06FB1D1ED5
        2D1ECE290CCDF2245BADDB7FFE395F01C419A53AB1784A494ADBBECD745E7DDF
        C8FB5C932FA94DAC5546D765E4FABF2ECBE67252C12C2C900999EE17E7D9327D
        A2257FE1F99A2F93FEFAABBA7DCFF62CB71E65E4F03CEFBE5B9766789BFDBDDB
        FE5AFCF4D7BE23FC41D2B55BDD32FF00C65E216B9B29DEDE546D52E0857462AD
        D5BD4565C1F127C5D6ADBA1F14EB50B7AC7A8CCA7F46AC63C315E5156ACADE8C
        DFFD62A316D4A93BFA9F4FFC51FD9AE5F895F10F59F10BEBEF6B0DCF97B63B4B
        16BC6F96354FEF46C73B73F77BF7AE55FF0062FDBB5D7C6914909E4B7F67EC70
        3D76BCAB5E1727C4DF184B2177F15EB8EE4E4B36A33139F5CEEA9D3E2DF8E632
        0A78CFC4284742BAACE3FF0067AF729E0336A508D38621251492F756CBD533C7
        9E372CA93739E1DB6F5F89EFF79EE917EC3D79285C78AD199F94D961B830F5CF
        9B5F54D8784E6B09DA7F3EF5D1FF00E594B03BEDFF007766C55FFBE1ABF3A23F
        8CFF0010610047E3AF12A007236EAF70307FEFBA26F8CFF106E11965F1D78965
        56182AFABDC1047E2F5CB8AC9B1F8DB7D62BA76BF4EFE897637C3E6D84C25FD8
        5171BEFADF6F5B9FA236FE1E48647F32E678B737CFFB9F29BEFF00FB1B6AECB7
        9FD951F9BF6CBBB976FE0B79DB6FFC0FF7BBEBF3493E23F8B6272C9E28D6918E
        32CBA84C09C74FE2A94FC52F19B104F8BB5D257919D4E6E3FF001EAE1FF562BD
        EEAAAFB99DEF88E8BDE93FBD1FA4D67AAEB2F68F3DA4B05F5A37F1BDC5D2BFFB
        7F71FE6FFBEAB5EC45F6B51CBE6CE5A4420CB048924BB083B42EC59F775C7DE5
        AFCC593E2C78DE64D9278CBC40E9C7CADAA4E471D3F8A947C5BF1CAA6C1E33F1
        084C6368D567C63FEFBA7FEACD7FF9F91FB9993CFA874A6FF03F48B589A7F0F5
        CC28D179317CCEB2BCADFBAFF7565D9FF8E6EAC993CAD491837D86EE46FBAEDF
        B8955BFDE4FF00D97D6BF3AD7E2578B91F72F8AB5B56F51A8CD9FF00D0AAC2FC
        5AF1CA36E5F19F8855BD46A938FF00D9EA1F0B56D2D552FBCD63C47496F4DFE0
        7DBBF13FE16E9BF12B42FEC6D464996F630D25BDC8065FB34846170E631B54F7
        5DF8381DC023C7FE107ECB5FD81E279B50F1D340D6B65362CE04FDEDB5C60F13
        48E08C274214F24FDE000C1F039BE2DF8E6E0012F8D3C43201C80FAACE7FF67A
        AD07C49F175AB6E87C53AD42DEB1EA3329FD1ABD2A19466387A12C3D3AE945F9
        3BAEF6ED7382AE6980AF5635AA506E4BCD6BEBDEC7E8E5BEAF3DADF5D30B7FB5
        45FC0D0A7DA777FC0762354DAA6B115EDB285B4B17FF00A7990FEF553FDD6D95
        F9BD27C4DF184B2177F15EB8EE4E4B36A33139F5CEEA9D3E2DF8E6320A78CFC4
        284742BAACE3FF0067AF2FFD55ADFF003F17E27A0B88E8DEFECDFDE765FB4C7C
        3F9FC1FE3D7D4C5A4569A7EB65EE628E170CAB28C79ABD723960FD00FDE6074A
        F22AFD0BF8A9E098BE2478527F0D5F5D79CFE6096D6E5D12192294642B819D8F
        D48232090C4641208F843C67E0CD5BC05AFDC68FAC5B1B7BA8B9561CA4A87387
        43DD4E0F3EC41C1040FA1C8F328E2E82A337EFC7F15D1FF9FF00C13C5CE72F96
        16B3AD15EE4BF07D57F97FC03DFF00F665FD817C61FB58784EF35BF0578CBC19
        13D8CDE45F695A9DE5D457B66C73E599112DD86D70A4AB292A70C33B91D57D97
        FE1CABF1AFFE86BF017FE07DEFFF002257C41F0FBE217893E1578C74CF15784B
        58B9D0BC41A6CA26B5BEB56C329EE08390E8C32AC8C0AB292AC082457E907C0D
        FF0082D5DFE9F6B6BA77C5AF067F6AF96BB5F5DF0C32C73B854014BDAC8C119D
        9812CCB246A377CB18C60FD31F3879F7FC3957E35FFD0D7E01FF00C0FBDFFE44
        AFCFFAFDF1F0D7FC153BF66EF10D9D9C93F8E66D16EAE23576B2D4B48BC57809
        5DC51DD2268F70E41DAE4123824609FC0EA607D41FB2F7FC13D7E21FED65E00D
        43C5DE12D6FC31A6E9B65A9C9A54916B573711CC6548A294B011C120DBB66419
        CE720F1D09F60FF872AFC6BFFA1AFC05FF0081F7BFFC895F53FF00C115BFE4D6
        7C53FF00639DD7FE90D8D7DFD401F8B5FF000E55F8D7FF00435F80BFF03EF7FF
        009128FF00872AFC6BFF00A1AFC05FF81F7BFF00C895FB4B45007E2D7FC3957E
        35FF00D0D7E02FFC0FBDFF00E44A3FE1CABF1AFF00E86BF017FE07DEFF00F225
        7ED2D1401F8B5FF0E55F8D7FF435F80BFF0003EF7FF9128FF872AFC6BFFA1AFC
        03FF0081F7BFFC895FB4B45007F3F5FB50FF00C13D7E21FEC9BE01D3FC5DE2DD
        6FC33A969B7BA9C7A547168B737124C2578A59431124118DBB61619CE72471D7
        1F2FD7ED3FFC16A7FE4D67C2DFF639DAFF00E90DF57E2C5007E9D5AE9B6C9A83
        AC9246D70BF71F773FF7C5657C4AF857A07C4CD2459DDE8F2DDC881845706558
        A68091CB23B74E83839070320E315BB7BE21891D16CF4C99F71F91E381777FE8
        5535878E75385593EC913FFD34976C4FFF00A057E034A53A125520ECD799FB55
        487B68B8CA374FA33E2AF883FB2178E7C2E26BDD174E9BC47A4EECA7D91375D2
        0CA800C43973962331EEE149217A5788DD5ACD637335B5CC325BDC42E6392195
        4ABA30382AC0F2083C60D7EA87FC25BAD6A10BC6B05D3A63E57DBF2FFDF6A95C
        B788FC10FE3CBAB55F1069F67A9C56ECDE48BCD3FED063DD8DDB4B138CE0671D
        768F4AFB2C1F14568454713152F34ECFEEDBF23E4B13C3B09C9CA8CB97CB75F7
        EFF99F9A7457DC9A8FECADF0FA58CA43A45FA48DBB6BC57522938F66C81F957C
        375F69976694333E6F629AE5B5EFE77F37D8F96C765D5B2FE5F6AD3E6BDADE5F
        25DCFDA7FF00822B7FC9ACF8A7FEC73BAFFD21B1AFBFABE01FF822B7FC9ACF8A
        7FEC73BAFF00D21B1AFBFABD83CB0A28A2800A28A2800AA9AB6AD63A0E9579A9
        EA7796FA769B650BDCDD5E5DCAB1430448A59E4776202AAA824B120000934DD7
        35BB0F0D68BA86AFAADE43A7E97A7DBC977777770E1238218D4B3C8EC780AAA0
        927B015F819FB707EDD7E27FDACBC61359D94B77A0FC36B090AE99A0890A9B9C
        1E2E6EC29C3CAD8042F2B10F95724BC92007D13FF054AFDB6FE167C7BF86DA37
        C3EF016A979E22BFD3F5D8756B8D561B468AC15521BB81A257936BBBE6446055
        0C655B21C9E2BF3468A2803F5360B45DFBA4548656F91F64BB5BFF00405A7358
        49E42AAAEE7FF6F77CDFF8F7D6B7EF3408E11B1AEADAD37FCEAED16CDDFF008E
        FCD5CF5E5E4B613C2935F79B6DF7D2542BF77FE04AB5FCF3C8D1FB646A2A9F09
        2D8D834316DB89608B1C3C496D86FF00D0EA5B0FECA45FF4BBA82256FB8F3459
        F9BFEFBFAD52BEBE826B56FB1EA2AF379BD5FC85FF00D06B1E7875096DFCDFED
        38FCA67F977CEACBFF008EECFF006A972B8EAFF52D7BCACF43D0ED6CF4A7B079
        6DE3D36EB6BFFA976DAFFF00A0B57E4557E99E9326A706F58751D4A245E5D125
        5DADFF00014DF5F9995FA2F097FCBFFF00B77FF6E3E138920E0E96BFCDFA1FA1
        1FF04F5FF82857C3BFD937E0C6B5E11F1768BE27D4751BDD7E6D5639744B5B69
        61113DB5B441499278CEEDD0B1C608C11CF503E9FF00F87D4FC10FFA15BE207F
        E0BAC7FF00932BF1628AFD08F8B3F69FFE1F53F043FE856F881FF82EB1FF00E4
        CA3FE1F53F043FE856F881FF0082EB1FFE4CAFC58A2803F69FFE1F53F043FE85
        6F881FF82EB1FF00E4CA3FE1F53F043FE856F881FF0082EB1FFE4CAFC58A2803
        F4AFF6DFFF0082A2F833F681F801A9F803C05A1F88B4EBCD66EEDD750B9D7AD2
        18916CE37F39844D0DCB9121923857E652A50C83A906BF3528A2803EE4F805FB
        3AF86347F04E99AB6BDA7D9EA9AB6A36E97332EA169E7F9292056545463B5481
        8C9DBBB25B9C600F73B0FECA45FF004BBA82256FB8F3459F9BFEFBFAD52BEBE8
        26B56FB1EA2AF379BD5FC85FFD06B1E7875096DFCDFED38FCA67F977CEACBFF8
        EECFF6ABF04C5626B62AABAB5A57BBEB7D3D0FD970D86A74292A508D9791FFD9}
      Stretch = True
    end
    object Bevel2: TBevel
      Left = 0
      Top = 230
      Width = 421
      Height = 6
      Shape = bsTopLine
    end
    object Bevel1: TBevel
      Left = 20
      Top = 20
      Width = 65
      Height = 65
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 300
      Top = 240
      Width = 100
      Height = 31
      Caption = 'Schlie'#223'en'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000025B49444154789C7D924D4B1B5114869F7367CCE4CBF881890C54634A
        4B63ADFB2C44242EA4445ABA2BFD195DA5D0856E5AA5A5FD035D745FB4D245A9
        8BCCA20B1762A11061423F08E24250334489389A98DBCD5462A83D7038DC8FE7
        BDE7BEF70250B4ACD8462E57FA363B5B7E9B48D85C132FE3717B6B6EAEBC313D
        5D5A884663004631148A3D9A98F83C3E3E3E339848A492E170E1F6E1E1EA7AB3
        D9B80247A3F67C2EE78C65327793C964665064EA46ADF6C1787DF3E69789747A
        46F93ECAF7E90F8787929655B855AFAFAEB75A0D80A570D87E3039E98C0C0F67
        C5F711DF67A8AF2FDDDF6EE7CCC8C545CAF03C10B9CCB148247B7F74D4916A35
        EF6BCDC34CC6198D46B3781EBA635FB8DD4EC98269DA8F5329672C1ECF768A20
        C2CED1510511D2030359DDBD767C5C59DBDDCD0BC08252F693DE5E27130A5D11
        E986FE66D5F72B1F3D2F5F6CB5F62E4D5A04FBA769BAAD5048372D4B9F5896AE
        8742BA669ABA6618DA534A1F1986764DD35D16F9F74B2D82FD43C43D504A1F18
        863E544A7B4AE9BA52FA5844BBE02EC115D8EC1C58800F08A0B44605D5005430
        6F5DF74996C02E8BB89D273644F4A9883E13D14DD02DD02EB86FBABA6019EC6D
        11F77FE039E806E81AE84D705F0522B20CF6BC883302590597ED2AADD9814A04
        E887AC1F5CEF2CA87B50D982BC9445CA19B8D7090A5085CA0AE40DA0004E3810
        39EB10AAC1B6D9A3F57E8F081298D6067E43650DF245D80368427E1A1CB3A313
        1F38857D230E2B7760AA0FD2E7C02FA87C82FCB300062841230DAB0928F83074
        0234E0EB779807A008B1329436A1FCA2DBE18E780EF67B28BF83D2538801FC01
        B0AAF4769913224E0000000049454E44AE426082}
      TabOrder = 0
      OnClick = AdvGlowButton1Click
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
    Left = 320
    Top = 100
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2010Silver
    AppStyle = mainFrm.AdvAppStyler1
    Left = 240
    Top = 135
  end
end
