VERSION 5.00
Begin VB.Form frmmain 
   Caption         =   "The Name Game"
   ClientHeight    =   5115
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   12480
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   5115
   ScaleWidth      =   12480
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picOutput 
      BeginProperty Font 
         Name            =   "Nougat"
         Size            =   21.75
         Charset         =   0
         Weight          =   1000
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   360
      ScaleHeight     =   2235
      ScaleWidth      =   11595
      TabIndex        =   3
      Top             =   2400
      Width           =   11655
   End
   Begin VB.CommandButton cmdGetinfo 
      Caption         =   "Get Information"
      BeginProperty Font 
         Name            =   "Nougat"
         Size            =   18
         Charset         =   0
         Weight          =   1000
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3720
      TabIndex        =   2
      Top             =   1440
      Width           =   4575
   End
   Begin VB.TextBox txtName 
      BeginProperty Font 
         Name            =   "Nougat"
         Size            =   18
         Charset         =   0
         Weight          =   1000
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   6840
      TabIndex        =   1
      Top             =   480
      Width           =   5175
   End
   Begin VB.Label lblName 
      Caption         =   "Enter your name (First Name and Last Name)"
      BeginProperty Font 
         Name            =   "Nougat"
         Size            =   14.25
         Charset         =   0
         Weight          =   1000
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   6255
   End
End
Attribute VB_Name = "frmmain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGetinfo_Click()
Dim lsFirstName As String
Dim lsLastName As String
Dim liSpace As Integer
Dim lsFullNameLenght As Integer

lsFullName = txtName.Text
liFullNameLenght = Len(txtName.Text)
liSpace = InStr(lsFullName, " ")
lsFirstName = Left(lsFullName, liSpace - 1)
lsLastName = Right(lsFullName, liFullNameLenght - liSpace)

picOutput.Print "Your first is " & lsFirstName
picOutput.Print "Your last name is " & lsLastName
picOutput.Print "There are " & liFullNameLenght - 1 & " characters in your name"
End Sub
