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
    ActiveCard = cStore
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
          Text = 'johndoe'
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
          Text = 'P@ssw0rd123'
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
        Spacing = 15
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
          Top = 61
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
          Top = 109
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'First Name'
        end
        object edtCustomerViewProfileFirstName: TEdit
          Left = 21
          Top = 149
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 1
        end
        object Label3: TLabel
          Left = 21
          Top = 197
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Last Name'
        end
        object edtCustomerViewProfileLastName: TEdit
          Left = 21
          Top = 237
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
      object Button1: TButton
        Left = 400
        Top = 663
        Width = 249
        Height = 47
        Caption = 'Edit Profile'
        TabOrder = 4
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
          Top = -9
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
