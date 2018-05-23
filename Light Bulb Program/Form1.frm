VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Light Bulb Program"
   ClientHeight    =   4410
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   5715
   LinkTopic       =   "Form1"
   ScaleHeight     =   4410
   ScaleWidth      =   5715
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3360
      TabIndex        =   6
      Top             =   3360
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Caption         =   "Light Switch"
      Height          =   1935
      Left            =   3360
      TabIndex        =   1
      Top             =   1200
      Width           =   1815
      Begin VB.OptionButton Option2 
         Caption         =   "OFF"
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   1200
         Width           =   255
      End
      Begin VB.OptionButton Option1 
         Caption         =   "ON"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label3 
         Caption         =   "OFF"
         Height          =   375
         Left            =   720
         TabIndex        =   5
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "ON"
         Height          =   375
         Left            =   720
         TabIndex        =   4
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   2280
      Picture         =   "Form1.frx":0000
      Top             =   3360
      Width           =   480
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   360
      Picture         =   "Form1.frx":0442
      Top             =   3360
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   1815
      Left            =   720
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "The Light is off"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   240
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
End
End Sub

Private Sub Form_Load()
Image1.Picture = Image2.Picture
Option2.Value = True
End Sub

Private Sub Option1_Click()
Image1.Picture = Image2.Picture
Label1.Caption = "The Light is ON."
End Sub

Private Sub Option2_Click()
Image1.Picture = Image3.Picture
Label1.Caption = "The Light is OFF."
End Sub
