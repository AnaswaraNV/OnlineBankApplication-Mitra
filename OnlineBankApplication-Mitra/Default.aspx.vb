Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    ''' <summary>
    ''' User clicks sign in button after entering credentials 
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Private Sub SignInButton_Click(sender As Object, e As EventArgs) Handles SignInButton.Click

    End Sub

    ''' <summary>
    ''' If the user is not a member will redirect to a registration window 
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub SignUpButton_Click(sender As Object, e As EventArgs) Handles SignUpButton.Click
        Server.Transfer("Registration.aspx")
    End Sub
End Class