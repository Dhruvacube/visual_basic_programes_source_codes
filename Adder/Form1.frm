VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Simple Adder"
   ClientHeight    =   2610
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   8595
   BeginProperty Font 
      Name            =   "Nougat"
      Size            =   24
      Charset         =   0
      Weight          =   1000
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   2610
   ScaleWidth      =   8595
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "="
      Height          =   525
      Left            =   5040
      TabIndex        =   4
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Nougat"
         Size            =   20.25
         Charset         =   0
         Weight          =   1000
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3240
      TabIndex        =   2
      ToolTipText     =   "type a number to add"
      Top             =   480
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Nougat"
         Size            =   20.25
         Charset         =   0
         Weight          =   1000
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      TabIndex        =   0
      ToolTipText     =   "type a number to add"
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label2 
      Height          =   855
      Left            =   5760
      TabIndex        =   3
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Ninja Naruto"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      TabIndex        =   1
      Top             =   600
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim op As Single
Dim op2 As Single
Dim re As Single

op = Val(Text1.Text)
op2 = Val(Text2.Text)
re = op + op2
Label2.Caption = re
End Sub
