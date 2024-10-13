object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Eco Eats'
  ClientHeight = 800
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 25
  object cplMain: TCardPanel
    Left = 0
    Top = 0
    Width = 1200
    Height = 800
    Align = alClient
    ActiveCard = cAlphaViewDatabase
    BevelOuter = bvNone
    Caption = 'CardPanel1'
    TabOrder = 0
    object cLogin: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 0
      TabOrder = 0
      OnEnter = cLoginEnter
      OnExit = cLoginExit
      object StackPanel1: TStackPanel
        Left = 250
        Top = 200
        Width = 700
        Height = 400
        ControlCollection = <
          item
            Control = edtLoginUsername
          end
          item
            Control = edtLoginPassword
          end
          item
            Control = btnLoginLogin
            HorizontalPositioning = sphpFill
          end
          item
            Control = btnLoginSignup
            HorizontalPositioning = sphpFill
          end>
        HorizontalPositioning = sphpCenter
        Padding.Left = 50
        Padding.Top = 50
        Padding.Right = 50
        Padding.Bottom = 50
        Spacing = 40
        TabOrder = 0
        object edtLoginUsername: TLabeledEdit
          Left = 51
          Top = 51
          Width = 598
          Height = 50
          Alignment = taCenter
          AutoSize = False
          EditLabel.Width = 85
          EditLabel.Height = 25
          EditLabel.Caption = 'Username'
          TabOrder = 1
          Text = ''
          OnChange = edtLoginUsernameChange
        end
        object edtLoginPassword: TLabeledEdit
          Left = 51
          Top = 141
          Width = 598
          Height = 50
          Alignment = taCenter
          AutoSize = False
          EditLabel.Width = 79
          EditLabel.Height = 25
          EditLabel.Caption = 'Password'
          TabOrder = 0
          Text = ''
          OnChange = edtLoginPasswordChange
        end
        object btnLoginLogin: TButton
          Left = 51
          Top = 231
          Width = 598
          Height = 50
          Caption = 'Login'
          TabOrder = 2
          OnClick = btnLoginLoginClick
        end
        object btnLoginSignup: TButton
          Left = 51
          Top = 321
          Width = 598
          Height = 50
          Caption = 'Sign Up'
          TabOrder = 3
          OnClick = btnLoginSignupClick
        end
      end
      object Panel1: TPanel
        Left = 250
        Top = 16
        Width = 700
        Height = 100
        Caption = 'Login'
        TabOrder = 1
      end
      object btnAboutUs: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&About us'
        Kind = bkHelp
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btnAboutUsClick
      end
    end
    object cCustomerViewProfile: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 1
      TabOrder = 1
      OnEnter = cCustomerViewProfileEnter
      object ImgViewProfile: TImage
        Left = 8
        Top = 12
        Width = 300
        Height = 300
        Stretch = True
      end
      object StackPanel2: TStackPanel
        Left = 400
        Top = 12
        Width = 782
        Height = 300
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ControlCollection = <
          item
            Control = Label2
          end
          item
            Control = edtCustomerViewProfileUsername
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label1
          end
          item
            Control = edtCustomerViewProfileFirstName
          end
          item
            Control = Label32
          end
          item
            Control = edtCustomerViewProfilePassword
          end
          item
            Control = Label3
          end
          item
            Control = edtCustomerViewProfileLastName
          end>
        HorizontalPositioning = sphpFill
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        Spacing = 4
        TabOrder = 0
        object Label2: TLabel
          Left = 21
          Top = 21
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Username'
        end
        object edtCustomerViewProfileUsername: TEdit
          Left = 21
          Top = 50
          Width = 740
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 2
        end
        object Label1: TLabel
          Left = 21
          Top = 87
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'First Name'
        end
        object edtCustomerViewProfileFirstName: TEdit
          Left = 21
          Top = 116
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 1
        end
        object Label32: TLabel
          Left = 21
          Top = 153
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Password'
        end
        object edtCustomerViewProfilePassword: TEdit
          Left = 21
          Top = 182
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 3
        end
        object Label3: TLabel
          Left = 21
          Top = 219
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Last Name'
        end
        object edtCustomerViewProfileLastName: TEdit
          Left = 21
          Top = 248
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 0
        end
      end
      object StackPanel3: TStackPanel
        Left = 8
        Top = 335
        Width = 300
        Height = 306
        ControlCollection = <
          item
            Control = Label4
            HorizontalPositioning = sphpCenter
          end
          item
            Control = Label7
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfileBankShortName
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label6
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfileBankLongName
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label5
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfilePhoneNumber
            HorizontalPositioning = sphpFill
          end>
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        Spacing = 10
        TabOrder = 1
        object Label4: TLabel
          Left = 129
          Top = 11
          Width = 41
          Height = 25
          Alignment = taCenter
          Caption = 'Bank'
        end
        object Label7: TLabel
          Left = 100
          Top = 46
          Width = 100
          Height = 25
          Alignment = taCenter
          Caption = 'Short Name'
        end
        object edtCustomerViewProfileBankShortName: TEdit
          Left = 11
          Top = 81
          Width = 278
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 0
        end
        object Label6: TLabel
          Left = 101
          Top = 124
          Width = 97
          Height = 25
          Alignment = taCenter
          Caption = 'Long Name'
        end
        object edtCustomerViewProfileBankLongName: TEdit
          Left = 11
          Top = 159
          Width = 278
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 2
        end
        object Label5: TLabel
          Left = 86
          Top = 202
          Width = 128
          Height = 25
          Alignment = taCenter
          Caption = 'Phone Number'
        end
        object edtCustomerViewProfilePhoneNumber: TEdit
          Left = 11
          Top = 237
          Width = 278
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 1
        end
      end
      object StackPanel4: TStackPanel
        Left = 400
        Top = 335
        Width = 782
        Height = 306
        ControlCollection = <
          item
            Control = Label9
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfileBankCardNameOnCard
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label10
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfileBankCardExpireyDate
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label11
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfileBankCardSecurityCode
          end
          item
            Control = Label8
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtCustomerViewProfileBankCardBalance
          end>
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        Spacing = 5
        TabOrder = 2
        object Label9: TLabel
          Left = 328
          Top = 11
          Width = 125
          Height = 25
          Alignment = taCenter
          Caption = 'Name On Card'
        end
        object edtCustomerViewProfileBankCardNameOnCard: TEdit
          Left = 11
          Top = 41
          Width = 760
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 0
        end
        object Label10: TLabel
          Left = 338
          Top = 79
          Width = 105
          Height = 25
          Alignment = taCenter
          Caption = 'Expirey Date'
        end
        object edtCustomerViewProfileBankCardExpireyDate: TEdit
          Left = 11
          Top = 109
          Width = 760
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 1
        end
        object Label11: TLabel
          Left = 333
          Top = 147
          Width = 116
          Height = 25
          Alignment = taCenter
          Caption = 'Security Code'
        end
        object edtCustomerViewProfileBankCardSecurityCode: TEdit
          Left = 11
          Top = 177
          Width = 760
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 2
        end
        object Label8: TLabel
          Left = 358
          Top = 215
          Width = 66
          Height = 25
          Alignment = taCenter
          Caption = 'Balance'
        end
        object edtCustomerViewProfileBankCardBalance: TEdit
          Left = 11
          Top = 245
          Width = 760
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 3
        end
      end
      object btnCustomerViewProfileBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 3
        OnClick = btnCustomerViewProfileBackClick
      end
      object btnCustomerViewProfileEdit: TButton
        Left = 400
        Top = 663
        Width = 249
        Height = 47
        Caption = 'Edit Profile'
        TabOrder = 4
        OnClick = btnCustomerViewProfileEditClick
      end
      object btnCustomerViewProfileStore: TButton
        Left = 933
        Top = 663
        Width = 249
        Height = 47
        Caption = 'Store'
        TabOrder = 5
        OnClick = btnCustomerViewProfileStoreClick
      end
      object btnCustomerViewHabits: TButton
        Left = 669
        Top = 663
        Width = 249
        Height = 47
        Caption = 'View My Habits'
        TabOrder = 6
        OnClick = btnCustomerViewHabitsClick
      end
    end
    object cCustomerSignup: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 2
      TabOrder = 2
      OnEnter = cCustomerSignupEnter
      object imgCustomerSignup: TImage
        Left = 8
        Top = 12
        Width = 300
        Height = 300
        Stretch = True
      end
      object Label15: TLabel
        Left = 88
        Top = 335
        Width = 124
        Height = 25
        Alignment = taCenter
        Caption = 'Choose a Bank'
      end
      object btnSignupAddProfilePicture: TButton
        Left = 8
        Top = 256
        Width = 300
        Height = 56
        Caption = 'Add Profile Picture'
        TabOrder = 4
        OnClick = btnSignupAddProfilePictureClick
      end
      object StackPanel5: TStackPanel
        Left = 400
        Top = 12
        Width = 782
        Height = 300
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ControlCollection = <
          item
            Control = Label12
          end
          item
            Control = edtCustomerSignupUsername
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label16
          end
          item
            Control = edtCustomerSignupPassword
          end
          item
            Control = Label13
          end
          item
            Control = edtCustomerSignupFirstName
          end
          item
            Control = Label14
          end
          item
            Control = edtCustomerSignupLastName
          end>
        HorizontalPositioning = sphpFill
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        Spacing = 5
        TabOrder = 0
        object Label12: TLabel
          Left = 21
          Top = 21
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Username'
        end
        object edtCustomerSignupUsername: TEdit
          Left = 21
          Top = 51
          Width = 740
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 2
          OnChange = edtCustomerSignupUsernameChange
        end
        object Label16: TLabel
          Left = 21
          Top = 89
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Password'
        end
        object edtCustomerSignupPassword: TEdit
          Left = 21
          Top = 119
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          TabOrder = 3
          OnChange = edtCustomerSignupPasswordChange
        end
        object Label13: TLabel
          Left = 21
          Top = 157
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'First Name'
        end
        object edtCustomerSignupFirstName: TEdit
          Left = 21
          Top = 187
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          TabOrder = 1
          OnChange = edtCustomerSignupFirstNameChange
        end
        object Label14: TLabel
          Left = 21
          Top = 225
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Last Name'
        end
        object edtCustomerSignupLastName: TEdit
          Left = 21
          Top = 255
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          TabOrder = 0
          OnChange = edtCustomerSignupLastNameChange
        end
      end
      object btnSignupBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnCustomerViewProfileBackClick
      end
      object btnSignupSignup: TButton
        Left = 600
        Top = 655
        Width = 382
        Height = 47
        Caption = 'Signup'
        TabOrder = 2
        OnClick = btnSignupSignupClick
      end
      object lstCustomerSignupBanks: TListBox
        Left = 8
        Top = 376
        Width = 300
        Height = 265
        ItemHeight = 25
        TabOrder = 3
        OnClick = lstCustomerSignupBanksClick
      end
      object ScrollBox1: TScrollBox
        Left = 400
        Top = 335
        Width = 782
        Height = 306
        HorzScrollBar.Visible = False
        VertScrollBar.Smooth = True
        VertScrollBar.Style = ssFlat
        VertScrollBar.Tracking = True
        BevelInner = bvNone
        BevelOuter = bvRaised
        TabOrder = 5
        UseWheelForScrolling = True
        object StackPanel7: TStackPanel
          Left = -2
          Top = 3
          Width = 760
          Height = 400
          BevelOuter = bvNone
          ControlCollection = <
            item
              Control = Label17
              HorizontalPositioning = sphpCenter
            end
            item
              Control = edtCustomerSignupAccountNumber
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label19
              HorizontalPositioning = sphpCenter
            end
            item
              Control = edtCustomerSignupNameOnCard
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label20
              HorizontalPositioning = sphpCenter
            end
            item
              Control = dtpCustomerSignupExpireyDate
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label21
              HorizontalPositioning = sphpCenter
            end
            item
              Control = edtCustomerSignupSecurityCode
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label22
              HorizontalPositioning = sphpCenter
            end
            item
              Control = nbxCustomerSignupBalance
              HorizontalPositioning = sphpFill
            end>
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          Spacing = 10
          TabOrder = 0
          object Label17: TLabel
            Left = 311
            Top = 10
            Width = 138
            Height = 25
            Alignment = taCenter
            Caption = 'AccountNumber'
          end
          object edtCustomerSignupAccountNumber: TEdit
            Left = 10
            Top = 45
            Width = 740
            Height = 33
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvNone
            BorderStyle = bsNone
            MaxLength = 8
            TabOrder = 4
            OnChange = edtCustomerSignupNameOnCardChange
          end
          object Label19: TLabel
            Left = 317
            Top = 88
            Width = 125
            Height = 25
            Alignment = taCenter
            Caption = 'Name On Card'
          end
          object edtCustomerSignupNameOnCard: TEdit
            Left = 10
            Top = 123
            Width = 740
            Height = 33
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            OnChange = edtCustomerSignupNameOnCardChange
          end
          object Label20: TLabel
            Left = 327
            Top = 166
            Width = 105
            Height = 25
            Alignment = taCenter
            Caption = 'Expirey Date'
          end
          object dtpCustomerSignupExpireyDate: TDateTimePicker
            Left = 10
            Top = 201
            Width = 740
            Height = 33
            Date = 45569.000000000000000000
            Time = 0.977367199076979900
            TabOrder = 3
            OnChange = dtpCustomerSignupExpireyDateChange
          end
          object Label21: TLabel
            Left = 322
            Top = 244
            Width = 116
            Height = 25
            Alignment = taCenter
            Caption = 'Security Code'
          end
          object edtCustomerSignupSecurityCode: TEdit
            Left = 10
            Top = 279
            Width = 740
            Height = 33
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvNone
            BorderStyle = bsNone
            MaxLength = 3
            TabOrder = 1
            OnChange = edtCustomerSignupSecurityCodeChange
          end
          object Label22: TLabel
            Left = 347
            Top = 322
            Width = 66
            Height = 25
            Alignment = taCenter
            Caption = 'Balance'
          end
          object nbxCustomerSignupBalance: TNumberBox
            Left = 10
            Top = 357
            Width = 740
            Height = 33
            Alignment = taCenter
            Mode = nbmCurrency
            TabOrder = 2
            StyleName = 'Windows10 SlateGray'
            OnChange = nbxCustomerSignupBalanceChange
          end
        end
      end
    end
    object cViewHabits: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 3
      TabOrder = 3
      OnEnter = cViewHabitsEnter
      object redViewHabits: TRichEdit
        Left = 16
        Top = 136
        Width = 1166
        Height = 577
        Cursor = crNo
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        HideScrollBars = False
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = redViewHabitsClick
        OnMouseWheel = redViewHabitsMouseWheel
        OnMouseWheelDown = redViewHabitsMouseWheelDown
        OnMouseWheelUp = redViewHabitsMouseWheelUp
      end
      object Panel2: TPanel
        Left = 274
        Top = 30
        Width = 700
        Height = 100
        Caption = 'Time Spent On Eco Eats'
        TabOrder = 1
      end
      object btnViewHabitsBack: TBitBtn
        Left = 16
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btnViewHabitsBackClick
      end
    end
    object cStore: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 4
      TabOrder = 4
      OnEnter = cStoreEnter
      object GridPanel1: TGridPanel
        Left = 8
        Top = 16
        Width = 550
        Height = 700
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = StackPanel6
            Row = 0
          end
          item
            Column = 1
            Control = StackPanel8
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        object StackPanel6: TStackPanel
          Left = 1
          Top = 1
          Width = 274
          Height = 698
          Align = alClient
          AutoSize = True
          BevelOuter = bvNone
          ControlCollection = <
            item
              Control = Panel3
              VerticalPositioning = spvpFill
            end
            item
              Control = lstStoreProducts
              HorizontalPositioning = sphpFill
              VerticalPositioning = spvpFill
            end
            item
              Control = btnStoreAddToCart
              HorizontalPositioning = sphpFill
            end>
          HorizontalPositioning = sphpFill
          Padding.Left = 20
          Padding.Top = 20
          Padding.Right = 20
          Padding.Bottom = 20
          Spacing = 10
          TabOrder = 0
          VerticalPositioning = spvpFill
          object Panel3: TPanel
            Left = 20
            Top = 20
            Width = 234
            Height = 41
            BevelOuter = bvNone
            Caption = 'Products'
            TabOrder = 1
          end
          object lstStoreProducts: TListBox
            Left = 20
            Top = 71
            Width = 234
            Height = 554
            IntegralHeight = True
            ItemHeight = 25
            TabOrder = 0
            OnClick = lstStoreProductsClick
          end
          object btnStoreAddToCart: TButton
            Left = 20
            Top = 635
            Width = 234
            Height = 50
            Caption = 'Add To Cart'
            TabOrder = 2
            OnClick = btnStoreAddToCartClick
          end
        end
        object StackPanel8: TStackPanel
          Left = 275
          Top = 1
          Width = 274
          Height = 698
          Align = alClient
          BevelOuter = bvNone
          ControlCollection = <
            item
              Control = imgStoreProduct
              HorizontalPositioning = sphpCenter
            end
            item
              Control = memStoreProductDescription
              HorizontalPositioning = sphpFill
            end
            item
              Control = pnlStoreProductSuplierName
            end
            item
              Control = pnlStockOfProduct
              HorizontalPositioning = sphpFill
            end
            item
              Control = Panel5
            end
            item
              Control = pnlStoreProductPrice
            end
            item
              Control = Panel4
            end
            item
              Control = spdStoreProductQuantity
              HorizontalPositioning = sphpFill
            end>
          HorizontalPositioning = sphpCenter
          Padding.Left = 20
          Padding.Top = 20
          Padding.Right = 20
          Padding.Bottom = 20
          Spacing = 10
          TabOrder = 1
          object imgStoreProduct: TImage
            Left = 37
            Top = 20
            Width = 200
            Height = 200
            Stretch = True
          end
          object memStoreProductDescription: TMemo
            Left = 20
            Top = 230
            Width = 234
            Height = 99
            ReadOnly = True
            TabOrder = 0
          end
          object pnlStoreProductSuplierName: TPanel
            Left = 11
            Top = 339
            Width = 252
            Height = 45
            BevelOuter = bvNone
            TabOrder = 1
          end
          object pnlStockOfProduct: TPanel
            Left = 20
            Top = 394
            Width = 234
            Height = 41
            BevelOuter = bvNone
            TabOrder = 6
          end
          object Panel5: TPanel
            Left = 11
            Top = 445
            Width = 252
            Height = 41
            BevelOuter = bvNone
            Caption = 'Price'
            TabOrder = 4
          end
          object pnlStoreProductPrice: TPanel
            Left = 11
            Top = 496
            Width = 252
            Height = 41
            BevelOuter = bvNone
            TabOrder = 5
          end
          object Panel4: TPanel
            Left = 11
            Top = 547
            Width = 252
            Height = 41
            BevelOuter = bvNone
            Caption = 'Quantity'
            TabOrder = 2
          end
          object spdStoreProductQuantity: TSpinEdit
            Left = 20
            Top = 598
            Width = 234
            Height = 35
            MaxValue = 50
            MinValue = 1
            TabOrder = 3
            Value = 1
          end
        end
      end
      object btnStoreBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnStoreBackClick
      end
      object StackPanel9: TStackPanel
        Left = 608
        Top = 16
        Width = 574
        Height = 699
        ControlCollection = <
          item
            Control = Panel6
            HorizontalPositioning = sphpCenter
          end
          item
            Control = lstStoreCart
            HorizontalPositioning = sphpFill
            VerticalPositioning = spvpFill
          end
          item
            Control = Panel7
            HorizontalPositioning = sphpCenter
          end
          item
            Control = pnlStoreCartTotal
            HorizontalPositioning = sphpCenter
          end
          item
            Control = GridPanel2
            HorizontalPositioning = sphpFill
            VerticalPositioning = spvpFill
          end
          item
            Control = btnStorePurchase
            HorizontalPositioning = sphpFill
          end>
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        Spacing = 15
        TabOrder = 2
        object Panel6: TPanel
          Left = 170
          Top = 21
          Width = 234
          Height = 41
          BevelOuter = bvNone
          Caption = 'Cart'
          TabOrder = 1
        end
        object lstStoreCart: TListBox
          Left = 21
          Top = 77
          Width = 532
          Height = 354
          Align = alClient
          IntegralHeight = True
          ItemHeight = 25
          TabOrder = 0
          OnClick = lstStoreCartClick
        end
        object Panel7: TPanel
          Left = 161
          Top = 446
          Width = 252
          Height = 29
          BevelOuter = bvNone
          Caption = 'Price'
          TabOrder = 4
        end
        object pnlStoreCartTotal: TPanel
          Left = 161
          Top = 490
          Width = 252
          Height = 36
          BevelOuter = bvNone
          TabOrder = 5
        end
        object GridPanel2: TGridPanel
          Left = 21
          Top = 541
          Width = 532
          Height = 60
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = btnStoreClear
              Row = 0
            end
            item
              Column = 1
              Control = btnStoreRemove
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 3
          DesignSize = (
            532
            60)
          object btnStoreClear: TButton
            Left = 5
            Top = 0
            Width = 255
            Height = 60
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Anchors = []
            Caption = 'Clear'
            TabOrder = 0
            OnClick = btnStoreClearClick
          end
          object btnStoreRemove: TButton
            Left = 273
            Top = 0
            Width = 252
            Height = 61
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Anchors = []
            Caption = 'Remove'
            TabOrder = 1
            OnClick = btnStoreRemoveClick
          end
        end
        object btnStorePurchase: TButton
          Left = 21
          Top = 616
          Width = 532
          Height = 50
          Caption = 'Purchase'
          TabOrder = 2
          OnClick = btnStorePurchaseClick
        end
      end
    end
    object cCustomerEditProfile: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 5
      TabOrder = 5
      OnEnter = cCustomerEditProfileEnter
      object imgCustomerEditProfile: TImage
        Left = 8
        Top = 12
        Width = 300
        Height = 300
        Stretch = True
      end
      object Label18: TLabel
        Left = 128
        Top = 338
        Width = 41
        Height = 25
        Alignment = taCenter
        Caption = 'Bank'
      end
      object StackPanel10: TStackPanel
        Left = 400
        Top = 12
        Width = 782
        Height = 300
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ControlCollection = <
          item
            Control = Label23
          end
          item
            Control = edtCustomerEditProfileUsername
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label24
          end
          item
            Control = edtCustomerEditProfilePassword
          end
          item
            Control = Label25
          end
          item
            Control = edtCustomerEditProfileFirstName
          end
          item
            Control = Label26
          end
          item
            Control = edtCustomerEditProfileLastName
          end>
        HorizontalPositioning = sphpFill
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        Spacing = 5
        TabOrder = 0
        object Label23: TLabel
          Left = 21
          Top = 21
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Username'
        end
        object edtCustomerEditProfileUsername: TEdit
          Left = 21
          Top = 51
          Width = 740
          Height = 33
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 2
          OnChange = edtCustomerSignupUsernameChange
        end
        object Label24: TLabel
          Left = 21
          Top = 89
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Password'
        end
        object edtCustomerEditProfilePassword: TEdit
          Left = 21
          Top = 119
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          TabOrder = 3
          OnChange = edtCustomerSignupPasswordChange
        end
        object Label25: TLabel
          Left = 21
          Top = 157
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'First Name'
        end
        object edtCustomerEditProfileFirstName: TEdit
          Left = 21
          Top = 187
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          TabOrder = 1
          OnChange = edtCustomerSignupFirstNameChange
        end
        object Label26: TLabel
          Left = 21
          Top = 225
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Last Name'
        end
        object edtCustomerEditProfileLastName: TEdit
          Left = 21
          Top = 255
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          TabOrder = 0
          OnChange = edtCustomerSignupLastNameChange
        end
      end
      object btnCustomerEditProfileBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnCustomerEditProfileBackClick
      end
      object btnCustomerEditProfileMakeChanges: TButton
        Left = 600
        Top = 655
        Width = 382
        Height = 47
        Caption = 'Make Changes'
        TabOrder = 2
        OnClick = btnCustomerEditProfileMakeChangesClick
      end
      object lstCustomerEditProfileBanks: TListBox
        Left = 8
        Top = 376
        Width = 300
        Height = 265
        ItemHeight = 25
        TabOrder = 3
        OnClick = lstCustomerEditProfileBanksClick
      end
      object ScrollBox2: TScrollBox
        Left = 400
        Top = 335
        Width = 782
        Height = 306
        HorzScrollBar.Visible = False
        VertScrollBar.Position = 89
        VertScrollBar.Smooth = True
        VertScrollBar.Style = ssFlat
        VertScrollBar.Tracking = True
        BevelInner = bvNone
        BevelOuter = bvRaised
        TabOrder = 4
        UseWheelForScrolling = True
        object StackPanel11: TStackPanel
          Left = -2
          Top = -98
          Width = 760
          Height = 400
          BevelOuter = bvNone
          ControlCollection = <
            item
              Control = Label27
              HorizontalPositioning = sphpCenter
            end
            item
              Control = edtCustomerEditProfileAccountNumber
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label28
              HorizontalPositioning = sphpCenter
            end
            item
              Control = edtCustomerEditProfileNameOnCard
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label29
              HorizontalPositioning = sphpCenter
            end
            item
              Control = dtpCustomerEditProfileExpireyDate
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label30
              HorizontalPositioning = sphpCenter
            end
            item
              Control = edtCustomerEditProfileSecurityCode
              HorizontalPositioning = sphpFill
            end
            item
              Control = Label31
              HorizontalPositioning = sphpCenter
            end
            item
              Control = nbxCustomerEditProfileBalance
              HorizontalPositioning = sphpFill
            end>
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          Spacing = 10
          TabOrder = 0
          object Label27: TLabel
            Left = 311
            Top = 10
            Width = 138
            Height = 25
            Alignment = taCenter
            Caption = 'AccountNumber'
          end
          object edtCustomerEditProfileAccountNumber: TEdit
            Left = 10
            Top = 45
            Width = 740
            Height = 33
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvNone
            BorderStyle = bsNone
            MaxLength = 8
            ReadOnly = True
            TabOrder = 4
            OnChange = edtCustomerSignupNameOnCardChange
          end
          object Label28: TLabel
            Left = 317
            Top = 88
            Width = 125
            Height = 25
            Alignment = taCenter
            Caption = 'Name On Card'
          end
          object edtCustomerEditProfileNameOnCard: TEdit
            Left = 10
            Top = 123
            Width = 740
            Height = 33
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            OnChange = edtCustomerSignupNameOnCardChange
          end
          object Label29: TLabel
            Left = 327
            Top = 166
            Width = 105
            Height = 25
            Alignment = taCenter
            Caption = 'Expirey Date'
          end
          object dtpCustomerEditProfileExpireyDate: TDateTimePicker
            Left = 10
            Top = 201
            Width = 740
            Height = 33
            Date = 45569.000000000000000000
            Time = 0.977367199076979900
            TabOrder = 3
            OnChange = dtpCustomerSignupExpireyDateChange
          end
          object Label30: TLabel
            Left = 322
            Top = 244
            Width = 116
            Height = 25
            Alignment = taCenter
            Caption = 'Security Code'
          end
          object edtCustomerEditProfileSecurityCode: TEdit
            Left = 10
            Top = 279
            Width = 740
            Height = 33
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvNone
            BorderStyle = bsNone
            MaxLength = 3
            TabOrder = 1
            OnChange = edtCustomerSignupSecurityCodeChange
          end
          object Label31: TLabel
            Left = 347
            Top = 322
            Width = 66
            Height = 25
            Alignment = taCenter
            Caption = 'Balance'
          end
          object nbxCustomerEditProfileBalance: TNumberBox
            Left = 10
            Top = 357
            Width = 740
            Height = 33
            Alignment = taCenter
            Mode = nbmCurrency
            TabOrder = 2
            StyleName = 'Windows10 SlateGray'
            OnChange = nbxCustomerSignupBalanceChange
          end
        end
      end
    end
    object cSupplierViewProducts: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 6
      TabOrder = 6
      OnEnter = cSupplierViewProductsEnter
      object imgSupplierViewProducts: TImage
        Left = 410
        Top = 192
        Width = 300
        Height = 300
        Stretch = True
      end
      object lstSupplierViewProducts: TListBox
        Left = 8
        Top = 192
        Width = 377
        Height = 438
        ItemHeight = 25
        TabOrder = 0
        OnClick = lstSupplierViewProductsClick
      end
      object memSupplierViewProductsDescription: TMemo
        Left = 748
        Top = 192
        Width = 434
        Height = 438
        ReadOnly = True
        TabOrder = 1
      end
      object Panel9: TPanel
        Left = 8
        Top = 145
        Width = 377
        Height = 41
        Caption = 'Products'
        TabOrder = 2
      end
      object pnlSupplierViewProductsSupplierName: TPanel
        Left = 258
        Top = 24
        Width = 700
        Height = 100
        Caption = 'Supplier Name'
        TabOrder = 3
      end
      object edtSupplierViewProductsPrice: TLabeledEdit
        Left = 418
        Top = 528
        Width = 300
        Height = 33
        Alignment = taCenter
        EditLabel.Width = 42
        EditLabel.Height = 25
        EditLabel.Caption = 'Price'
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 4
        Text = ''
      end
      object edtSupplierViewProductsQuantity: TLabeledEdit
        Left = 418
        Top = 597
        Width = 300
        Height = 33
        Alignment = taCenter
        EditLabel.Width = 142
        EditLabel.Height = 25
        EditLabel.Caption = 'Quantity In Stock'
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 5
        Text = ''
      end
      object btnSupplierViewProducts: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 6
        OnClick = btnSupplierViewProductsClick
      end
      object btnSupplierViewProductsEdit: TButton
        Left = 418
        Top = 658
        Width = 300
        Height = 47
        Caption = 'Edit'
        TabOrder = 7
        OnClick = btnSupplierViewProductsEditClick
      end
      object btnSupplierViewProductsAdd: TButton
        Left = 748
        Top = 658
        Width = 434
        Height = 47
        Caption = 'Add'
        TabOrder = 8
        OnClick = btnSupplierViewProductsAddClick
      end
      object btnSupplierViewProductsDelete: TButton
        Left = 8
        Top = 658
        Width = 377
        Height = 47
        Caption = 'Delete'
        TabOrder = 9
        OnClick = btnSupplierViewProductsDeleteClick
      end
    end
    object cSupplierAddProduct: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 7
      TabOrder = 7
      OnEnter = cSupplierAddProductEnter
      object StackPanel12: TStackPanel
        Left = 8
        Top = 59
        Width = 585
        Height = 646
        ControlCollection = <
          item
            Control = Label33
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtSupplierAddProductName
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label34
            HorizontalPositioning = sphpCenter
          end
          item
            Control = redSupplierAddProductDescription
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label35
            HorizontalPositioning = sphpCenter
          end
          item
            Control = nbxSupplierAddProductQuantity
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label36
            HorizontalPositioning = sphpCenter
          end
          item
            Control = nbxSupplierAddProductPrice
            HorizontalPositioning = sphpFill
          end
          item
            Control = btnSupplierAddProductAdd
            HorizontalPositioning = sphpFill
          end>
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        Spacing = 5
        TabOrder = 0
        object Label33: TLabel
          Left = 267
          Top = 21
          Width = 50
          Height = 25
          Caption = 'Name'
        end
        object edtSupplierAddProductName: TEdit
          Left = 21
          Top = 51
          Width = 543
          Height = 33
          Alignment = taCenter
          TabOrder = 0
          OnChange = edtSupplierAddProductNameChange
        end
        object Label34: TLabel
          Left = 244
          Top = 89
          Width = 96
          Height = 25
          Caption = 'Description'
        end
        object redSupplierAddProductDescription: TRichEdit
          Left = 21
          Top = 119
          Width = 543
          Height = 259
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = redSupplierAddProductDescriptionChange
        end
        object Label35: TLabel
          Left = 221
          Top = 383
          Width = 142
          Height = 25
          Caption = 'Quantity In Stock'
        end
        object nbxSupplierAddProductQuantity: TNumberBox
          Left = 21
          Top = 413
          Width = 543
          Height = 33
          AcceptExpressions = True
          Alignment = taCenter
          TabOrder = 4
          Value = 1.000000000000000000
          OnChange = nbxSupplierAddProductPriceChange
        end
        object Label36: TLabel
          Left = 271
          Top = 451
          Width = 42
          Height = 25
          Caption = 'Price'
        end
        object nbxSupplierAddProductPrice: TNumberBox
          Left = 21
          Top = 481
          Width = 543
          Height = 33
          AcceptExpressions = True
          Alignment = taCenter
          TabOrder = 2
          Value = 1.000000000000000000
          OnChange = nbxSupplierAddProductPriceChange
        end
        object btnSupplierAddProductAdd: TButton
          Left = 21
          Top = 519
          Width = 543
          Height = 47
          Caption = 'Add'
          TabOrder = 3
          OnClick = btnSupplierAddProductAddClick
        end
      end
      object btnSupplierAddProductAddProductImage: TButton
        Left = 682
        Top = 658
        Width = 500
        Height = 47
        Caption = 'Add Product Image'
        TabOrder = 1
        OnClick = btnSupplierAddProductAddProductImageClick
      end
      object Panel8: TPanel
        Left = 682
        Top = 59
        Width = 500
        Height = 500
        TabOrder = 2
        object imgSupplierAddProduct: TImage
          Left = 50
          Top = 50
          Width = 400
          Height = 400
          Stretch = True
        end
      end
      object btnSupplierAddProductBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 3
        OnClick = btnSupplierAddProductBackClick
      end
    end
    object cSupplierEditProduct: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 8
      TabOrder = 8
      OnEnter = cSupplierAddProductEnter
      OnExit = cSupplierEditProductExit
      object StackPanel13: TStackPanel
        Left = 8
        Top = 59
        Width = 585
        Height = 646
        ControlCollection = <
          item
            Control = Label37
            HorizontalPositioning = sphpCenter
          end
          item
            Control = edtSupplierEditProductName
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label38
            HorizontalPositioning = sphpCenter
          end
          item
            Control = redSupplierEditProductDescription
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label39
            HorizontalPositioning = sphpCenter
          end
          item
            Control = nbxSupplierEditProductQuantity
            HorizontalPositioning = sphpFill
          end
          item
            Control = Label40
            HorizontalPositioning = sphpCenter
          end
          item
            Control = nbxSupplierEditProductPrice
            HorizontalPositioning = sphpFill
          end
          item
            Control = btnSupplierEditProductMakeChanges
            HorizontalPositioning = sphpFill
          end>
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        Spacing = 5
        TabOrder = 0
        object Label37: TLabel
          Left = 267
          Top = 21
          Width = 50
          Height = 25
          Caption = 'Name'
        end
        object edtSupplierEditProductName: TEdit
          Left = 21
          Top = 51
          Width = 543
          Height = 33
          Alignment = taCenter
          TabOrder = 0
          OnChange = edtSupplierEditProductNameChange
        end
        object Label38: TLabel
          Left = 244
          Top = 89
          Width = 96
          Height = 25
          Caption = 'Description'
        end
        object redSupplierEditProductDescription: TRichEdit
          Left = 21
          Top = 119
          Width = 543
          Height = 259
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = redSupplierEditProductDescriptionChange
        end
        object Label39: TLabel
          Left = 221
          Top = 383
          Width = 142
          Height = 25
          Caption = 'Quantity In Stock'
        end
        object nbxSupplierEditProductQuantity: TNumberBox
          Left = 21
          Top = 413
          Width = 543
          Height = 33
          AcceptExpressions = True
          Alignment = taCenter
          TabOrder = 4
          Value = 1.000000000000000000
          OnChange = nbxSupplierEditProductQuantityChange
        end
        object Label40: TLabel
          Left = 271
          Top = 451
          Width = 42
          Height = 25
          Caption = 'Price'
        end
        object nbxSupplierEditProductPrice: TNumberBox
          Left = 21
          Top = 481
          Width = 543
          Height = 33
          AcceptExpressions = True
          Alignment = taCenter
          TabOrder = 2
          Value = 1.000000000000000000
          OnChange = nbxSupplierEditProductPriceChange
        end
        object btnSupplierEditProductMakeChanges: TButton
          Left = 21
          Top = 519
          Width = 543
          Height = 47
          Caption = 'Make Changes'
          TabOrder = 3
          OnClick = btnSupplierEditProductMakeChangesClick
        end
      end
      object Panel10: TPanel
        Left = 682
        Top = 59
        Width = 500
        Height = 500
        TabOrder = 1
        object imgSupplierEditProduct: TImage
          Left = 50
          Top = 50
          Width = 400
          Height = 400
          Stretch = True
        end
      end
      object btnSupplierEditProductBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btnSupplierEditProductBackClick
      end
    end
    object cAdminViewDatabase: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 9
      TabOrder = 9
      object dbgAdminViewDatabaseCustomer: TDBGrid
        Left = 8
        Top = 24
        Width = 1174
        Height = 200
        DataSource = dmMain.dscCustomer
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object dbgAdminViewDatabaseSupplier: TDBGrid
        Left = 8
        Top = 265
        Width = 1174
        Height = 200
        DataSource = dmMain.dscSupplier
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object dbgAdminViewDatabaseBankCard: TDBGrid
        Left = 8
        Top = 496
        Width = 1174
        Height = 200
        DataSource = dmMain.dscBankCard
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object cAlphaViewDatabase: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 10
      TabOrder = 10
      object dbgAlphaViewDatabaseCustomer: TDBGrid
        Left = 8
        Top = 40
        Width = 1174
        Height = 150
        DataSource = dmMain.dscCustomer
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object dbgAlphaViewDatabaseSupplier: TDBGrid
        Left = 8
        Top = 217
        Width = 1174
        Height = 150
        DataSource = dmMain.dscSupplier
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object dbgAlphaViewDatabaseBankCard: TDBGrid
        Left = 8
        Top = 392
        Width = 1174
        Height = 150
        DataSource = dmMain.dscBankCard
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object dbgAlphaViewDatabaseAdmin: TDBGrid
        Left = 8
        Top = 560
        Width = 1174
        Height = 150
        DataSource = dmMain.dscAdmin
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object btnClose: TBitBtn
    Left = 1032
    Top = 734
    Width = 150
    Height = 50
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCustomerViewProfileBackClick
  end
end
