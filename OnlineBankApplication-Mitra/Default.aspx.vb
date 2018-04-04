Imports System.Web.Security

Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'If user is not authenticated go back to login page
        'If Not Me.Page.User.Identity.IsAuthenticated Then
        'FormsAuthentication.RedirectToLoginPage()
        'End If
    End Sub

    ''' <summary>
    ''' User clicks sign in button after entering credentials 
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Private Sub SignInButton_Click(sender As Object, e As EventArgs) Handles SignInButton.Click
        'get the user name and password 
        Dim username As String = Me.InputUsername.Text
        Dim password As String = Me.InputPassword.Text
        'calling the database handler class to perform database operation
        Dim DBHandlerObj As New DBHandler()

        'DBHandlerObj.ValidateUser(username, password)
    End Sub

    ''' <summary>
    ''' If the user is not a member will redirect to a registration window 
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub SignUpButton_Click(sender As Object, e As EventArgs) Handles SignUpButton.Click
        Response.Redirect("Registration.aspx")
    End Sub
End Class