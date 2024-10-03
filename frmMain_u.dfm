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
  OnShow = FormShow
  TextHeight = 25
  object cplMain: TCardPanel
    Left = 0
    Top = 0
    Width = 1200
    Height = 800
    Align = alTop
    ActiveCard = cCustomerViewProfile
    BevelOuter = bvNone
    Caption = 'CardPanel1'
    TabOrder = 0
    ExplicitWidth = 1198
    object cLogin: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 0
      TabOrder = 0
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
    end
    object cCustomerViewProfile: TCard
      Left = 0
      Top = 0
      Width = 1200
      Height = 800
      CardIndex = 1
      TabOrder = 1
      OnEnter = cCustomerViewProfileEnter
      ExplicitWidth = 1198
      object ImgViewProfile: TImage
        Left = 8
        Top = 12
        Width = 350
        Height = 350
        Stretch = True
      end
      object StackPanel2: TStackPanel
        Left = 400
        Top = 12
        Width = 782
        Height = 350
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
        Spacing = 20
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
          Top = 66
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
          Top = 119
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'First Name'
        end
        object edtCustomerViewProfileFirstName: TEdit
          Left = 21
          Top = 164
          Width = 740
          Height = 33
          Alignment = taCenter
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 1
        end
        object Label3: TLabel
          Left = 21
          Top = 217
          Width = 740
          Height = 25
          Alignment = taCenter
          Caption = 'Last Name'
        end
        object edtCustomerViewProfileLastName: TEdit
          Left = 21
          Top = 262
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
        Top = 402
        Width = 350
        Height = 300
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
          Left = 154
          Top = 11
          Width = 41
          Height = 25
          Alignment = taCenter
          Caption = 'Bank'
        end
        object Label7: TLabel
          Left = 125
          Top = 46
          Width = 100
          Height = 25
          Alignment = taCenter
          Caption = 'Short Name'
        end
        object edtCustomerViewProfileBankShortName: TEdit
          Left = 11
          Top = 81
          Width = 328
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
          Left = 126
          Top = 124
          Width = 97
          Height = 25
          Alignment = taCenter
          Caption = 'Long Name'
        end
        object edtCustomerViewProfileBankLongName: TEdit
          Left = 11
          Top = 159
          Width = 328
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
          Left = 111
          Top = 202
          Width = 128
          Height = 25
          Alignment = taCenter
          Caption = 'Phone Number'
        end
        object edtCustomerViewProfilePhoneNumber: TEdit
          Left = 11
          Top = 237
          Width = 328
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
        Top = 402
        Width = 782
        Height = 247
        ControlCollection = <
          item
            Control = Label8
            HorizontalPositioning = sphpFill
          end
          item
            Control = edtCustomerViewProfileBankCardNameOnCard
            HorizontalPositioning = sphpFill
          end
          item
            Control = edtCustomerViewProfileBankCardExpireyDate
          end
          item
            Control = edtCustomerViewProfileBankCardSecurityCode
          end
          item
            Control = edtCustomerViewProfileBankCardBalance
          end>
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        Spacing = 15
        TabOrder = 2
        object Label8: TLabel
          Left = 11
          Top = 11
          Width = 760
          Height = 25
          Alignment = taCenter
          Caption = 'Bank Card'
        end
        object edtCustomerViewProfileBankCardNameOnCard: TEdit
          Left = 11
          Top = 51
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
        object edtCustomerViewProfileBankCardExpireyDate: TEdit
          Left = 11
          Top = 99
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
        object edtCustomerViewProfileBankCardSecurityCode: TEdit
          Left = 11
          Top = 147
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
        object edtCustomerViewProfileBankCardBalance: TEdit
          Left = 11
          Top = 195
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
      object btnCustomerViewProfileClose: TBitBtn
        Left = 1032
        Top = 734
        Width = 150
        Height = 50
        Kind = bkClose
        NumGlyphs = 2
        TabOrder = 3
      end
      object btnCustomerViewProfileBack: TBitBtn
        Left = 8
        Top = 734
        Width = 150
        Height = 50
        Caption = '&Back'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 4
        OnClick = btnCustomerViewProfileBackClick
      end
      object Button1: TButton
        Left = 400
        Top = 655
        Width = 382
        Height = 47
        Caption = 'Edit Profile'
        TabOrder = 5
      end
      object Button2: TButton
        Left = 800
        Top = 655
        Width = 382
        Height = 47
        Caption = 'Store'
        TabOrder = 6
      end
    end
  end
end
