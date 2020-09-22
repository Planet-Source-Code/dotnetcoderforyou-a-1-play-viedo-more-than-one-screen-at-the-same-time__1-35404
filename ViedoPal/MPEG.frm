VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form FrmMain 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Play more than one "
   ClientHeight    =   8355
   ClientLeft      =   60
   ClientTop       =   -1080
   ClientWidth     =   11880
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   178
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "MPEG.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   RightToLeft     =   -1  'True
   ScaleHeight     =   8355
   ScaleWidth      =   11880
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame MainFrame 
      Caption         =   "ÝáÓØíä 3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   178
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   4845
      Index           =   5
      Left            =   8640
      RightToLeft     =   -1  'True
      TabIndex        =   424
      Top             =   5160
      Width           =   4275
      Begin VB.Frame FrameChannels 
         Caption         =   "Channels Control"
         Height          =   2565
         Index           =   5
         Left            =   7920
         TabIndex        =   479
         Top             =   240
         Visible         =   0   'False
         Width           =   3495
         Begin VB.OptionButton OptnChannelLeft 
            Caption         =   "Left"
            Height          =   225
            Index           =   5
            Left            =   90
            TabIndex        =   500
            Top             =   240
            Width           =   585
         End
         Begin VB.OptionButton OptnChannelRight 
            Caption         =   "Right"
            Height          =   225
            Index           =   5
            Left            =   660
            TabIndex        =   499
            Top             =   240
            Width           =   675
         End
         Begin VB.OptionButton OptnChannelAllOn 
            Caption         =   "All On"
            Height          =   225
            Index           =   5
            Left            =   1350
            TabIndex        =   498
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton OptnChannelAllOff 
            Caption         =   "All Off"
            Height          =   225
            Index           =   5
            Left            =   2100
            TabIndex        =   497
            Top             =   240
            Width           =   765
         End
         Begin VB.CommandButton CmdShowVol 
            Caption         =   "Vol"
            Height          =   285
            Index           =   5
            Left            =   2880
            TabIndex        =   496
            Top             =   180
            Width           =   525
         End
         Begin VB.Frame FrameLeftVol 
            Caption         =   "Left Vol"
            Height          =   1935
            Index           =   5
            Left            =   150
            TabIndex        =   491
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderLeftVol 
               Height          =   1665
               Index           =   5
               Left            =   60
               TabIndex        =   492
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   164
               Left            =   330
               TabIndex        =   495
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   163
               Left            =   390
               TabIndex        =   494
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   162
               Left            =   420
               TabIndex        =   493
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.CommandButton CmdHideVol 
            Caption         =   "<<"
            Height          =   315
            Index           =   5
            Left            =   2970
            TabIndex        =   490
            Top             =   2160
            Width           =   435
         End
         Begin VB.Frame FrameRightVol 
            Caption         =   "Right Vol"
            Height          =   1935
            Index           =   5
            Left            =   1170
            TabIndex        =   485
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderRightVol 
               Height          =   1665
               Index           =   5
               Left            =   60
               TabIndex        =   486
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   161
               Left            =   420
               TabIndex        =   489
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   160
               Left            =   390
               TabIndex        =   488
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   159
               Left            =   330
               TabIndex        =   487
               Top             =   330
               Width           =   375
            End
         End
         Begin VB.Frame FrameBothVol 
            Caption         =   "Both Vol"
            Height          =   1935
            Index           =   5
            Left            =   2160
            TabIndex        =   480
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderBothVol 
               Height          =   1665
               Index           =   5
               Left            =   60
               TabIndex        =   481
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   158
               Left            =   420
               TabIndex        =   484
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   157
               Left            =   390
               TabIndex        =   483
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   156
               Left            =   330
               TabIndex        =   482
               Top             =   330
               Width           =   375
            End
         End
      End
      Begin VB.Frame FrameVideo 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Movie View"
         ForeColor       =   &H80000008&
         Height          =   3585
         Index           =   5
         Left            =   60
         TabIndex        =   478
         Top             =   1230
         Width           =   4185
         Begin VB.Image Image6 
            Height          =   3525
            Left            =   0
            Picture         =   "MPEG.frx":0442
            Stretch         =   -1  'True
            Top             =   0
            Width           =   4185
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Resize"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   945
         Index           =   5
         Left            =   3960
         TabIndex        =   468
         Top             =   840
         Visible         =   0   'False
         Width           =   2775
         Begin VB.TextBox TxtHeight 
            Height          =   315
            Index           =   5
            Left            =   1530
            TabIndex        =   473
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox txtWidth 
            Height          =   315
            Index           =   5
            Left            =   570
            TabIndex        =   472
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtTop 
            Height          =   315
            Index           =   5
            Left            =   1530
            TabIndex        =   471
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox txtLeft 
            Height          =   315
            Index           =   5
            Left            =   570
            TabIndex        =   470
            Top             =   150
            Width           =   375
         End
         Begin VB.CommandButton CmdResize 
            Caption         =   "Resi&ze "
            Height          =   735
            Index           =   5
            Left            =   1950
            TabIndex        =   469
            Top             =   150
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Height:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   23
            Left            =   990
            TabIndex        =   477
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Width:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   22
            Left            =   90
            TabIndex        =   476
            Top             =   630
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Top:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   21
            Left            =   990
            TabIndex        =   475
            Top             =   210
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Left:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   20
            Left            =   90
            TabIndex        =   474
            Top             =   210
            Width           =   345
         End
      End
      Begin VB.CheckBox Check 
         Caption         =   "&Auto Repeat"
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   467
         Top             =   480
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Caption         =   "Misc"
         Height          =   1665
         Index           =   5
         Left            =   5400
         TabIndex        =   450
         Top             =   1680
         Visible         =   0   'False
         Width           =   2655
         Begin VB.Label LbProgress 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1560
            TabIndex        =   466
            Top             =   1260
            Width           =   1005
         End
         Begin VB.Label LbTotalTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1560
            TabIndex        =   465
            Top             =   900
            Width           =   1005
         End
         Begin VB.Label LbTotalFrames 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1560
            TabIndex        =   464
            Top             =   720
            Width           =   1005
         End
         Begin VB.Label LbCurrPos 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1530
            TabIndex        =   463
            Top             =   360
            Width           =   1005
         End
         Begin VB.Label LbStatus 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1530
            TabIndex        =   462
            Top             =   150
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Progress (Percent):"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   155
            Left            =   150
            TabIndex        =   461
            Top             =   1260
            Width           =   1410
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total time:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   154
            Left            =   120
            TabIndex        =   460
            Top             =   900
            Width           =   765
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total frames:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   153
            Left            =   120
            TabIndex        =   459
            Top             =   720
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Current postion:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   5
            Left            =   120
            TabIndex        =   458
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Status: "
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   152
            Left            =   120
            TabIndex        =   457
            Top             =   180
            Width           =   570
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Frames per second:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   151
            Left            =   150
            TabIndex        =   456
            Top             =   1080
            Width           =   1425
         End
         Begin VB.Label LbFramesPerSecond 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1560
            TabIndex        =   455
            Top             =   1080
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current time :"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   150
            Left            =   120
            TabIndex        =   454
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label LbCurrentTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1530
            TabIndex        =   453
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current Rate:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   149
            Left            =   150
            TabIndex        =   452
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label LbCurrentRate 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   1560
            TabIndex        =   451
            Top             =   1440
            Width           =   1005
         End
      End
      Begin VB.CommandButton CmdSelectFile 
         Caption         =   "Select &File"
         Height          =   315
         Index           =   5
         Left            =   120
         TabIndex        =   449
         Top             =   210
         Width           =   1845
      End
      Begin VB.TextBox txtFrom 
         Height          =   315
         Index           =   5
         Left            =   2400
         TabIndex        =   448
         Top             =   780
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox TxtTo 
         Height          =   315
         Index           =   5
         Left            =   3240
         TabIndex        =   447
         Top             =   780
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.CommandButton CmdOpen 
         DownPicture     =   "MPEG.frx":1A7C
         Height          =   310
         Index           =   5
         Left            =   1980
         Picture         =   "MPEG.frx":1E3E
         Style           =   1  'Graphical
         TabIndex        =   446
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPlay 
         DownPicture     =   "MPEG.frx":21F4
         Height          =   310
         Index           =   5
         Left            =   2310
         Picture         =   "MPEG.frx":25EE
         Style           =   1  'Graphical
         TabIndex        =   445
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPause 
         DownPicture     =   "MPEG.frx":2A68
         Height          =   310
         Index           =   5
         Left            =   2640
         Picture         =   "MPEG.frx":2DF2
         Style           =   1  'Graphical
         TabIndex        =   444
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdResume 
         Caption         =   "&Resume"
         Height          =   315
         Index           =   5
         Left            =   1770
         TabIndex        =   443
         Top             =   510
         Width           =   915
      End
      Begin VB.CommandButton CmdStop 
         DownPicture     =   "MPEG.frx":3224
         Height          =   310
         Index           =   5
         Left            =   2970
         Picture         =   "MPEG.frx":3566
         Style           =   1  'Graphical
         TabIndex        =   442
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdClose 
         Caption         =   "&Close"
         Height          =   315
         Index           =   5
         Left            =   2700
         TabIndex        =   441
         Top             =   510
         Width           =   915
      End
      Begin VB.Timer TimerAtEndFile 
         Enabled         =   0   'False
         Index           =   5
         Interval        =   100
         Left            =   1650
         Top             =   3330
      End
      Begin VB.Timer TimerMisc 
         Enabled         =   0   'False
         Index           =   5
         Interval        =   500
         Left            =   960
         Top             =   3390
      End
      Begin VB.Frame FrameSize 
         Caption         =   "Size"
         Height          =   1665
         Index           =   5
         Left            =   2880
         TabIndex        =   430
         Top             =   1200
         Visible         =   0   'False
         Width           =   825
         Begin VB.Label LbActualCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   240
            TabIndex        =   440
            Top             =   420
            Width           =   525
         End
         Begin VB.Label LbActualCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   240
            TabIndex        =   439
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Actual:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   148
            Left            =   60
            TabIndex        =   438
            Top             =   210
            Width           =   510
         End
         Begin VB.Label LbCurrentCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   240
            TabIndex        =   437
            Top             =   1080
            Width           =   525
         End
         Begin VB.Label LbCurrentCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   5
            Left            =   240
            TabIndex        =   436
            Top             =   1260
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   147
            Left            =   60
            TabIndex        =   435
            Top             =   870
            Width           =   615
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   146
            Left            =   60
            TabIndex        =   434
            Top             =   360
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   145
            Left            =   60
            TabIndex        =   433
            Top             =   630
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   144
            Left            =   60
            TabIndex        =   432
            Top             =   1080
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   143
            Left            =   60
            TabIndex        =   431
            Top             =   1260
            Width           =   165
         End
      End
      Begin VB.Frame FrameRate 
         Caption         =   "Rate"
         Height          =   945
         Index           =   5
         Left            =   6720
         TabIndex        =   425
         Top             =   840
         Visible         =   0   'False
         Width           =   705
         Begin ComctlLib.Slider SliderRate 
            Height          =   795
            Index           =   5
            Left            =   420
            TabIndex        =   426
            Top             =   120
            Width           =   210
            _ExtentX        =   370
            _ExtentY        =   1402
            _Version        =   327682
            Orientation     =   1
            Max             =   200
            SelStart        =   100
            TickStyle       =   3
            Value           =   100
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "200%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   142
            Left            =   60
            TabIndex        =   429
            Top             =   180
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "100%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   141
            Left            =   60
            TabIndex        =   428
            Top             =   450
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "0%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   140
            Left            =   90
            TabIndex        =   427
            Top             =   720
            Width           =   225
         End
      End
      Begin ComctlLib.Slider SliderMoveMultimedia 
         Height          =   225
         Index           =   5
         Left            =   120
         TabIndex        =   501
         Top             =   810
         Width           =   3585
         _ExtentX        =   6324
         _ExtentY        =   397
         _Version        =   327682
         Max             =   50
      End
      Begin ComctlLib.ProgressBar ProgressMultimedia 
         Height          =   180
         Index           =   5
         Left            =   210
         TabIndex        =   502
         Top             =   1050
         Width           =   3465
         _ExtentX        =   6112
         _ExtentY        =   318
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Label LbResult 
         Caption         =   "Result calling Function is : "
         ForeColor       =   &H00C00000&
         Height          =   615
         Index           =   5
         Left            =   120
         TabIndex        =   507
         Top             =   1440
         Visible         =   0   'False
         Width           =   3405
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "From:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   167
         Left            =   2010
         TabIndex        =   506
         Top             =   840
         Width           =   420
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "To:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   166
         Left            =   2970
         TabIndex        =   505
         Top             =   840
         Width           =   240
      End
      Begin VB.Label LbFileName 
         Height          =   195
         Index           =   5
         Left            =   1740
         TabIndex        =   504
         Top             =   1230
         Width           =   2055
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "File : "
         Height          =   195
         Index           =   165
         Left            =   1080
         TabIndex        =   503
         Top             =   240
         Width           =   315
      End
   End
   Begin VB.Frame MainFrame 
      Caption         =   "ÝáÓØíä 3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   178
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   4845
      Index           =   4
      Left            =   4320
      RightToLeft     =   -1  'True
      TabIndex        =   340
      Top             =   5160
      Width           =   4275
      Begin VB.Frame FrameChannels 
         Caption         =   "Channels Control"
         Height          =   2565
         Index           =   4
         Left            =   7920
         TabIndex        =   395
         Top             =   240
         Visible         =   0   'False
         Width           =   3495
         Begin VB.OptionButton OptnChannelLeft 
            Caption         =   "Left"
            Height          =   225
            Index           =   4
            Left            =   90
            TabIndex        =   416
            Top             =   240
            Width           =   585
         End
         Begin VB.OptionButton OptnChannelRight 
            Caption         =   "Right"
            Height          =   225
            Index           =   4
            Left            =   660
            TabIndex        =   415
            Top             =   240
            Width           =   675
         End
         Begin VB.OptionButton OptnChannelAllOn 
            Caption         =   "All On"
            Height          =   225
            Index           =   4
            Left            =   1350
            TabIndex        =   414
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton OptnChannelAllOff 
            Caption         =   "All Off"
            Height          =   225
            Index           =   4
            Left            =   2100
            TabIndex        =   413
            Top             =   240
            Width           =   765
         End
         Begin VB.CommandButton CmdShowVol 
            Caption         =   "Vol"
            Height          =   285
            Index           =   4
            Left            =   2880
            TabIndex        =   412
            Top             =   180
            Width           =   525
         End
         Begin VB.Frame FrameLeftVol 
            Caption         =   "Left Vol"
            Height          =   1935
            Index           =   4
            Left            =   150
            TabIndex        =   407
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderLeftVol 
               Height          =   1665
               Index           =   4
               Left            =   60
               TabIndex        =   408
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   136
               Left            =   330
               TabIndex        =   411
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   135
               Left            =   390
               TabIndex        =   410
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   134
               Left            =   420
               TabIndex        =   409
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.CommandButton CmdHideVol 
            Caption         =   "<<"
            Height          =   315
            Index           =   4
            Left            =   2970
            TabIndex        =   406
            Top             =   2160
            Width           =   435
         End
         Begin VB.Frame FrameRightVol 
            Caption         =   "Right Vol"
            Height          =   1935
            Index           =   4
            Left            =   1170
            TabIndex        =   401
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderRightVol 
               Height          =   1665
               Index           =   4
               Left            =   60
               TabIndex        =   402
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   133
               Left            =   420
               TabIndex        =   405
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   132
               Left            =   390
               TabIndex        =   404
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   131
               Left            =   330
               TabIndex        =   403
               Top             =   330
               Width           =   375
            End
         End
         Begin VB.Frame FrameBothVol 
            Caption         =   "Both Vol"
            Height          =   1935
            Index           =   4
            Left            =   2160
            TabIndex        =   396
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderBothVol 
               Height          =   1665
               Index           =   4
               Left            =   60
               TabIndex        =   397
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   130
               Left            =   420
               TabIndex        =   400
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   129
               Left            =   390
               TabIndex        =   399
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   128
               Left            =   330
               TabIndex        =   398
               Top             =   330
               Width           =   375
            End
         End
      End
      Begin VB.Frame FrameVideo 
         Appearance      =   0  'Flat
         BackColor       =   &H0000FF00&
         Caption         =   "Movie View"
         ForeColor       =   &H80000008&
         Height          =   3525
         Index           =   4
         Left            =   60
         TabIndex        =   394
         Top             =   1260
         Width           =   4185
         Begin VB.Image Image5 
            Height          =   3525
            Left            =   0
            Picture         =   "MPEG.frx":3998
            Stretch         =   -1  'True
            Top             =   0
            Width           =   4185
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Resize"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   945
         Index           =   4
         Left            =   3960
         TabIndex        =   384
         Top             =   840
         Visible         =   0   'False
         Width           =   2775
         Begin VB.TextBox TxtHeight 
            Height          =   315
            Index           =   4
            Left            =   1530
            TabIndex        =   389
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox txtWidth 
            Height          =   315
            Index           =   4
            Left            =   570
            TabIndex        =   388
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtTop 
            Height          =   315
            Index           =   4
            Left            =   1530
            TabIndex        =   387
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox txtLeft 
            Height          =   315
            Index           =   4
            Left            =   570
            TabIndex        =   386
            Top             =   150
            Width           =   375
         End
         Begin VB.CommandButton CmdResize 
            Caption         =   "Resi&ze "
            Height          =   735
            Index           =   4
            Left            =   1950
            TabIndex        =   385
            Top             =   150
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Height:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   19
            Left            =   990
            TabIndex        =   393
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Width:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   18
            Left            =   90
            TabIndex        =   392
            Top             =   630
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Top:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   17
            Left            =   990
            TabIndex        =   391
            Top             =   210
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Left:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   16
            Left            =   90
            TabIndex        =   390
            Top             =   210
            Width           =   345
         End
      End
      Begin VB.CheckBox Check 
         Caption         =   "&Auto Repeat"
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   383
         Top             =   480
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Caption         =   "Misc"
         Height          =   1665
         Index           =   4
         Left            =   5400
         TabIndex        =   366
         Top             =   1680
         Visible         =   0   'False
         Width           =   2655
         Begin VB.Label LbProgress 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1560
            TabIndex        =   382
            Top             =   1260
            Width           =   1005
         End
         Begin VB.Label LbTotalTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1560
            TabIndex        =   381
            Top             =   900
            Width           =   1005
         End
         Begin VB.Label LbTotalFrames 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1560
            TabIndex        =   380
            Top             =   720
            Width           =   1005
         End
         Begin VB.Label LbCurrPos 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1530
            TabIndex        =   379
            Top             =   360
            Width           =   1005
         End
         Begin VB.Label LbStatus 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1530
            TabIndex        =   378
            Top             =   150
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Progress (Percent):"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   127
            Left            =   150
            TabIndex        =   377
            Top             =   1260
            Width           =   1410
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total time:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   126
            Left            =   120
            TabIndex        =   376
            Top             =   900
            Width           =   765
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total frames:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   125
            Left            =   120
            TabIndex        =   375
            Top             =   720
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Current postion:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   4
            Left            =   120
            TabIndex        =   374
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Status: "
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   124
            Left            =   120
            TabIndex        =   373
            Top             =   180
            Width           =   570
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Frames per second:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   123
            Left            =   150
            TabIndex        =   372
            Top             =   1080
            Width           =   1425
         End
         Begin VB.Label LbFramesPerSecond 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1560
            TabIndex        =   371
            Top             =   1080
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current time :"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   122
            Left            =   120
            TabIndex        =   370
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label LbCurrentTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1530
            TabIndex        =   369
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current Rate:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   121
            Left            =   150
            TabIndex        =   368
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label LbCurrentRate 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   1560
            TabIndex        =   367
            Top             =   1440
            Width           =   1005
         End
      End
      Begin VB.CommandButton CmdSelectFile 
         Caption         =   "Select &File"
         Height          =   315
         Index           =   4
         Left            =   120
         TabIndex        =   365
         Top             =   210
         Width           =   1845
      End
      Begin VB.TextBox txtFrom 
         Height          =   315
         Index           =   4
         Left            =   2400
         TabIndex        =   364
         Top             =   780
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox TxtTo 
         Height          =   315
         Index           =   4
         Left            =   3240
         TabIndex        =   363
         Top             =   780
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.CommandButton CmdOpen 
         DownPicture     =   "MPEG.frx":5A86
         Height          =   315
         Index           =   4
         Left            =   1950
         Picture         =   "MPEG.frx":5E48
         Style           =   1  'Graphical
         TabIndex        =   362
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPlay 
         DownPicture     =   "MPEG.frx":624A
         Height          =   315
         Index           =   4
         Left            =   2310
         Picture         =   "MPEG.frx":6600
         Style           =   1  'Graphical
         TabIndex        =   361
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPause 
         DownPicture     =   "MPEG.frx":6982
         Height          =   315
         Index           =   4
         Left            =   2670
         Picture         =   "MPEG.frx":6DC4
         Style           =   1  'Graphical
         TabIndex        =   360
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdResume 
         Caption         =   "&Resume"
         Height          =   315
         Index           =   4
         Left            =   1830
         TabIndex        =   359
         Top             =   540
         Width           =   915
      End
      Begin VB.CommandButton CmdStop 
         DownPicture     =   "MPEG.frx":7136
         Height          =   315
         Index           =   4
         Left            =   3000
         Picture         =   "MPEG.frx":74FC
         Style           =   1  'Graphical
         TabIndex        =   358
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdClose 
         Caption         =   "&Close"
         Height          =   315
         Index           =   4
         Left            =   2760
         TabIndex        =   357
         Top             =   510
         Width           =   915
      End
      Begin VB.Timer TimerAtEndFile 
         Enabled         =   0   'False
         Index           =   4
         Interval        =   100
         Left            =   1650
         Top             =   3330
      End
      Begin VB.Timer TimerMisc 
         Enabled         =   0   'False
         Index           =   4
         Interval        =   500
         Left            =   960
         Top             =   3390
      End
      Begin VB.Frame FrameSize 
         Caption         =   "Size"
         Height          =   1665
         Index           =   4
         Left            =   2880
         TabIndex        =   346
         Top             =   1200
         Visible         =   0   'False
         Width           =   825
         Begin VB.Label LbActualCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   356
            Top             =   420
            Width           =   525
         End
         Begin VB.Label LbActualCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   355
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Actual:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   120
            Left            =   60
            TabIndex        =   354
            Top             =   210
            Width           =   510
         End
         Begin VB.Label LbCurrentCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   353
            Top             =   1080
            Width           =   525
         End
         Begin VB.Label LbCurrentCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   352
            Top             =   1260
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   119
            Left            =   60
            TabIndex        =   351
            Top             =   870
            Width           =   615
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   118
            Left            =   60
            TabIndex        =   350
            Top             =   360
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   117
            Left            =   60
            TabIndex        =   349
            Top             =   630
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   116
            Left            =   60
            TabIndex        =   348
            Top             =   1080
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   115
            Left            =   60
            TabIndex        =   347
            Top             =   1260
            Width           =   165
         End
      End
      Begin VB.Frame FrameRate 
         Caption         =   "Rate"
         Height          =   945
         Index           =   4
         Left            =   6720
         TabIndex        =   341
         Top             =   840
         Visible         =   0   'False
         Width           =   705
         Begin ComctlLib.Slider SliderRate 
            Height          =   795
            Index           =   4
            Left            =   420
            TabIndex        =   342
            Top             =   120
            Width           =   210
            _ExtentX        =   370
            _ExtentY        =   1402
            _Version        =   327682
            Orientation     =   1
            Max             =   200
            SelStart        =   100
            TickStyle       =   3
            Value           =   100
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "200%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   114
            Left            =   60
            TabIndex        =   345
            Top             =   180
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "100%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   113
            Left            =   60
            TabIndex        =   344
            Top             =   450
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "0%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   112
            Left            =   90
            TabIndex        =   343
            Top             =   720
            Width           =   225
         End
      End
      Begin ComctlLib.Slider SliderMoveMultimedia 
         Height          =   225
         Index           =   4
         Left            =   180
         TabIndex        =   417
         Top             =   840
         Width           =   3585
         _ExtentX        =   6324
         _ExtentY        =   397
         _Version        =   327682
         Max             =   50
      End
      Begin ComctlLib.ProgressBar ProgressMultimedia 
         Height          =   180
         Index           =   4
         Left            =   210
         TabIndex        =   418
         Top             =   1080
         Width           =   3465
         _ExtentX        =   6112
         _ExtentY        =   318
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Label LbResult 
         Caption         =   "Result calling Function is : "
         ForeColor       =   &H00C00000&
         Height          =   615
         Index           =   4
         Left            =   120
         TabIndex        =   423
         Top             =   1440
         Visible         =   0   'False
         Width           =   3405
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "From:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   139
         Left            =   2010
         TabIndex        =   422
         Top             =   840
         Visible         =   0   'False
         Width           =   420
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "To:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   138
         Left            =   2970
         TabIndex        =   421
         Top             =   840
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.Label LbFileName 
         Height          =   195
         Index           =   4
         Left            =   1740
         TabIndex        =   420
         Top             =   1230
         Width           =   2055
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "File : "
         Height          =   195
         Index           =   137
         Left            =   1080
         TabIndex        =   419
         Top             =   240
         Width           =   315
      End
   End
   Begin VB.Frame MainFrame 
      Caption         =   "ÝáÓØíä 3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   178
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   4845
      Index           =   3
      Left            =   0
      RightToLeft     =   -1  'True
      TabIndex        =   256
      Top             =   5160
      Width           =   4275
      Begin VB.Frame FrameRate 
         Caption         =   "Rate"
         Height          =   945
         Index           =   3
         Left            =   6720
         TabIndex        =   328
         Top             =   840
         Visible         =   0   'False
         Width           =   705
         Begin ComctlLib.Slider SliderRate 
            Height          =   795
            Index           =   3
            Left            =   420
            TabIndex        =   329
            Top             =   120
            Width           =   210
            _ExtentX        =   370
            _ExtentY        =   1402
            _Version        =   327682
            Orientation     =   1
            Max             =   200
            SelStart        =   100
            TickStyle       =   3
            Value           =   100
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "0%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   108
            Left            =   90
            TabIndex        =   332
            Top             =   720
            Width           =   225
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "100%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   107
            Left            =   60
            TabIndex        =   331
            Top             =   450
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "200%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   106
            Left            =   60
            TabIndex        =   330
            Top             =   180
            Width           =   375
         End
      End
      Begin VB.Frame FrameSize 
         Caption         =   "Size"
         Height          =   1665
         Index           =   3
         Left            =   2880
         TabIndex        =   317
         Top             =   1620
         Visible         =   0   'False
         Width           =   825
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   105
            Left            =   60
            TabIndex        =   327
            Top             =   1260
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   104
            Left            =   60
            TabIndex        =   326
            Top             =   1080
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   103
            Left            =   60
            TabIndex        =   325
            Top             =   630
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   102
            Left            =   60
            TabIndex        =   324
            Top             =   360
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   101
            Left            =   60
            TabIndex        =   323
            Top             =   870
            Width           =   615
         End
         Begin VB.Label LbCurrentCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   240
            TabIndex        =   322
            Top             =   1260
            Width           =   525
         End
         Begin VB.Label LbCurrentCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   240
            TabIndex        =   321
            Top             =   1080
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Actual:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   100
            Left            =   60
            TabIndex        =   320
            Top             =   210
            Width           =   510
         End
         Begin VB.Label LbActualCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   240
            TabIndex        =   319
            Top             =   630
            Width           =   525
         End
         Begin VB.Label LbActualCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   240
            TabIndex        =   318
            Top             =   420
            Width           =   525
         End
      End
      Begin VB.Timer TimerMisc 
         Enabled         =   0   'False
         Index           =   3
         Interval        =   500
         Left            =   960
         Top             =   3390
      End
      Begin VB.Timer TimerAtEndFile 
         Enabled         =   0   'False
         Index           =   3
         Interval        =   100
         Left            =   1650
         Top             =   3330
      End
      Begin VB.CommandButton CmdClose 
         Caption         =   "&Close"
         Height          =   315
         Index           =   3
         Left            =   2400
         Style           =   1  'Graphical
         TabIndex        =   316
         Top             =   540
         Width           =   915
      End
      Begin VB.CommandButton CmdStop 
         DownPicture     =   "MPEG.frx":7886
         Height          =   315
         Index           =   3
         Left            =   2970
         Picture         =   "MPEG.frx":7D00
         Style           =   1  'Graphical
         TabIndex        =   315
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdResume 
         Caption         =   "&Resume"
         Height          =   315
         Index           =   3
         Left            =   1500
         Style           =   1  'Graphical
         TabIndex        =   314
         Top             =   540
         Width           =   915
      End
      Begin VB.CommandButton CmdPause 
         DownPicture     =   "MPEG.frx":817A
         Height          =   315
         Index           =   3
         Left            =   2610
         Picture         =   "MPEG.frx":8630
         Style           =   1  'Graphical
         TabIndex        =   313
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPlay 
         DownPicture     =   "MPEG.frx":8AE6
         Height          =   315
         Index           =   3
         Left            =   2280
         Picture         =   "MPEG.frx":9034
         Style           =   1  'Graphical
         TabIndex        =   312
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdOpen 
         DownPicture     =   "MPEG.frx":94AE
         Height          =   315
         Index           =   3
         Left            =   1950
         Picture         =   "MPEG.frx":9874
         Style           =   1  'Graphical
         TabIndex        =   311
         Top             =   210
         Width           =   345
      End
      Begin VB.TextBox TxtTo 
         Height          =   315
         Index           =   3
         Left            =   3240
         TabIndex        =   310
         Top             =   780
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox txtFrom 
         Height          =   315
         Index           =   3
         Left            =   2400
         TabIndex        =   309
         Top             =   780
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.CommandButton CmdSelectFile 
         Caption         =   "Select &File"
         Height          =   315
         Index           =   3
         Left            =   120
         TabIndex        =   308
         Top             =   210
         Width           =   1845
      End
      Begin VB.Frame Frame4 
         Caption         =   "Misc"
         Height          =   1665
         Index           =   3
         Left            =   5400
         TabIndex        =   291
         Top             =   1680
         Visible         =   0   'False
         Width           =   2655
         Begin VB.Label LbCurrentRate 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1560
            TabIndex        =   307
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current Rate:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   99
            Left            =   150
            TabIndex        =   306
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label LbCurrentTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1530
            TabIndex        =   305
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current time :"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   98
            Left            =   120
            TabIndex        =   304
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label LbFramesPerSecond 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1560
            TabIndex        =   303
            Top             =   1080
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Frames per second:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   97
            Left            =   150
            TabIndex        =   302
            Top             =   1080
            Width           =   1425
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Status: "
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   96
            Left            =   120
            TabIndex        =   301
            Top             =   180
            Width           =   570
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Current postion:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   300
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total frames:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   95
            Left            =   120
            TabIndex        =   299
            Top             =   720
            Width           =   960
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total time:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   94
            Left            =   120
            TabIndex        =   298
            Top             =   900
            Width           =   765
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Progress (Percent):"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   93
            Left            =   150
            TabIndex        =   297
            Top             =   1260
            Width           =   1410
         End
         Begin VB.Label LbStatus 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1530
            TabIndex        =   296
            Top             =   150
            Width           =   1005
         End
         Begin VB.Label LbCurrPos 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1530
            TabIndex        =   295
            Top             =   360
            Width           =   1005
         End
         Begin VB.Label LbTotalFrames 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1560
            TabIndex        =   294
            Top             =   720
            Width           =   1005
         End
         Begin VB.Label LbTotalTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1560
            TabIndex        =   293
            Top             =   900
            Width           =   1005
         End
         Begin VB.Label LbProgress 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   1560
            TabIndex        =   292
            Top             =   1260
            Width           =   1005
         End
      End
      Begin VB.CheckBox Check 
         Caption         =   "&Auto Repeat"
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   290
         Top             =   510
         Width           =   1215
      End
      Begin VB.Frame Frame2 
         Caption         =   "Resize"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   945
         Index           =   3
         Left            =   3960
         TabIndex        =   280
         Top             =   840
         Visible         =   0   'False
         Width           =   2775
         Begin VB.CommandButton CmdResize 
            Caption         =   "Resi&ze "
            Height          =   735
            Index           =   3
            Left            =   1950
            TabIndex        =   285
            Top             =   150
            Width           =   735
         End
         Begin VB.TextBox txtLeft 
            Height          =   315
            Index           =   3
            Left            =   570
            TabIndex        =   284
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox TxtTop 
            Height          =   315
            Index           =   3
            Left            =   1530
            TabIndex        =   283
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox txtWidth 
            Height          =   315
            Index           =   3
            Left            =   570
            TabIndex        =   282
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtHeight 
            Height          =   315
            Index           =   3
            Left            =   1530
            TabIndex        =   281
            Top             =   570
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Left:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   15
            Left            =   90
            TabIndex        =   289
            Top             =   210
            Width           =   345
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Top:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   14
            Left            =   990
            TabIndex        =   288
            Top             =   210
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Width:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   13
            Left            =   90
            TabIndex        =   287
            Top             =   630
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Height:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   12
            Left            =   990
            TabIndex        =   286
            Top             =   630
            Width           =   525
         End
      End
      Begin VB.Frame FrameVideo 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF00&
         Caption         =   "Movie View"
         ForeColor       =   &H80000008&
         Height          =   3555
         Index           =   3
         Left            =   30
         TabIndex        =   279
         Top             =   1260
         Width           =   4215
         Begin VB.Image Image4 
            Height          =   3525
            Left            =   0
            Picture         =   "MPEG.frx":9CF6
            Stretch         =   -1  'True
            Top             =   0
            Width           =   4185
         End
      End
      Begin VB.Frame FrameChannels 
         Caption         =   "Channels Control"
         Height          =   2565
         Index           =   3
         Left            =   7920
         TabIndex        =   257
         Top             =   240
         Visible         =   0   'False
         Width           =   3495
         Begin VB.Frame FrameBothVol 
            Caption         =   "Both Vol"
            Height          =   1935
            Index           =   3
            Left            =   2160
            TabIndex        =   274
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderBothVol 
               Height          =   1665
               Index           =   3
               Left            =   60
               TabIndex        =   275
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   92
               Left            =   330
               TabIndex        =   278
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   91
               Left            =   390
               TabIndex        =   277
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   90
               Left            =   420
               TabIndex        =   276
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.Frame FrameRightVol 
            Caption         =   "Right Vol"
            Height          =   1935
            Index           =   3
            Left            =   1170
            TabIndex        =   269
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderRightVol 
               Height          =   1665
               Index           =   3
               Left            =   60
               TabIndex        =   270
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   89
               Left            =   330
               TabIndex        =   273
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   88
               Left            =   390
               TabIndex        =   272
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   87
               Left            =   420
               TabIndex        =   271
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.CommandButton CmdHideVol 
            Caption         =   "<<"
            Height          =   315
            Index           =   3
            Left            =   2970
            TabIndex        =   268
            Top             =   2160
            Width           =   435
         End
         Begin VB.Frame FrameLeftVol 
            Caption         =   "Left Vol"
            Height          =   1935
            Index           =   3
            Left            =   150
            TabIndex        =   263
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderLeftVol 
               Height          =   1665
               Index           =   3
               Left            =   60
               TabIndex        =   264
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   86
               Left            =   420
               TabIndex        =   267
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   85
               Left            =   390
               TabIndex        =   266
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   84
               Left            =   330
               TabIndex        =   265
               Top             =   330
               Width           =   375
            End
         End
         Begin VB.CommandButton CmdShowVol 
            Caption         =   "Vol"
            Height          =   285
            Index           =   3
            Left            =   2880
            TabIndex        =   262
            Top             =   180
            Width           =   525
         End
         Begin VB.OptionButton OptnChannelAllOff 
            Caption         =   "All Off"
            Height          =   225
            Index           =   3
            Left            =   2100
            TabIndex        =   261
            Top             =   240
            Width           =   765
         End
         Begin VB.OptionButton OptnChannelAllOn 
            Caption         =   "All On"
            Height          =   225
            Index           =   3
            Left            =   1350
            TabIndex        =   260
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton OptnChannelRight 
            Caption         =   "Right"
            Height          =   225
            Index           =   3
            Left            =   660
            TabIndex        =   259
            Top             =   240
            Width           =   675
         End
         Begin VB.OptionButton OptnChannelLeft 
            Caption         =   "Left"
            Height          =   225
            Index           =   3
            Left            =   90
            TabIndex        =   258
            Top             =   240
            Width           =   585
         End
      End
      Begin ComctlLib.Slider SliderMoveMultimedia 
         Height          =   225
         Index           =   3
         Left            =   90
         TabIndex        =   333
         Top             =   810
         Width           =   3585
         _ExtentX        =   6324
         _ExtentY        =   397
         _Version        =   327682
         Max             =   50
      End
      Begin ComctlLib.ProgressBar ProgressMultimedia 
         Height          =   180
         Index           =   3
         Left            =   150
         TabIndex        =   334
         Top             =   1050
         Width           =   3465
         _ExtentX        =   6112
         _ExtentY        =   318
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "File : "
         Height          =   195
         Index           =   111
         Left            =   540
         TabIndex        =   339
         Top             =   1260
         Visible         =   0   'False
         Width           =   315
      End
      Begin VB.Label LbFileName 
         Height          =   195
         Index           =   3
         Left            =   1740
         TabIndex        =   338
         Top             =   1230
         Width           =   2055
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "To:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   110
         Left            =   2970
         TabIndex        =   337
         Top             =   840
         Width           =   240
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "From:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   109
         Left            =   2010
         TabIndex        =   336
         Top             =   840
         Width           =   420
      End
      Begin VB.Label LbResult 
         Caption         =   "Result calling Function is : "
         ForeColor       =   &H00C00000&
         Height          =   615
         Index           =   3
         Left            =   120
         TabIndex        =   335
         Top             =   1440
         Visible         =   0   'False
         Width           =   3405
      End
   End
   Begin VB.Frame MainFrame 
      Caption         =   "ÝáÓØíä 2"
      ForeColor       =   &H00FFFFFF&
      Height          =   5085
      Index           =   1
      Left            =   4320
      RightToLeft     =   -1  'True
      TabIndex        =   179
      Top             =   0
      Width           =   4275
      Begin VB.Frame FrameChannels 
         Caption         =   "Channels Control"
         Height          =   2565
         Index           =   1
         Left            =   600
         TabIndex        =   224
         Top             =   1560
         Visible         =   0   'False
         Width           =   3495
         Begin VB.Frame FrameBothVol 
            Caption         =   "Both Vol"
            Height          =   1935
            Index           =   1
            Left            =   2160
            TabIndex        =   236
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderBothVol 
               Height          =   1665
               Index           =   1
               Left            =   60
               TabIndex        =   48
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   21
               Left            =   330
               TabIndex        =   239
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   22
               Left            =   390
               TabIndex        =   238
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   23
               Left            =   420
               TabIndex        =   237
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.Frame FrameRightVol 
            Caption         =   "Right Vol"
            Height          =   1935
            Index           =   1
            Left            =   1170
            TabIndex        =   232
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderRightVol 
               Height          =   1665
               Index           =   1
               Left            =   60
               TabIndex        =   47
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   24
               Left            =   330
               TabIndex        =   235
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   25
               Left            =   390
               TabIndex        =   234
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   26
               Left            =   420
               TabIndex        =   233
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.CommandButton CmdHideVol 
            Caption         =   "<<"
            Height          =   315
            Index           =   1
            Left            =   2970
            TabIndex        =   49
            Top             =   2160
            Width           =   435
         End
         Begin VB.Frame FrameLeftVol 
            Caption         =   "Left Vol"
            Height          =   1935
            Index           =   1
            Left            =   150
            TabIndex        =   228
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderLeftVol 
               Height          =   1665
               Index           =   1
               Left            =   60
               TabIndex        =   46
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   39
               Left            =   420
               TabIndex        =   231
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   40
               Left            =   390
               TabIndex        =   230
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   41
               Left            =   330
               TabIndex        =   229
               Top             =   330
               Width           =   375
            End
         End
         Begin VB.CommandButton CmdShowVol 
            Caption         =   "Vol"
            Height          =   285
            Index           =   1
            Left            =   2880
            TabIndex        =   45
            Top             =   180
            Width           =   525
         End
         Begin VB.OptionButton OptnChannelAllOff 
            Caption         =   "All Off"
            Height          =   225
            Index           =   1
            Left            =   2100
            TabIndex        =   227
            Top             =   240
            Width           =   765
         End
         Begin VB.OptionButton OptnChannelAllOn 
            Caption         =   "All On"
            Height          =   225
            Index           =   1
            Left            =   1350
            TabIndex        =   44
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton OptnChannelRight 
            Caption         =   "Right"
            Height          =   225
            Index           =   1
            Left            =   660
            TabIndex        =   226
            Top             =   240
            Width           =   675
         End
         Begin VB.OptionButton OptnChannelLeft 
            Caption         =   "Left"
            Height          =   225
            Index           =   1
            Left            =   90
            TabIndex        =   225
            Top             =   240
            Width           =   585
         End
      End
      Begin VB.CommandButton CmdDemoPlayFile2Times 
         Caption         =   "Demo"
         Height          =   315
         Left            =   1830
         TabIndex        =   25
         Top             =   1650
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.CommandButton CmdDemoEffOn 
         Caption         =   "Eff On"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2460
         TabIndex        =   26
         Top             =   1650
         Visible         =   0   'False
         Width           =   585
      End
      Begin VB.CommandButton CmdDemoEffOff 
         Caption         =   "Eff Off"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   3060
         TabIndex        =   27
         Top             =   1650
         Visible         =   0   'False
         Width           =   585
      End
      Begin VB.Frame FrameVideo 
         Appearance      =   0  'Flat
         BackColor       =   &H80000001&
         Caption         =   "Movie View"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   178
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   3705
         Index           =   1
         Left            =   60
         RightToLeft     =   -1  'True
         TabIndex        =   217
         Top             =   1350
         Width           =   4215
         Begin VB.Image Image2 
            Height          =   3675
            Left            =   0
            Picture         =   "MPEG.frx":B5F6
            Stretch         =   -1  'True
            Top             =   0
            Width           =   4185
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Resize"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   945
         Index           =   1
         Left            =   210
         TabIndex        =   212
         Top             =   2040
         Visible         =   0   'False
         Width           =   2775
         Begin VB.TextBox TxtHeight 
            Height          =   315
            Index           =   1
            Left            =   1530
            TabIndex        =   41
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox txtWidth 
            Height          =   315
            Index           =   1
            Left            =   570
            TabIndex        =   40
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtTop 
            Height          =   315
            Index           =   1
            Left            =   1530
            TabIndex        =   39
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox txtLeft 
            Height          =   315
            Index           =   1
            Left            =   570
            TabIndex        =   38
            Top             =   150
            Width           =   375
         End
         Begin VB.CommandButton CmdResize 
            Caption         =   "Resi&ze "
            Height          =   735
            Index           =   1
            Left            =   1950
            TabIndex        =   42
            Top             =   150
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Height:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   7
            Left            =   990
            TabIndex        =   216
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Width:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   6
            Left            =   90
            TabIndex        =   215
            Top             =   630
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Top:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   5
            Left            =   990
            TabIndex        =   214
            Top             =   210
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Left:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   4
            Left            =   90
            TabIndex        =   213
            Top             =   210
            Width           =   345
         End
      End
      Begin VB.CheckBox Check 
         Caption         =   "&Auto Repeat"
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   36
         Top             =   540
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Caption         =   "Misc"
         Height          =   1665
         Index           =   1
         Left            =   360
         TabIndex        =   195
         Top             =   1920
         Visible         =   0   'False
         Width           =   2655
         Begin VB.Label LbProgress 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1560
            TabIndex        =   211
            Top             =   1260
            Width           =   1005
         End
         Begin VB.Label LbTotalTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1560
            TabIndex        =   210
            Top             =   900
            Width           =   1005
         End
         Begin VB.Label LbTotalFrames 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1560
            TabIndex        =   209
            Top             =   720
            Width           =   1005
         End
         Begin VB.Label LbCurrPos 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1530
            TabIndex        =   208
            Top             =   360
            Width           =   1005
         End
         Begin VB.Label LbStatus 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1530
            TabIndex        =   207
            Top             =   150
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Progress (Percent):"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   80
            Left            =   150
            TabIndex        =   206
            Top             =   1260
            Width           =   1410
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total time:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   79
            Left            =   120
            TabIndex        =   205
            Top             =   900
            Width           =   765
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total frames:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   78
            Left            =   120
            TabIndex        =   204
            Top             =   720
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Current postion:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   203
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Status: "
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   77
            Left            =   120
            TabIndex        =   202
            Top             =   180
            Width           =   570
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Frames per second:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   76
            Left            =   150
            TabIndex        =   201
            Top             =   1080
            Width           =   1425
         End
         Begin VB.Label LbFramesPerSecond 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1560
            TabIndex        =   200
            Top             =   1080
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current time :"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   75
            Left            =   120
            TabIndex        =   199
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label LbCurrentTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1530
            TabIndex        =   198
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current Rate:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   74
            Left            =   150
            TabIndex        =   197
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label LbCurrentRate 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   1560
            TabIndex        =   196
            Top             =   1440
            Width           =   1005
         End
      End
      Begin VB.CommandButton CmdSelectFile 
         Caption         =   "Select &File"
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   24
         Top             =   210
         Width           =   1845
      End
      Begin VB.TextBox txtFrom 
         Height          =   315
         Index           =   1
         Left            =   2220
         TabIndex        =   30
         Top             =   1980
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox TxtTo 
         Height          =   315
         Index           =   1
         Left            =   3060
         TabIndex        =   31
         Top             =   1980
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.CommandButton CmdOpen 
         DownPicture     =   "MPEG.frx":D2E6
         Height          =   315
         Index           =   1
         Left            =   1950
         Picture         =   "MPEG.frx":D854
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPlay 
         DownPicture     =   "MPEG.frx":DDEA
         Height          =   315
         Index           =   1
         Left            =   2310
         Picture         =   "MPEG.frx":E380
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPause 
         DownPicture     =   "MPEG.frx":E92A
         Height          =   315
         Index           =   1
         Left            =   2640
         Picture         =   "MPEG.frx":EF1C
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdResume 
         Caption         =   "&Resume"
         Height          =   315
         Index           =   1
         Left            =   1740
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   540
         Width           =   915
      End
      Begin VB.CommandButton CmdStop 
         DownPicture     =   "MPEG.frx":F556
         Height          =   315
         Index           =   1
         Left            =   2970
         Picture         =   "MPEG.frx":FB00
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdClose 
         Caption         =   "&Close"
         Height          =   315
         Index           =   1
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   540
         Width           =   915
      End
      Begin VB.Timer TimerAtEndFile 
         Enabled         =   0   'False
         Index           =   1
         Interval        =   100
         Left            =   1650
         Top             =   3330
      End
      Begin VB.Timer TimerMisc 
         Enabled         =   0   'False
         Index           =   1
         Interval        =   500
         Left            =   960
         Top             =   3390
      End
      Begin VB.Frame FrameSize 
         Caption         =   "Size"
         Height          =   1665
         Index           =   1
         Left            =   3000
         TabIndex        =   184
         Top             =   1800
         Visible         =   0   'False
         Width           =   825
         Begin VB.Label LbActualCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   194
            Top             =   420
            Width           =   525
         End
         Begin VB.Label LbActualCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   193
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Actual:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   73
            Left            =   60
            TabIndex        =   192
            Top             =   210
            Width           =   510
         End
         Begin VB.Label LbCurrentCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   191
            Top             =   1080
            Width           =   525
         End
         Begin VB.Label LbCurrentCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   190
            Top             =   1200
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   72
            Left            =   60
            TabIndex        =   189
            Top             =   870
            Width           =   615
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   71
            Left            =   60
            TabIndex        =   188
            Top             =   420
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   38
            Left            =   60
            TabIndex        =   187
            Top             =   630
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   37
            Left            =   60
            TabIndex        =   186
            Top             =   1080
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   36
            Left            =   60
            TabIndex        =   185
            Top             =   1260
            Width           =   165
         End
      End
      Begin VB.Frame FrameRate 
         Caption         =   "Rate"
         Height          =   945
         Index           =   1
         Left            =   3000
         TabIndex        =   180
         Top             =   2040
         Visible         =   0   'False
         Width           =   705
         Begin ComctlLib.Slider SliderRate 
            Height          =   795
            Index           =   1
            Left            =   420
            TabIndex        =   43
            Top             =   120
            Width           =   210
            _ExtentX        =   370
            _ExtentY        =   1402
            _Version        =   327682
            Orientation     =   1
            Max             =   200
            SelStart        =   100
            TickStyle       =   3
            Value           =   100
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "200%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   9
            Left            =   60
            TabIndex        =   183
            Top             =   180
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "100%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   8
            Left            =   60
            TabIndex        =   182
            Top             =   450
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "0%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   7
            Left            =   90
            TabIndex        =   181
            Top             =   720
            Width           =   225
         End
      End
      Begin ComctlLib.Slider SliderMoveMultimedia 
         Height          =   225
         Index           =   1
         Left            =   90
         TabIndex        =   37
         Top             =   840
         Width           =   3585
         _ExtentX        =   6324
         _ExtentY        =   397
         _Version        =   327682
         Max             =   50
      End
      Begin ComctlLib.ProgressBar ProgressMultimedia 
         Height          =   180
         Index           =   1
         Left            =   150
         TabIndex        =   218
         Top             =   1110
         Width           =   3465
         _ExtentX        =   6112
         _ExtentY        =   318
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Line Line4 
         Index           =   1
         X1              =   210
         X2              =   3690
         Y1              =   3690
         Y2              =   3690
      End
      Begin VB.Line Line3 
         DrawMode        =   16  'Merge Pen
         Index           =   1
         X1              =   210
         X2              =   210
         Y1              =   3030
         Y2              =   3690
      End
      Begin VB.Line Line2 
         DrawMode        =   16  'Merge Pen
         Index           =   1
         X1              =   210
         X2              =   3690
         Y1              =   3030
         Y2              =   3030
      End
      Begin VB.Label LbResult 
         Caption         =   "Result calling Function is : "
         ForeColor       =   &H00C00000&
         Height          =   615
         Index           =   1
         Left            =   270
         TabIndex        =   223
         Top             =   3060
         Width           =   3405
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "From:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   83
         Left            =   1830
         TabIndex        =   222
         Top             =   2040
         Visible         =   0   'False
         Width           =   420
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "To:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   82
         Left            =   2790
         TabIndex        =   221
         Top             =   2040
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.Line Line1 
         Index           =   1
         X1              =   3690
         X2              =   3690
         Y1              =   3030
         Y2              =   3690
      End
      Begin VB.Label LbFileName 
         Height          =   195
         Index           =   1
         Left            =   450
         TabIndex        =   220
         Top             =   960
         Visible         =   0   'False
         Width           =   3585
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "File : "
         Height          =   195
         Index           =   81
         Left            =   60
         TabIndex        =   219
         Top             =   930
         Visible         =   0   'False
         Width           =   315
      End
   End
   Begin VB.Frame MainFrame 
      Caption         =   "ÝáÓØíä 3"
      ForeColor       =   &H000000FF&
      Height          =   5085
      Index           =   2
      Left            =   8640
      RightToLeft     =   -1  'True
      TabIndex        =   134
      Top             =   0
      Width           =   4275
      Begin VB.Frame FrameChannels 
         Caption         =   "Channels Control"
         Height          =   2565
         Index           =   2
         Left            =   450
         TabIndex        =   240
         Top             =   2130
         Visible         =   0   'False
         Width           =   3495
         Begin VB.OptionButton OptnChannelLeft 
            Caption         =   "Left"
            Height          =   225
            Index           =   2
            Left            =   90
            TabIndex        =   255
            Top             =   240
            Width           =   585
         End
         Begin VB.OptionButton OptnChannelRight 
            Caption         =   "Right"
            Height          =   225
            Index           =   2
            Left            =   660
            TabIndex        =   254
            Top             =   240
            Width           =   675
         End
         Begin VB.OptionButton OptnChannelAllOn 
            Caption         =   "All On"
            Height          =   225
            Index           =   2
            Left            =   1350
            TabIndex        =   67
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton OptnChannelAllOff 
            Caption         =   "All Off"
            Height          =   225
            Index           =   2
            Left            =   2100
            TabIndex        =   253
            Top             =   240
            Width           =   765
         End
         Begin VB.CommandButton CmdShowVol 
            Caption         =   "Vol"
            Height          =   285
            Index           =   2
            Left            =   2880
            TabIndex        =   68
            Top             =   180
            Width           =   525
         End
         Begin VB.Frame FrameLeftVol 
            Caption         =   "Left Vol"
            Height          =   1935
            Index           =   2
            Left            =   150
            TabIndex        =   249
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderLeftVol 
               Height          =   1665
               Index           =   2
               Left            =   60
               TabIndex        =   69
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   35
               Left            =   330
               TabIndex        =   252
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   34
               Left            =   390
               TabIndex        =   251
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   33
               Left            =   420
               TabIndex        =   250
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.CommandButton CmdHideVol 
            Caption         =   "<<"
            Height          =   315
            Index           =   2
            Left            =   2970
            TabIndex        =   72
            Top             =   2160
            Width           =   435
         End
         Begin VB.Frame FrameRightVol 
            Caption         =   "Right Vol"
            Height          =   1935
            Index           =   2
            Left            =   1170
            TabIndex        =   245
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderRightVol 
               Height          =   1665
               Index           =   2
               Left            =   60
               TabIndex        =   70
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   17
               Left            =   420
               TabIndex        =   248
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   16
               Left            =   390
               TabIndex        =   247
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   15
               Left            =   330
               TabIndex        =   246
               Top             =   330
               Width           =   375
            End
         End
         Begin VB.Frame FrameBothVol 
            Caption         =   "Both Vol"
            Height          =   1935
            Index           =   2
            Left            =   2160
            TabIndex        =   241
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderBothVol 
               Height          =   1665
               Index           =   2
               Left            =   60
               TabIndex        =   71
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   14
               Left            =   420
               TabIndex        =   244
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   13
               Left            =   390
               TabIndex        =   243
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   12
               Left            =   330
               TabIndex        =   242
               Top             =   330
               Width           =   375
            End
         End
      End
      Begin VB.Frame FrameVideo 
         Appearance      =   0  'Flat
         BackColor       =   &H0000FFFF&
         Caption         =   "Movie View"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   178
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   3705
         Index           =   2
         Left            =   30
         RightToLeft     =   -1  'True
         TabIndex        =   172
         Top             =   1350
         Width           =   4215
         Begin VB.Image Image3 
            Height          =   3675
            Left            =   0
            Picture         =   "MPEG.frx":10082
            Stretch         =   -1  'True
            Top             =   0
            Width           =   4185
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Resize"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   945
         Index           =   2
         Left            =   210
         TabIndex        =   167
         Top             =   2040
         Visible         =   0   'False
         Width           =   2775
         Begin VB.TextBox TxtHeight 
            Height          =   315
            Index           =   2
            Left            =   1530
            TabIndex        =   64
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox txtWidth 
            Height          =   315
            Index           =   2
            Left            =   570
            TabIndex        =   63
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtTop 
            Height          =   315
            Index           =   2
            Left            =   1530
            TabIndex        =   62
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox txtLeft 
            Height          =   315
            Index           =   2
            Left            =   570
            TabIndex        =   61
            Top             =   150
            Width           =   375
         End
         Begin VB.CommandButton CmdResize 
            Caption         =   "Resi&ze "
            Height          =   735
            Index           =   2
            Left            =   1950
            TabIndex        =   65
            Top             =   150
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Height:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   11
            Left            =   990
            TabIndex        =   171
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Width:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   10
            Left            =   90
            TabIndex        =   170
            Top             =   630
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Top:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   9
            Left            =   990
            TabIndex        =   169
            Top             =   210
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Left:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   8
            Left            =   90
            TabIndex        =   168
            Top             =   210
            Width           =   345
         End
      End
      Begin VB.CheckBox Check 
         Caption         =   "&Auto Repeat"
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   2
         Left            =   180
         TabIndex        =   59
         Top             =   540
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Caption         =   "Misc"
         Height          =   1665
         Index           =   2
         Left            =   210
         TabIndex        =   150
         Top             =   1920
         Visible         =   0   'False
         Width           =   2655
         Begin VB.Label LbProgress 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1560
            TabIndex        =   166
            Top             =   1260
            Width           =   1005
         End
         Begin VB.Label LbTotalTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1560
            TabIndex        =   165
            Top             =   900
            Width           =   1005
         End
         Begin VB.Label LbTotalFrames 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1560
            TabIndex        =   164
            Top             =   720
            Width           =   1005
         End
         Begin VB.Label LbCurrPos 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1530
            TabIndex        =   163
            Top             =   360
            Width           =   1005
         End
         Begin VB.Label LbStatus 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1530
            TabIndex        =   162
            Top             =   150
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Progress (Percent):"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   67
            Left            =   150
            TabIndex        =   161
            Top             =   1260
            Width           =   1410
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total time:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   66
            Left            =   120
            TabIndex        =   160
            Top             =   900
            Width           =   765
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total frames:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   65
            Left            =   120
            TabIndex        =   159
            Top             =   720
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Current postion:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   158
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Status: "
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   64
            Left            =   120
            TabIndex        =   157
            Top             =   180
            Width           =   570
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Frames per second:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   63
            Left            =   150
            TabIndex        =   156
            Top             =   1080
            Width           =   1425
         End
         Begin VB.Label LbFramesPerSecond 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1560
            TabIndex        =   155
            Top             =   1080
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current time :"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   62
            Left            =   120
            TabIndex        =   154
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label LbCurrentTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1530
            TabIndex        =   153
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current Rate:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   61
            Left            =   150
            TabIndex        =   152
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label LbCurrentRate 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   1560
            TabIndex        =   151
            Top             =   1440
            Width           =   1005
         End
      End
      Begin VB.CommandButton CmdSelectFile 
         Caption         =   "Select &File"
         Height          =   315
         Index           =   2
         Left            =   150
         TabIndex        =   50
         Top             =   210
         Width           =   1335
      End
      Begin VB.TextBox txtFrom 
         Height          =   315
         Index           =   2
         Left            =   1200
         TabIndex        =   53
         Top             =   540
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox TxtTo 
         Height          =   315
         Index           =   2
         Left            =   690
         TabIndex        =   54
         Top             =   570
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.CommandButton CmdOpen 
         DownPicture     =   "MPEG.frx":11FDF
         Height          =   315
         Index           =   2
         Left            =   1440
         Picture         =   "MPEG.frx":12251
         Style           =   1  'Graphical
         TabIndex        =   51
         Top             =   180
         Width           =   345
      End
      Begin VB.CommandButton CmdPlay 
         DownPicture     =   "MPEG.frx":124EB
         Height          =   315
         Index           =   2
         Left            =   1800
         Picture         =   "MPEG.frx":127C1
         Style           =   1  'Graphical
         TabIndex        =   52
         Top             =   180
         Width           =   345
      End
      Begin VB.CommandButton CmdPause 
         DownPicture     =   "MPEG.frx":12AD3
         Height          =   315
         Index           =   2
         Left            =   2130
         Picture         =   "MPEG.frx":12DB5
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   180
         Width           =   345
      End
      Begin VB.CommandButton CmdResume 
         Caption         =   "&Resume"
         Height          =   315
         Index           =   2
         Left            =   1590
         Style           =   1  'Graphical
         TabIndex        =   57
         Top             =   510
         Width           =   915
      End
      Begin VB.CommandButton CmdStop 
         DownPicture     =   "MPEG.frx":130C7
         Height          =   315
         Index           =   2
         Left            =   2490
         Picture         =   "MPEG.frx":13339
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   180
         Width           =   345
      End
      Begin VB.CommandButton CmdClose 
         Caption         =   "&Close"
         Height          =   315
         Index           =   2
         Left            =   2370
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   510
         Width           =   915
      End
      Begin VB.Timer TimerAtEndFile 
         Enabled         =   0   'False
         Index           =   2
         Interval        =   100
         Left            =   1650
         Top             =   3330
      End
      Begin VB.Timer TimerMisc 
         Enabled         =   0   'False
         Index           =   2
         Interval        =   500
         Left            =   960
         Top             =   3390
      End
      Begin VB.Frame FrameSize 
         Caption         =   "Size"
         Height          =   1665
         Index           =   2
         Left            =   2760
         TabIndex        =   139
         Top             =   2040
         Visible         =   0   'False
         Width           =   825
         Begin VB.Label LbActualCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   149
            Top             =   420
            Width           =   525
         End
         Begin VB.Label LbActualCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   148
            Top             =   630
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Actual:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   60
            Left            =   60
            TabIndex        =   147
            Top             =   210
            Width           =   510
         End
         Begin VB.Label LbCurrentCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   146
            Top             =   1080
            Width           =   525
         End
         Begin VB.Label LbCurrentCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   145
            Top             =   1260
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   59
            Left            =   60
            TabIndex        =   144
            Top             =   870
            Width           =   615
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   58
            Left            =   60
            TabIndex        =   143
            Top             =   420
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   44
            Left            =   60
            TabIndex        =   142
            Top             =   630
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   43
            Left            =   60
            TabIndex        =   141
            Top             =   1080
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   42
            Left            =   60
            TabIndex        =   140
            Top             =   1260
            Width           =   165
         End
      End
      Begin VB.Frame FrameRate 
         Caption         =   "Rate"
         Height          =   945
         Index           =   2
         Left            =   3000
         TabIndex        =   135
         Top             =   2040
         Visible         =   0   'False
         Width           =   705
         Begin ComctlLib.Slider SliderRate 
            Height          =   795
            Index           =   2
            Left            =   420
            TabIndex        =   66
            Top             =   120
            Width           =   210
            _ExtentX        =   370
            _ExtentY        =   1402
            _Version        =   327682
            Orientation     =   1
            Max             =   200
            SelStart        =   100
            TickStyle       =   3
            Value           =   100
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "200%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   20
            Left            =   60
            TabIndex        =   138
            Top             =   180
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "100%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   19
            Left            =   60
            TabIndex        =   137
            Top             =   450
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "0%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   18
            Left            =   90
            TabIndex        =   136
            Top             =   720
            Width           =   225
         End
      End
      Begin ComctlLib.Slider SliderMoveMultimedia 
         Height          =   225
         Index           =   2
         Left            =   180
         TabIndex        =   60
         Top             =   900
         Width           =   3585
         _ExtentX        =   6324
         _ExtentY        =   397
         _Version        =   327682
         Max             =   50
      End
      Begin ComctlLib.ProgressBar ProgressMultimedia 
         Height          =   180
         Index           =   2
         Left            =   240
         TabIndex        =   173
         Top             =   1110
         Width           =   3465
         _ExtentX        =   6112
         _ExtentY        =   318
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Line Line4 
         Index           =   2
         X1              =   210
         X2              =   3690
         Y1              =   3600
         Y2              =   3600
      End
      Begin VB.Line Line3 
         DrawMode        =   16  'Merge Pen
         Index           =   2
         X1              =   210
         X2              =   210
         Y1              =   3030
         Y2              =   3690
      End
      Begin VB.Line Line2 
         DrawMode        =   16  'Merge Pen
         Index           =   2
         X1              =   210
         X2              =   3690
         Y1              =   3030
         Y2              =   3030
      End
      Begin VB.Label LbResult 
         Caption         =   "Result calling Function is : "
         ForeColor       =   &H00C00000&
         Height          =   615
         Index           =   2
         Left            =   270
         TabIndex        =   178
         Top             =   3060
         Width           =   3405
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "From:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   70
         Left            =   810
         TabIndex        =   177
         Top             =   600
         Visible         =   0   'False
         Width           =   420
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "To:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   69
         Left            =   1770
         TabIndex        =   176
         Top             =   600
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.Line Line1 
         Index           =   2
         X1              =   3690
         X2              =   3690
         Y1              =   3030
         Y2              =   3690
      End
      Begin VB.Label LbFileName 
         Height          =   195
         Index           =   2
         Left            =   450
         TabIndex        =   175
         Top             =   990
         Visible         =   0   'False
         Width           =   3645
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "File : "
         Height          =   195
         Index           =   68
         Left            =   90
         TabIndex        =   174
         Top             =   960
         Visible         =   0   'False
         Width           =   315
      End
   End
   Begin VB.Timer TimerEffect 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   3780
      Top             =   1320
   End
   Begin VB.Frame MainFrame 
      Caption         =   "ÝáÓØíä 1"
      ForeColor       =   &H0000FF00&
      Height          =   5085
      Index           =   0
      Left            =   0
      RightToLeft     =   -1  'True
      TabIndex        =   74
      Top             =   0
      Width           =   4395
      Begin VB.Frame FrameRate 
         Caption         =   "Rate"
         Height          =   945
         Index           =   0
         Left            =   3000
         TabIndex        =   116
         Top             =   2040
         Visible         =   0   'False
         Width           =   705
         Begin ComctlLib.Slider SliderRate 
            Height          =   795
            Index           =   0
            Left            =   420
            TabIndex        =   17
            Top             =   120
            Width           =   210
            _ExtentX        =   370
            _ExtentY        =   1402
            _Version        =   327682
            Orientation     =   1
            Max             =   200
            SelStart        =   100
            TickStyle       =   3
            Value           =   100
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "0%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   47
            Left            =   90
            TabIndex        =   119
            Top             =   720
            Width           =   225
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "100%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   46
            Left            =   60
            TabIndex        =   118
            Top             =   450
            Width           =   375
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "200%"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   178
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   45
            Left            =   60
            TabIndex        =   117
            Top             =   180
            Width           =   375
         End
      End
      Begin VB.Frame FrameChannels 
         Caption         =   "Channels Control"
         Height          =   165
         Index           =   0
         Left            =   240
         TabIndex        =   113
         Top             =   3240
         Visible         =   0   'False
         Width           =   3495
         Begin VB.Frame FrameBothVol 
            Caption         =   "Both Vol"
            Height          =   1935
            Index           =   0
            Left            =   2160
            TabIndex        =   130
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderBothVol 
               Height          =   1665
               Index           =   0
               Left            =   60
               TabIndex        =   22
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   57
               Left            =   330
               TabIndex        =   133
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   56
               Left            =   390
               TabIndex        =   132
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   55
               Left            =   420
               TabIndex        =   131
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.Frame FrameRightVol 
            Caption         =   "Right Vol"
            Height          =   1935
            Index           =   0
            Left            =   1170
            TabIndex        =   126
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderRightVol 
               Height          =   1665
               Index           =   0
               Left            =   60
               TabIndex        =   21
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   54
               Left            =   330
               TabIndex        =   129
               Top             =   330
               Width           =   375
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   53
               Left            =   390
               TabIndex        =   128
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   52
               Left            =   420
               TabIndex        =   127
               Top             =   1650
               Width           =   225
            End
         End
         Begin VB.CommandButton CmdHideVol 
            Caption         =   "<<"
            Height          =   315
            Index           =   0
            Left            =   2970
            TabIndex        =   23
            Top             =   2160
            Width           =   435
         End
         Begin VB.Frame FrameLeftVol 
            Caption         =   "Left Vol"
            Height          =   1935
            Index           =   0
            Left            =   150
            TabIndex        =   122
            Top             =   570
            Width           =   735
            Begin ComctlLib.Slider SliderLeftVol 
               Height          =   1665
               Index           =   0
               Left            =   60
               TabIndex        =   20
               Top             =   240
               Width           =   285
               _ExtentX        =   503
               _ExtentY        =   2937
               _Version        =   327682
               Orientation     =   1
               Max             =   100
               TickStyle       =   3
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "0%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   51
               Left            =   420
               TabIndex        =   125
               Top             =   1650
               Width           =   225
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "50%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   50
               Left            =   390
               TabIndex        =   124
               Top             =   990
               Width           =   300
            End
            Begin VB.Label Lbcaption 
               AutoSize        =   -1  'True
               Caption         =   "100%"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   178
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   165
               Index           =   49
               Left            =   330
               TabIndex        =   123
               Top             =   330
               Width           =   375
            End
         End
         Begin VB.CommandButton CmdShowVol 
            Caption         =   "Vol"
            Height          =   285
            Index           =   0
            Left            =   2880
            TabIndex        =   19
            Top             =   180
            Width           =   525
         End
         Begin VB.OptionButton OptnChannelAllOff 
            Caption         =   "All Off"
            Height          =   225
            Index           =   0
            Left            =   2100
            TabIndex        =   115
            Top             =   240
            Width           =   765
         End
         Begin VB.OptionButton OptnChannelAllOn 
            Caption         =   "All On"
            Height          =   225
            Index           =   0
            Left            =   1380
            TabIndex        =   18
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton OptnChannelRight 
            Caption         =   "Right"
            Height          =   225
            Index           =   0
            Left            =   690
            TabIndex        =   114
            Top             =   240
            Width           =   765
         End
         Begin VB.OptionButton OptnChannelLeft 
            Caption         =   "Left"
            Height          =   225
            Index           =   0
            Left            =   90
            TabIndex        =   73
            Top             =   240
            Width           =   585
         End
      End
      Begin VB.CommandButton CmdDemoFight 
         Caption         =   "Demo (Fight)"
         Height          =   315
         Left            =   660
         TabIndex        =   1
         Top             =   540
         Visible         =   0   'False
         Width           =   1845
      End
      Begin VB.Frame FrameSize 
         Caption         =   "Size"
         Height          =   1665
         Index           =   0
         Left            =   2880
         TabIndex        =   102
         Top             =   3720
         Visible         =   0   'False
         Width           =   825
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   32
            Left            =   60
            TabIndex        =   112
            Top             =   1260
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   31
            Left            =   60
            TabIndex        =   111
            Top             =   1080
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cy"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   30
            Left            =   60
            TabIndex        =   110
            Top             =   630
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "cx"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   29
            Left            =   60
            TabIndex        =   109
            Top             =   420
            Width           =   165
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   28
            Left            =   60
            TabIndex        =   108
            Top             =   870
            Width           =   615
         End
         Begin VB.Label LbCurrentCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   107
            Top             =   1260
            Width           =   525
         End
         Begin VB.Label LbCurrentCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   106
            Top             =   1080
            Width           =   525
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Actual:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   27
            Left            =   60
            TabIndex        =   105
            Top             =   210
            Width           =   510
         End
         Begin VB.Label LbActualCy 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   104
            Top             =   630
            Width           =   525
         End
         Begin VB.Label LbActualCx 
            Alignment       =   2  'Center
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   103
            Top             =   420
            Width           =   525
         End
      End
      Begin ComctlLib.Slider SliderMoveMultimedia 
         Height          =   225
         Index           =   0
         Left            =   120
         TabIndex        =   11
         Top             =   900
         Width           =   3585
         _ExtentX        =   6324
         _ExtentY        =   397
         _Version        =   327682
         Max             =   50
      End
      Begin VB.Timer TimerMisc 
         Enabled         =   0   'False
         Index           =   0
         Interval        =   500
         Left            =   960
         Top             =   3390
      End
      Begin VB.Timer TimerAtEndFile 
         Enabled         =   0   'False
         Index           =   0
         Interval        =   100
         Left            =   1650
         Top             =   3330
      End
      Begin VB.CommandButton CmdClose 
         Caption         =   "Close"
         Height          =   315
         Index           =   0
         Left            =   2520
         TabIndex        =   9
         Top             =   540
         Width           =   915
      End
      Begin VB.CommandButton CmdStop 
         DownPicture     =   "MPEG.frx":13653
         Height          =   315
         Index           =   0
         Left            =   3030
         Picture         =   "MPEG.frx":13BAD
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdResume 
         Caption         =   "Resume"
         Height          =   315
         Index           =   0
         Left            =   1590
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   540
         Width           =   915
      End
      Begin VB.CommandButton CmdPause 
         DownPicture     =   "MPEG.frx":140CF
         Height          =   315
         Index           =   0
         Left            =   2700
         Picture         =   "MPEG.frx":14615
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdPlay 
         DownPicture     =   "MPEG.frx":14B6F
         Height          =   315
         Index           =   0
         Left            =   2340
         Picture         =   "MPEG.frx":150B5
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   210
         Width           =   345
      End
      Begin VB.CommandButton CmdOpen 
         DownPicture     =   "MPEG.frx":1560F
         Height          =   315
         Index           =   0
         Left            =   1980
         Picture         =   "MPEG.frx":15B7D
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   210
         Width           =   345
      End
      Begin VB.TextBox TxtTo 
         Height          =   315
         Index           =   0
         Left            =   3240
         TabIndex        =   5
         Top             =   540
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox txtFrom 
         Height          =   315
         Index           =   0
         Left            =   2400
         TabIndex        =   4
         Top             =   540
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.CommandButton CmdSelectFile 
         Caption         =   "Select &File"
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   0
         Top             =   210
         Width           =   1845
      End
      Begin VB.Frame Frame4 
         Caption         =   "Misc"
         Height          =   1665
         Index           =   0
         Left            =   210
         TabIndex        =   81
         Top             =   3720
         Visible         =   0   'False
         Width           =   2655
         Begin VB.Label LbCurrentRate 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1560
            TabIndex        =   121
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current Rate:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   48
            Left            =   150
            TabIndex        =   120
            Top             =   1440
            Width           =   1005
         End
         Begin VB.Label LbCurrentTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1530
            TabIndex        =   98
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Current time :"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   97
            Top             =   540
            Width           =   1005
         End
         Begin VB.Label LbFramesPerSecond 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1560
            TabIndex        =   93
            Top             =   1080
            Width           =   1005
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Frames per second:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   5
            Left            =   150
            TabIndex        =   92
            Top             =   1080
            Width           =   1425
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Status: "
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   91
            Top             =   180
            Width           =   570
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Current postion:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   90
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total frames:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   89
            Top             =   720
            Width           =   960
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Total time:"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   88
            Top             =   900
            Width           =   765
         End
         Begin VB.Label Lbcaption 
            AutoSize        =   -1  'True
            Caption         =   "Progress (Percent):"
            ForeColor       =   &H000000C0&
            Height          =   195
            Index           =   4
            Left            =   150
            TabIndex        =   87
            Top             =   1260
            Width           =   1410
         End
         Begin VB.Label LbStatus 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1530
            TabIndex        =   86
            Top             =   150
            Width           =   1005
         End
         Begin VB.Label LbCurrPos 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1530
            TabIndex        =   85
            Top             =   360
            Width           =   1005
         End
         Begin VB.Label LbTotalFrames 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1560
            TabIndex        =   84
            Top             =   720
            Width           =   1005
         End
         Begin VB.Label LbTotalTime 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1560
            TabIndex        =   83
            Top             =   900
            Width           =   1005
         End
         Begin VB.Label LbProgress 
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   1560
            TabIndex        =   82
            Top             =   1260
            Width           =   1005
         End
      End
      Begin VB.CheckBox Check 
         Caption         =   "&Auto Repeat"
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   0
         Left            =   90
         TabIndex        =   10
         Top             =   540
         Width           =   1215
      End
      Begin VB.Frame Frame2 
         Caption         =   "Resize"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   945
         Index           =   0
         Left            =   210
         TabIndex        =   76
         Top             =   2040
         Visible         =   0   'False
         Width           =   2775
         Begin VB.CommandButton CmdResize 
            Caption         =   "Resi&ze "
            Height          =   735
            Index           =   0
            Left            =   1950
            TabIndex        =   16
            Top             =   150
            Width           =   735
         End
         Begin VB.TextBox txtLeft 
            Height          =   315
            Index           =   0
            Left            =   570
            TabIndex        =   12
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox TxtTop 
            Height          =   315
            Index           =   0
            Left            =   1530
            TabIndex        =   13
            Top             =   150
            Width           =   375
         End
         Begin VB.TextBox txtWidth 
            Height          =   315
            Index           =   0
            Left            =   570
            TabIndex        =   14
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtHeight 
            Height          =   315
            Index           =   0
            Left            =   1530
            TabIndex        =   15
            Top             =   570
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Left:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   0
            Left            =   90
            TabIndex        =   80
            Top             =   210
            Width           =   345
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Top:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   1
            Left            =   990
            TabIndex        =   79
            Top             =   210
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Width:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   2
            Left            =   90
            TabIndex        =   78
            Top             =   630
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Height:"
            ForeColor       =   &H00000040&
            Height          =   195
            Index           =   3
            Left            =   990
            TabIndex        =   77
            Top             =   630
            Width           =   525
         End
      End
      Begin VB.Frame FrameVideo 
         Appearance      =   0  'Flat
         BackColor       =   &H008080FF&
         Caption         =   "Movie View"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   178
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   3705
         Index           =   0
         Left            =   90
         RightToLeft     =   -1  'True
         TabIndex        =   75
         Top             =   1350
         Width           =   4215
         Begin VB.Image Image1 
            Height          =   3675
            Left            =   0
            Picture         =   "MPEG.frx":160AF
            Stretch         =   -1  'True
            Top             =   0
            Width           =   4185
         End
      End
      Begin ComctlLib.ProgressBar ProgressMultimedia 
         Height          =   180
         Index           =   0
         Left            =   210
         TabIndex        =   101
         Top             =   1140
         Width           =   3465
         _ExtentX        =   6112
         _ExtentY        =   318
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "File : "
         Height          =   195
         Index           =   1
         Left            =   60
         TabIndex        =   100
         Top             =   900
         Visible         =   0   'False
         Width           =   315
      End
      Begin VB.Label LbFileName 
         Height          =   195
         Index           =   0
         Left            =   450
         TabIndex        =   99
         Top             =   900
         Visible         =   0   'False
         Width           =   3765
      End
      Begin VB.Line Line1 
         Index           =   0
         X1              =   3690
         X2              =   3690
         Y1              =   3030
         Y2              =   3690
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "To:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   11
         Left            =   2970
         TabIndex        =   96
         Top             =   600
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.Label Lbcaption 
         AutoSize        =   -1  'True
         Caption         =   "From:"
         ForeColor       =   &H000000FF&
         Height          =   195
         Index           =   10
         Left            =   2010
         TabIndex        =   95
         Top             =   600
         Visible         =   0   'False
         Width           =   420
      End
      Begin VB.Label LbResult 
         Caption         =   "Result calling Function is : "
         ForeColor       =   &H00C00000&
         Height          =   615
         Index           =   0
         Left            =   270
         TabIndex        =   94
         Top             =   3060
         Width           =   3405
      End
      Begin VB.Line Line2 
         DrawMode        =   16  'Merge Pen
         Index           =   0
         X1              =   210
         X2              =   3690
         Y1              =   3030
         Y2              =   3030
      End
      Begin VB.Line Line3 
         DrawMode        =   16  'Merge Pen
         Index           =   0
         X1              =   210
         X2              =   210
         Y1              =   3030
         Y2              =   3690
      End
      Begin VB.Line Line4 
         Index           =   0
         X1              =   210
         X2              =   3690
         Y1              =   3690
         Y2              =   3690
      End
   End
   Begin VB.Menu Three 
      Caption         =   "Screen"
      Index           =   1
      Begin VB.Menu one 
         Caption         =   "One"
      End
      Begin VB.Menu two 
         Caption         =   "Two"
      End
      Begin VB.Menu Three1 
         Caption         =   "Three"
         Index           =   2
      End
      Begin VB.Menu Four 
         Caption         =   "Four"
      End
      Begin VB.Menu Five 
         Caption         =   "Five"
      End
      Begin VB.Menu Sex 
         Caption         =   "Sex"
      End
   End
   Begin VB.Menu About 
      Caption         =   "About"
   End
   Begin VB.Menu Exit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'This copy which sent to MSDN library

'The Main note to know how you can make controls for more one multimedia file:
'WHEN you call any function from the module it need alias name and this name you choose it from your mind
'when you call function OpenMultimedia and if you want to play,stop,resume,,,etc
'you must write in parameter alias name the name which you choosed it in calling function OpenMultimedia
'and note if you called function openMultimedia and written in parameter alias name another different alias name
'this mean you want to open new multimedia file.
'Example for this piont:
'OpenMultimedia Me.hWnd, "audio1", "c:\mymp3.mp3", "mpegvideo"
'PlayMultimedia "audio1", vbNullString, vbNullString 'this will play audio1

''to open another audio at the same time with the back audio file do the following:
'OpenMultimedia Me.hWnd, "audio2", "c:\MySong.mp3", "mpegvideo" 'note we changed alias name from audio1 to audio2
'PlayMultimedia "audio2", vbNullString, vbNullString 'this will play audio2

'New: you can now play file in channel left and other file on channel right(READ part Effects)

'Enjoy and make your effects by this way and remember you can open a lot files

Option Explicit

Private Sub About_Click()
Load frmAbout
frmAbout.Show
End Sub

Private Sub Check_Click(Index As Integer)
If Check(Index).Value = 1 Then 'checked
    TimerAtEndFile(Index).Enabled = True 'enable the timer
Else 'not checked
    TimerAtEndFile(Index).Enabled = False 'disable the timer
End If

''You have another way very easy than this way just write the following lines
'Dim Result As Boolean
'Result = SetAutoRepeat(hWnd, "aliasname", vbNullString, vbNullString, True) 'aliasname for e.g. "movie" which you choosen itin the past (in calling function "OpenMultimedia")
'If Result = True Then
'    MsgBox "success make auto repeat"
'Else
'    MsgBox "not success make auto repeat"
'End If

''and if you want to kill auto repeat write the following
'Dim Result As Boolean
'Result = SetAutoRepeat(hWnd, "aliasname", vbNullString, vbNullString, False) 'aliasname for e.g. "movie" which you choosen itin the past (in calling function "OpenMultimedia")
''note we changed the last parameter from true to false to kill auto repeat
'If Result = True Then
'    MsgBox "success killing auto repeat"
'Else
'    MsgBox "not success killing auto repeat"
'End If

'BUT why I'm not used this way?
'Because this way just make auto repeat for one multimedia file
'and I'm here in this code used more than one multimedia file
End Sub

Private Sub CmdClose_Click(Index As Integer)
'Calling CloseMultimedia will close the multimedia file
MainFrame(Index).Caption = "ÝáÓØíä  " & Index + 1
'Parameters

'AliasName
'[in]Specifies name alias name which you want Close it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'you must call this function if you called OpenMultimedia
'And want to close your program or you will get an error message

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to close it

Result = CloseMultimedia(AliasName)
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean CloseMultimedia success
'Write your commands here
TimerMisc(Index).Enabled = False
TimerAtEndFile(Index).Enabled = False

'Clean the labels
LbFramesPerSecond(Index) = ""
LbTotalFrames(Index) = ""
LbTotalTime(Index) = ""
LbCurrentTime(Index) = ""
LbCurrPos(Index) = ""
LbProgress(Index) = ""
LbStatus(Index) = ""
LbActualCx(Index) = ""
LbActualCy(Index) = ""
LbCurrentCx(Index) = ""
LbCurrentCy(Index) = ""
LbCurrentRate(Index) = ""
'Set progress zero
ProgressMultimedia(Index) = 0

Else 'not success
'Write your command here
End If

End Sub

Private Sub CmdHideVol_Click(Index As Integer)
FrameChannels(Index).Height = 555 'Hide Control Volume
End Sub

Private Sub CmdOpen_Click(Index As Integer)
'if user not select a file then show msgbox  and exit from this sub
If LbFileName(Index) = "" Then MsgBox "Please select a file first", vbCritical: Exit Sub

'Callig OpenMultimedia will open the multimedia file
'Parameters
'hWnd
'[in]handle of the window
'which you want to play in. you can put handle for
'your desktop if you want to playing movie in your desktop.

'AliasName
'[in]Specifies name for every multimedia file and it
'should be difference  e.g.:
'you want to play two multimedia files the first maybe
'named "audio1" then you should name the other difference.

'filename
'[in]Specifies file name and the path it can contain any space
'which you want to play.

'typeDevice
'[in] Specifies a type of MCI device and it could be from the following:
'Type MCI       description                     driver file
'sequencer      dealing with mid                mciseq.drv
'               files
'MPEGVideo      dealing with most multimedia    mciqtz.drv
'               like mpg,mp3,mp2..
'               au,aiff,..etc also support
'               avi,vob(for DVD),midi,mid
'               and rmi files.because of this
'               my advice to you to use
'               type "MPEGVideo" to playing
'               MOST FILES even avi!!
'               I got this info from my
'               experiment when I opened
'               System.ini in section MCI
'               Then I must share others.
'avivideo       deling with avi movie           mciavi.drv

'the following types if you had ATI RAGE II or Later
'(This VGA Card to Support DVD Video)

'DvdVideo       This support DVD's Video        MciCinem.drv DVD
'ATIMPEGVIDEO   to playing MPEG Video           mciatim1.drv

'But my advice to you to not use type "ATIMPEGVIDEO" & "DvdVideo" because
'Type MPEGVideo can support most Multimedia files and also support DVD's
'Video if you had ATI RAGE II or LATER.
'last note for DVD Video: you must have a fast computer

'note : Type "MpegVideo" support these extensions:
'qt , mov, dat,snd, mpg, mpa, mpv, enc, m1v, mp2,mp3, mpe, mpeg, mpm
'au , snd, aif, aiff, aifc,wav,wmv,wma,avi,midi,mid,rmi,avi,etc.

'Note if there are any new type in (system.ini in windows 98 or in registry in windows 2000)
'it will supported by Type "MPEGVideo" because of this use type "MPEGVideo" to playing
'Most Files and remember you can use sequencer for mid and avivideo for avi,,etc.

'Now you must note using Type "MPEGVideo" can playing all Multimedia files

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

'Okay make sure if you used this function don't forget to use function
'CloseMultimedia or CloseAll When you will end your program or you
'will got error message

Dim AliasName As String
Dim typeDevice As String
Dim Result As String
AliasName = "movie" & Index 'this is the main improtant point to can open more than one multimedia file

If LCase(Right(LbFileName(Index), 4)) = ".avi" Then 'if the movie is avi then select type avivideo
    typeDevice = "AviVideo"

'ElseIf LCase(Right(LbFileName(Index), 4)) = ".mid" Then
'typeDevice = "sequencer" ' select this type for midi

'Note here we disabled type sequencer for Midi files because is not work in every
'Computer but we will use Type "MPEGVideo" for midi files (this will let it work
'in every computer.

ElseIf LCase(Right(LbFileName(Index), 4)) = ".vob" Then  'if the movie is DVD Video then select type "DvdVideo" or Type "MPEGVideo"
    Dim ResultMsg As Integer
    MsgBox "You trying Now to open DVD Video you must have" & _
     " a VGA card Support DVD like ATI All in Wonder 128.", vbInformation
    ResultMsg = MsgBox("Are you want to select type (MPEGVideo) or Type (DvdVideo)THIS TYPE FOR ATI CARD.my advice to you to use type (MPEGVideo) because it Also will support ANY TYPE FOR DVD VIDEO. if you want to use type (MPEGVideo) click on yes and if you want to use type (DVDVideo)click on no", vbQuestion Or vbYesNo)
    If ResultMsg = vbYes Then 'if user answered yes then choose "MPEGVideo" type
        typeDevice = "MPEGVideo"
    Else
        typeDevice = "DvDVideo" 'if user answered no then choose "DVDVideo" type
    End If

Else 'else this mean the file is  mpg,mp3,mp2,mp1,wav,rmi,mid,midi,,,etc then we will choose "MpegVideo" type
    typeDevice = "MPEGVideo"
End If
MainFrame(Index).Caption = LbFileName(Index)
Result = OpenMultimedia(FrameVideo(Index).hWnd, AliasName, LbFileName(Index), typeDevice)    'call now function OpenMultimedia
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean OpenMultimedia success

    OptnChannelAllOn(Index).Value = True 'not important (this will call function which in option channelsControl)

    'Calling GetSize will get current width(cx) or height(cy)

    'Parameters

    'AliasName
    '[in]Specifies name alias name which you want to get the current size for it
    'Note : you must let this parameter the alias which you
    'used it OpenMultimedia Function or this function not Success

    'cxOrcy
    'Specifies the width or height and you must note if you want to get the current width
    'set this pararmeter ="cx"
    'and if you want to get the current height set this parameter = "cy"

    'Important Note:
    'if you want to get the actual size you (must) call this function after Calling
    'Function OpenMultimedia (directly)before resize the movie.
    'and note if you resized the movie and after that called this function then you will
    'get the current size.


    'Note : if this Function success will return value long (width  or height )
    'or if not will return value long is -1

    LbActualCx(Index).Caption = GetSize(AliasName, "cx")
    LbActualCy(Index).Caption = GetSize(AliasName, "cy")
'---------------------------------------------------------------------------------------

    'Calling Function GetFramesPerSecond will get amount frames per second

    'Parameters

    'AliasName
    '[in]Specifies name alias name which you want to Get number frames
    'per second for it
    'Note : you must let this parameter the alias which you
    'used it OpenMultimedia Function or this function not Success


    'this Function Will return amount frames per second if it
    'Success or if not will return value -1
    LbFramesPerSecond(Index) = GetFramesPerSecond(AliasName)
'-----------------------------------------------------------------

    'Calling GetTotalframes will Get the Total frames for
    'the multimedia file

    'Parameters

    'AliasName
    '[in]Specifies name alias name which you want Get Total frames for it
    'Note : you must let this parameter the alias which you
    'used it OpenMultimedia Function or this function not Success

    'Note : if this Function success will return value long
    'is "number of total frames"
    'or if not will return value long is -1
    LbTotalFrames(Index) = GetTotalframes(AliasName)  'Get total frames
'----------------------------------------------------------------------


    'Calling GetTotalTimeByMS will Get the Total time by
    'millisecond for the multimedia file

    'Parameters

    'AliasName
    '[in]Specifies name alias name which you want Get Total time for it
    'Note : you must let this parameter the alias which you
    'used it OpenMultimedia Function or this function not Success

    'Note : if this Function success will return value long
    'is "the Total time by millisecond" divid by 1000 if you want the time by second
    'or if not will return value long is -1
    LbTotalTime(Index) = GetTotalTimeByMS(AliasName) / 1000   'Get Total Time
'---------------------------------------------------------------------------------


    'Callig GetRate will get current rate for Multimedia file

    'Parameters

    'AliasName
    '[in]Specifies name alias name which you want to get current rate for it
    'Note : you must let this parameter the alias which you
    'used it OpenMultimedia Function or this function not Success


    'Note : if this Function success will return value long
    'is "the current rate for Multimedia file"
    'or if not will return value long is -1


    LbCurrentRate(Index) = GetRate(AliasName) & " %"

'---------------------------------------------------------------------------------

    '------ Hide control Volume --------'
    FrameChannels(Index).Height = 555
    '------------------------------------

    SliderMoveMultimedia(Index).Max = LbTotalFrames(Index) / (LbFramesPerSecond(Index) * 2)
    TimerMisc(Index).Enabled = True  'Enable timerMisc(index) goto Sub TimerMisc to See the Functions
End If
End Sub

Private Sub CmdPause_Click(Index As Integer)
'Calling PauseMultimedia will pause the multimedia file

'Parameters

'AliasName
'[in]Specifies name alias name which you want Pause it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur


Dim AliasName As String
Dim Result As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to pause it

Result = PauseMultimedia(AliasName)
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean PauseMultimedia success
'Write your commands here
Else 'not success
'Write your command here
End If

End Sub

Private Sub CmdPlay_Click(Index As Integer)
'Calling PlayMultimedia will playing the multimedia file.
'Parameters

'AliasName
'[in]Specifies name alias name which you want play it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'from_where
'[in] Specifies the first frame in playing

'to_where
'[in]Specifies the last frame in playing

'if from_where is vbNullString and the to_where is vbNullString the Function will:
'playing from the beginning to end.

'if from_where is 10 and to_where is 100 the Function will:
'playing from 10 to 100 and stop.

'if from_where is vbNullString and to_where is 100 the Function will:
'playing from the beginning to 100 and stop.

'if from_where is 104 and to_where is vbNullString the Function will:
'playing from 104 to end.

'Note :the numbers 10,100,104 is an example for from where start playing to where end playing

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur


Dim AliasName As String
Dim Result As String

CmdResize_Click Index 'resize the movie before play  it

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to play it

Result = PlayMultimedia(AliasName, txtFrom(Index), TxtTo(Index))      'call now function PlayMultimedia
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean PlayMultimedia success
TimerAtEndFile(Index).Enabled = True
'Write your commands here

Else 'not success
'Write your command here
End If

End Sub

Private Sub CmdResize_Click(Index As Integer)
'Calling PutMultimedia will resize the movie

'Parameters

'hWnd
'Specifies the handle of the window.
'note: don't think this handle to put movie on it, this handle to get the size from it.

'AliasName
'[in]Specifies name alias name which you want to resize the movie
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Left
'Specifies the new position of the left side of the window.

'Top
'Specifies the new position of the top of the window.

'Width
'Specifies the new width of the window.

'Height
'Specifies the new height of the window.


'if you are set parameter width or Height zero
'the function will get the actual size of the window which
'want to play in and resize the movie to fit the window(hWnd)

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to resize it

Result = PutMultimedia(FrameVideo(Index).hWnd, AliasName, Val(txtLeft(Index)), Val(TxtTop(Index)), Val(txtWidth(Index)), Val(TxtHeight(Index)))        'call now function PutMultimedia
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean PutMultimedia success
    'Write your commands here

    'Calling GetSize will get current width(cx) or height(cy)

    'Parameters

    'AliasName
    '[in]Specifies name alias name which you want to get the current size for it
    'Note : you must let this parameter the alias which you
    'used it OpenMultimedia Function or this function not Success

    'cxOrcy
    'Specifies the width or height and you must note if you want to get the current width
    'set this pararmeter ="cx"
    'and if you want to get the current height set this parameter = "cy"

    'Important Note:
    'if you want to get the actual size you (must) call this function after Calling
    'Function OpenMultimedia (directly)before resize the movie.
    'and note if you resized the movie and after that called this function then you will
    'get the current size.


    'Note : if this Function success will return value long (width  or height )
    'or if not will return value long is -1
    
    'now we will get the current size
    LbCurrentCx(Index).Caption = GetSize(AliasName, "cx")
    LbCurrentCy(Index).Caption = GetSize(AliasName, "cy")
'---------------------------------------------------------------------------------------

Else 'not success
'Write your command here
End If

End Sub

Private Sub CmdResume_Click(Index As Integer)
'Calling ResumeMultimedia will Resume the multimedia file
'note: if you paused or stopped the file call this function to Continue
'( don't call PlayMultimedia function to Continue)

'Parameters

'AliasName
'[in]Specifies name alias name which you want Resume it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to resume it

Result = ResumeMultimedia(AliasName)
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean ResumeMultimedia success
'Write your commands here
Else 'not success
'Write your command here
End If

End Sub

Private Sub CmdSelectFile_Click(Index As Integer)
Me.Tag = Index
FrmSelectFile.Show
End Sub

Private Sub CmdShowVol_Click(Index As Integer)
FrameChannels(Index).Height = 2565 'Show Control volume


'Callig GetVolume will get the volume for Specified channels (left or right) or both channels

'Parameters

'AliasName
'[in]Specifies name alias name which you want to get volume for channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Channel
'[in]Specifies name for channel which you want to get volume for it
'this parameter must be from the following:
'channel                Description
'"left"                 to get volume left audio channel
'"right"                to get volume right audio channel
'any value like "all"   to get volume both audio channels (left & right)

'Note : if this Function success will return value long
'is "volume for specified channel"
'or if not will return value long is -1
Dim vol As Long
Dim AliasName As String
AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to get volume for it
vol = GetVolume(AliasName, "left")
If Not vol = -1 Then SliderLeftVol(Index).Value = (vol - 100) * -1 'apply the volume to slider if success

vol = GetVolume(AliasName, "right")
If Not vol = -1 Then SliderRightVol(Index).Value = (vol - 100) * -1 'apply the volume to slider if success

vol = GetVolume(AliasName, "all")
If Not vol = -1 Then SliderBothVol(Index).Value = (vol - 100) * -1 'apply the volume to slider if success

'Note : (vol-100) * -1 I used this line because the vertical slider from up to down and this "(vol-100) * -1"
'will oppsite the it to be from the down to up (This is not important)
'-------------------------------------------------------------------------------------------------------------------------

End Sub

Private Sub CmdStop_Click(Index As Integer)
'Calling StopMultimedia will Stop the multimedia file

'Parameters

'AliasName
'[in]Specifies name alias name which you want Stop it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to stop it

Result = StopMultimedia(AliasName)
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean StopMultimedia success
'Write your commands here
Else 'not success
'Write your command here
End If

End Sub

Private Sub Exit_Click()
Unload Me
End Sub

Private Sub Five_Click()
Me.Height = 10665
Me.Width = 13020
MainFrame(4).Visible = True
MainFrame(5).Visible = False

End Sub

Private Sub Form_Load()
'------ Hide control Volume --------'
Me.Height = 5700
Me.Width = 4440

FrameChannels(0).Height = 555
FrameChannels(1).Height = 555
FrameChannels(2).Height = 555
'------------------------------------

'this Function help you if you want to know the default device
'the parameter must be the device type like:
'MPEGVideo
'sequencer
'avivideo
'waveaudio
'videodisc
If Not GetDefaultDevice("MPEGVideo") = "mciqtz.drv" Then
'if Driver"mciqtz.drv" not the default device for type
'"MpegVideo" then set mciqtz.drv as a default device


SetDefaultDevice "MPEGVideo", "mciqtz.drv"
'this mciqtz.drv most improtant driver and it will receives calls mci for MPEG types
'Some programs change this device like xing mpeg
'and if this occur you can not play all mutimedia files
'and will occur unexpected errors

End If

If Not GetDefaultDevice("sequencer") = "mciseq.drv" Then
'if Driver"mciseq.drv" not the default device for type
'"sequencer" then set mciqtz.drv as a default device
SetDefaultDevice "sequencer", "mciseq.drv"
End If

If Not GetDefaultDevice("avivideo") = "mciavi.drv" Then
'if Driver"mciavi.drv" not the default device for type
'"avivideo" then set avivideo as a default device
SetDefaultDevice "avivideo", "mciavi.drv"
End If


End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Dim AliasName As String
Dim i As Integer

For i = 0 To 2
'Improtant note:you must disable any timer before closing the Multimedia file
TimerMisc(i).Enabled = False
TimerAtEndFile(i).Enabled = False
DoEvents
Next i
'------------------------------------------------------------------------------

'This Fucntion will close all multimedia files.
'use it when you want to end your program

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim Result As String
Result = CloseAll()

If Result = "Success" Then 'this mean CloseAll success
'Write your commands here
Else 'not success
'Write your command here
End If
'--------------------------------------------------------------------------------

'or you have another way to close Multimedia file by call (CloseMultimedia)
'but the advantage for calling (CloseAll) is it can close more than one Multimedia file by one line.

'Calling CloseMultimedia will close the multimedia file

'Parameters

'AliasName
'[in]Specifies name alias name which you want Close it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'you must call this function if you called OpenMultimedia
'And want to close your program or you will get an error message

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur
'Dim Result As String
'Result = CloseMultimedia(AliasName) 'you must write here the alias name for example "movie0"

'If Result = "Success" Then 'this mean CloseMultimedia success
''Write your commands here
'Else 'not success
''Write your command here
'End If

'Dim ResultMsg As Long
'ResultMsg = MsgBox("Are you like this code? then take a half of minute to vote for me(This code have now about more than 41 votes)Your Vote Let this code be the better! click yes to open vote. if you had any request please contact to me at:a_ahdal@yahoo.com", vbInformation Or vbYesNo)
'If ResultMsg = vbYes Then Shell "start http://www.planet-source-code.com/vb/scripts/ShowCode.asp?lngWId=1&txtCodeId=9783"

End Sub

Private Sub Form_Resize()
If Me.Width > 13020 Then Me.Width = 13020

End Sub

Private Sub Four_Click()
Me.Height = 10665
Me.Width = 13020
MainFrame(4).Visible = False
MainFrame(5).Visible = False
End Sub

Private Sub one_Click()
Me.Height = 5700
Me.Width = 4440


End Sub

Private Sub OptnChannelAllOff_Click(Index As Integer)
'Callig ChannelsControl will make controls for channels audio (left and right)

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make controls for channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'channel
'[in]Specifies name for channel which you want to make control for it
'this parameter must be from the following:
'channel             Description
'"left"              to make control for left audio channel
'"right"             to make control for right audio channel
'"all"               to make control for both audio channels (left & right)

'OnOrOFF
'[in] Specifies the channel control. This parameter must be from the following:
'Type Control           Description
'"on"                   to turn the channel on
'"off"                  to turn the channel off

'Important Note:
'To make control for every channel work effectly like turn off channel and turn on
'the another channel BE sure the audio or movie file has two channels(Stereo)

'Note: Be sure if you played a Stereo file (has two channels)and you turned off one
'of the channels, the sound which in this channel will not appear,JUST will appear the sound
'which in the other channel
'for Example:
'you played a mp3 file and you listened the person in the left channel say "Oh yeah"
'and you listened the person on the right channel say "Okay" then :
'if you turned off the right channel you JUST hear "oh yeah"
'if you turned off the left channel you JUST hear "Okay"

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String


AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make control for the channels

Result = ChannelsControl(AliasName, "all", "off") 'turn off the BOTH channel(left & right) for this Alias Multimedia

LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean ChannelsControl success
    'Write your commands here
    TimerAtEndFile(Index).Enabled = True

Else 'not success
    'Write your command here
End If
End Sub

Private Sub OptnChannelAllOn_Click(Index As Integer)
'Callig ChannelsControl will make controls for channels audio (left and right)

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make controls for channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'channel
'[in]Specifies name for channel which you want to make control for it
'this parameter must be from the following:
'channel             Description
'"left"              to make control for left audio channel
'"right"             to make control for right audio channel
'"all"               to make control for both audio channels (left & right)

'OnOrOFF
'[in] Specifies the channel control. This parameter must be from the following:
'Type Control           Description
'"on"                   to turn the channel on
'"off"                  to turn the channel off

'Important Note:
'To make control for every channel work effectly like turn off channel and turn on
'the another channel BE sure the audio or movie file has two channels(Stereo)

'Note: Be sure if you played a Stereo file (has two channels)and you turned off one
'of the channels, the sound which in this channel will not appear,JUST will appear the sound
'which in the other channel
'for Example:
'you played a mp3 file and you listened the person in the left channel say "Oh yeah"
'and you listened the person on the right channel say "Okay" then :
'if you turned off the right channel you JUST hear "oh yeah"
'if you turned off the left channel you JUST hear "Okay"

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String


AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make control for the channels

Result = ChannelsControl(AliasName, "all", "on") 'turn on the BOTH channel(left & right) for this Alias Multimedia

LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean ChannelsControl success
    'Write your commands here
    TimerAtEndFile(Index).Enabled = True

    SliderBothVol(Index) = 0: SliderLeftVol(Index) = 0: SliderRightVol(Index) = 0 'not important
    SetVolume AliasName, "all", 100  'not important calling this function here
Else 'not success
    'Write your command here
End If
End Sub

Private Sub OptnChannelLeft_Click(Index As Integer)
'Callig ChannelsControl will make controls for channels audio (left and right)

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make controls for channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'channel
'[in]Specifies name for channel which you want to make control for it
'this parameter must be from the following:
'channel             Description
'"left"              to make control for left audio channel
'"right"             to make control for right audio channel
'"all"               to make control for both audio channels (left & right)

'OnOrOFF
'[in] Specifies the channel control. This parameter must be from the following:
'Type Control           Description
'"on"                   to turn the channel on
'"off"                  to turn the channel off

'Important Note:
'To make control for every channel work effectly like turn off channel and turn on
'the another channel BE sure the audio or movie file has two channels(Stereo)

'Note: Be sure if you played a Stereo file (has two channels)and you turned off one
'of the channels, the sound which in this channel will not appear,JUST will appear the sound
'which in the other channel
'for Example:
'you played a mp3 file and you listened the person in the left channel say "Oh yeah"
'and you listened the person on the right channel say "Okay" then :
'if you turned off the right channel you JUST hear "oh yeah"
'if you turned off the left channel you JUST hear "Okay"

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String


AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make control for the channels

Result = ChannelsControl(AliasName, "left", "on") 'turn the left channel on for this Alias Multimedia
Result = ChannelsControl(AliasName, "right", "off") 'turn the right channel off for this Alias Multimedia

LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean ChannelsControl success
    'Write your commands here
    TimerAtEndFile(Index).Enabled = True

    SliderLeftVol(Index) = 0: SliderRightVol(Index) = 100: SliderBothVol(Index) = 50 'not important
Else 'not success
    'Write your command here
End If

End Sub

Private Sub OptnChannelRight_Click(Index As Integer)
'Callig ChannelsControl will make controls for channels audio (left and right)

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make controls for channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'channel
'[in]Specifies name for channel which you want to make control for it
'this parameter must be from the following:
'channel             Description
'"left"              to make control for left audio channel
'"right"             to make control for right audio channel
'"all"               to make control for both audio channels (left & right)

'OnOrOFF
'[in] Specifies the channel control. This parameter must be from the following:
'Type Control           Description
'"on"                   to turn the channel on
'"off"                  to turn the channel off

'Important Note:
'To make control for every channel work effectly like turn off channel and turn on
'the another channel BE sure the audio or movie file has two channels(Stereo)

'Note: Be sure if you played a Stereo file (has two channels)and you turned off one
'of the channels, the sound which in this channel will not appear,JUST will appear the sound
'which in the other channel
'for Example:
'you played a mp3 file and you listened the person in the left channel say "Oh yeah"
'and you listened the person on the right channel say "Okay" then :
'if you turned off the right channel you JUST hear "oh yeah"
'if you turned off the left channel you JUST hear "Okay"

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String


AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make control for the channels

Result = ChannelsControl(AliasName, "right", "on") 'turn the right channel on for this Alias Multimedia
Result = ChannelsControl(AliasName, "left", "off") 'turn the left channel off for this Alias Multimedia

LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean ChannelsControl success
    'Write your commands here
    TimerAtEndFile(Index).Enabled = True

    SliderLeftVol(Index) = 100: SliderRightVol(Index) = 0: SliderBothVol(Index) = 50 'not important
Else 'not success
    'Write your command here
End If

End Sub



Private Sub Sex_Click()
Me.Height = 10665
Me.Width = 13020
MainFrame(4).Visible = True
MainFrame(5).Visible = True
End Sub

Private Sub SliderBothVol_Scroll(Index As Integer)
'Callig SetVolume will make control for volume channels

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make control for volume channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Channel
'[in]Specifies name for channel which you want to make volume control for it
'this parameter must be from the following:
'channel                Description
'"left"                 to make control for volume left audio channel
'"right"                to make control for volume right audio channel
'any value like "all"   to make control for volume both audio channels (left & right)

'VolumeValue
'[in]Specifies value for Volume and this parameter must be from 0 to 100

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String
Dim vol As Long

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make volume control for it

'Because the silder from up to down this line will opposite the value(not important)
vol = (SliderBothVol(Index).Value - 100) * -1

Result = SetVolume(AliasName, "all", vol)   'call now function SetVolume
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean SetVolume success
    'Write your commands here
    CmdShowVol_Click Index 'go to event CmdShowVol and read the commands
Else 'not success
    'Write your command here
End If
End Sub

Private Sub SliderLeftVol_Scroll(Index As Integer)
'Callig SetVolume will make control for volume channels

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make control for volume channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Channel
'[in]Specifies name for channel which you want to make volume control for it
'this parameter must be from the following:
'channel                Description
'"left"                 to make control for volume left audio channel
'"right"                to make control for volume right audio channel
'any value like "all"   to make control for volume both audio channels (left & right)

'VolumeValue
'[in]Specifies value for Volume and this parameter must be from 0 to 100

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String
Dim vol As Long

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make volume control for it

'Because the silder from up to down this line will opposite the value(not important)
vol = (SliderLeftVol(Index).Value - 100) * -1

Result = SetVolume(AliasName, "left", vol)   'call now function SetVolume
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean SetVolume success
'Write your commands here
CmdShowVol_Click Index 'go to event CmdShowVol and read the commands
Else 'not success
'Write your command here
End If

End Sub

Private Sub SliderMoveMultimedia_Scroll(Index As Integer)
If LbFramesPerSecond(Index) = "" Then Exit Sub 'if this alias not opened then exit (improtant)

'Calling MoveMultimedia will seek (change the position)for
'the multimedia file

'Parameters

'AliasName
'[in]Specifies name alias name which you want change position for it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'to_where
'[in]Specifies number frame which you want jump to it

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String
Dim pos As Long

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want change position for it

pos = SliderMoveMultimedia(Index).Value * (LbFramesPerSecond(Index) * 2)
Result = MoveMultimedia(AliasName, pos)      'call now function MoveMultimedia
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean MoveMultimedia success
'Write your commands here
Else 'not success
'Write your command here
End If

End Sub



Private Sub SliderRate_Change(Index As Integer)
'Callig SetRate will increase or decrease speed playing for Multimedia file

'Parameters

'AliasName
'[in]Specifies name alias name which you want to increase or decrease speed for it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Rate
'[in]Specifies value for speed playing Multimedia file, this parameter must be from 0 to 200
'the following:
'Rate                   description
'100                    playing Multimedia file as normal speed
'more than 100          will increase speed playing file
'less than 100          will decrease speed playing file

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String
Dim RateValue As Long

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to set rate for it

'Because the silder from up to down this line will opposite the value(not important)
RateValue = (SliderRate(Index).Value - 200) * -1

Result = SetRate(AliasName, RateValue)      'call now function SetRate
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean SetRate success
'Write your commands here
    LbCurrentRate(Index) = RateValue & " %"
Else 'not success
'Write your command here
End If

'Note:if you want get current Rate call Function GetRate like the following
'Dim RateValue As Long
'RateValue = GetRate(AliasName)
'If Not RateValue = -1 Then MsgBox RateValue 'if success then display the rate

End Sub


Private Sub SliderRightVol_Scroll(Index As Integer)
'Callig SetVolume will make control for volume channels

'Parameters

'AliasName
'[in]Specifies name alias name which you want to make control for volume channels audio
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Channel
'[in]Specifies name for channel which you want to make volume control for it
'this parameter must be from the following:
'channel                Description
'"left"                 to make control for volume left audio channel
'"right"                to make control for volume right audio channel
'any value like "all"   to make control for volume both audio channels (left & right)

'VolumeValue
'[in]Specifies value for Volume and this parameter must be from 0 to 100

'Note : if this Function success will return value string "Success"
'or if not will return value string description the error which occur

Dim AliasName As String
Dim Result As String
Dim vol As Long

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want to make volume control for it

'Because the silder from up to down this line will opposite the value(not important)
vol = (SliderRightVol(Index).Value - 100) * -1

Result = SetVolume(AliasName, "right", vol)   'call now function SetVolume
LbResult(Index) = "Result calling Function is : " & Result


If Result = "Success" Then 'this mean SetVolume success
'Write your commands here
CmdShowVol_Click Index 'go to event CmdShowVol and read the commands
Else 'not success
'Write your command here
End If
End Sub

Private Sub Three1_Click(Index As Integer)
Me.Height = 5700
Me.Width = 13005

End Sub

Private Sub TimerAtEndFile_Timer(Index As Integer)
Dim AliasName As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want change position for it

'Calling Function AreMultimediaAtEnd will let you know if the File at
'the end now and this benefit you if you want to plays a list of files or make auto repeat
'(play the file again}

'Parameters

'AliasName
'[in]Specifies name alias name which you want to know if it at the end now
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'lastFrame
'[in]Specifies the last frame you want to play to
'if this parameter is zero (0) this function will get the last frame
If AreMultimediaAtEnd(AliasName, Val(TxtTo(Index))) = True Then ' alias name for e.g.:"movie"
    ''this mean  file multimedia at the end now then
    ''write your commnads here or call you favourit Fucntion
    ''or even you can play the file again or play the next file
    ''if you had a list of multimedia files.
    '.....
    '...
    '..
    'if you want to know if the multimedia file
    'at the end now don't use option Auto Repeat
    'you must do auto repeat by yourself by the following commands:
     
    If Check(Index).Value = 1 Then CmdPlay_Click (Index) 'this let the file auto repeat

    ''or you have choice to close this File and open
    ''another file and play it( this if had a list of files)
    ''like this commands after make the previous compare(I mean after compare in a timer)
    'Dim Result As String
    'Result = CloseMultimedia("aliasname")
    'Result = OpenMultimedia(FrameVideo.hwnd,"aliasname", filename, typeDevice) 'call now function openMultimedia
    'Result = PlayMultimedia("aliasname",txtFrom, TxtTo)

    

'Else
    'this mean result calling function false and this mean the
    'multimedia file not at the end now
    '....
    '...
    '..

End If

End Sub


Private Sub TimerMisc_Timer(Index As Integer)
Dim Percent As Long
Dim AliasName As String

AliasName = "movie" & Index 'this is the main improtant point to select the file which you want get some info for it


'Calling Function GetPercent will get the percent of plying file

'Parameters

'AliasName
'[in]Specifies name alias name which you want to Get percent for it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'the returned value from this function is Percent "Progress"
'if it successed and if the function failed will return value -1
Percent = GetPercent(AliasName)
If Not Percent = -1 Then ProgressMultimedia(Index).Value = Percent 'if success then display the percent
LbProgress(Index) = Percent & " %"
'-------------------------------------------------------------------



'Calling Function GetCurrentMultimediaPos will get the current frame

'Parameters

'AliasName
'[in]Specifies name alias name which you want Get current frame for it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'the returned value from this function is number of current frame
'and if the function failed will return value -1
LbCurrPos(Index) = GetCurrentMultimediaPos(AliasName)
'-------------------------------------------------------------------

'this line will get the current time
LbCurrentTime(Index) = Val(LbCurrPos(Index)) / Val(LbFramesPerSecond(Index))
'-----------------------------------------------------------------------------

'Calling Function GetStatusMultimedia will tell if the multimedia file
'now is playing or stopped or paused

'Parameters

'AliasName
'[in]Specifies name alias name which you want Get status for it
'Note : you must let this parameter the alias which you
'used it OpenMultimedia Function or this function not Success

'Note : if this Function success will return value string
'(the status of multimedia file) if it "playing" or "paused" or "stopped"
'or if not will return value string "ERROR"
LbStatus(Index) = GetStatusMultimedia(AliasName)
'------------------------------------------------------------------------

'Improtant Note:
'Don't Put this Function in any Timers or the program will
'be very slow
'1-GetTotalframes
'2-GetTotalTimeByMS
'3-GetFramesPerSecond
End Sub


'//////////////////////////////Part Effects///////////////////////////
'//////////////////////////////Part Effects///////////////////////////

Private Sub CmdDemoFight_Click()
'HERE we will makes some effects
CloseAll 'close all multimedia file

'Remove option auto repate
Check(0).Value = 0: Check_Click 0
Check(1).Value = 0: Check_Click 1
Check(2).Value = 0: Check_Click 2

'Select files
    LbFileName(0) = "file1.wav"
    LbFileName(1) = "file2.wav"
    LbFileName(2) = "file3.wav"
'End Select files

'open the files
    CmdOpen_Click 0
    CmdOpen_Click 1
    CmdOpen_Click 2
'end opening files

'Just turn on the left channel and turn off the right channel
OptnChannelLeft_Click 0
OptnChannelLeft(0).Value = True

PlayMultimedia "movie0", vbNullString, vbNullString 'play file1.wav
TimerEffect.Enabled = True 'go now to Function this timer and resume read the commands


End Sub



Private Sub TimerEffect_Timer()
'Here resume some effects

    If AreMultimediaAtEnd("movie0", 0) = True Then 'if file1.wav reach to end
        OptnChannelAllOn(0).Value = True ' not important
        CmdClose_Click 0 'close file1.wav
        OptnChannelRight_Click 1: OptnChannelRight(1).Value = True 'just turn on the right channel for file2.wav
        PlayMultimedia "movie1", vbNullString, vbNullString 'play
    End If

   If AreMultimediaAtEnd("movie1", 0) = True Then 'if file2.wav reach to end
        OptnChannelAllOn(1).Value = True ' not important
        CmdClose_Click 1 'close file2.wav
        OptnChannelLeft_Click 2: OptnChannelLeft(2).Value = True 'just turn on the left channel for file3.wav
        PlayMultimedia "movie2", vbNullString, vbNullString
    End If

    'Finaly
    If AreMultimediaAtEnd("movie2", 0) = True Then 'if file3.wav reach to end
        OptnChannelAllOn(2).Value = True ' not important
        CmdClose_Click 2 'close file3.wav
        
        TimerEffect.Enabled = False 'Close the timer
                
    End If

End Sub


Private Sub CmdDemoPlayFile2Times_Click()
'HERE we will makes some effects
'now we will play the file (which in frame Multimedia 2)
'two times and every time we will play it in one channel
'and note one of times will played before the other
'This effect will appear the sound like Stereo but you need
'a good computer(Fast).
MsgBox "now we will play the file (which in frame Multimedia 2)" & Chr$(13) & _
"two times and every time we will play it in one channel" & Chr$(13) & _
"and note one of times will played before the other" & Chr$(13) & _
"This effect will appear the sound like Stereo but you need" & Chr$(13) & _
"a good computer(Fast)." & Chr$(13) & _
"Try to click on button (Eff on)and wait, then click on button (Eff off) to see the difference"
'display message box


If LbFileName(1) = "" Then LbFileName(1) = "file2.wav" 'select the default file if user not select any file

CloseAll 'close all multimedia file

TimerEffect.Enabled = False 'not important

LbFileName(0) = LbFileName(1) 'copy file name in label

CmdOpen_Click 0 ' this like click on button "OPEN" and it will play Multimedia 1
CmdOpen_Click 1 ' this like click on button "OPEN" and it will play Multimedia 2


'seek
MoveMultimedia "movie0", 2
MoveMultimedia "movie1", 1

'note: if you used Function MoveMultimedia to jump to the
'Specified frame also it will play the file after jumping

If CmdDemoEffOn.Enabled = False And CmdDemoEffOff.Enabled = True Then CmdDemoEffOn_Click: Exit Sub 'not important

CmdDemoEffOn.Enabled = True 'Enable the button

End Sub


Private Sub CmdDemoEffOn_Click()
'Just turn on the left channel and turn off the right channel for Multimedia 1
OptnChannelLeft_Click 0
OptnChannelLeft(0).Value = True

'Just turn on the right channel and turn off the left channel for Multimedia 1
OptnChannelRight_Click 1
OptnChannelRight(1).Value = True

CmdDemoEffOn.Enabled = False 'Disable this button
CmdDemoEffOff.Enabled = True 'Enable this button
End Sub

Private Sub CmdDemoEffOff_Click()
'turn on all channels for the two file
OptnChannelAllOn_Click 0
OptnChannelAllOn(0).Value = True 'not important
OptnChannelAllOn_Click 1
OptnChannelAllOn(1).Value = True 'not important

CmdDemoEffOff.Enabled = False 'Disable this button
CmdDemoEffOn.Enabled = True 'Enable this button
End Sub
'//////////////////////////////End Effects///////////////////////////
'//////////////////////////////End Effects///////////////////////////



'LAST NOTE :
'the module is for standard use. just copy it in your own projects
'and calls the functions form any programs support vb langauge like Office programs
'for any info or request please contact to me at:
'a_ahdal@yahoo.com
'Abdullah Al-Ahdal

'maybe this code have some mistakes in my writing the comments (spelling) but this will repair
'by MSDN editors
Private Sub two_Click()
Me.Height = 5700
Me.Width = 8670

End Sub
