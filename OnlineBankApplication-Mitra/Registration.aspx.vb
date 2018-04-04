
Public Class Registration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Setting the first value as selected
        AccountTypeSelection.SelectedIndex = 0
    End Sub

    Protected Sub RegisterButton_Click(sender As Object, e As EventArgs)
        Dim DBHandlerObj As New DBHandler()
        Dim customer As New Customer With
            {
            .Username = InputUsername.Text,
            .FirstName = InputFirstname.Text,
            .LastName = InputLastname.Text,
            .PasswordHash = InputPassword.Text,
            .SecurityQuestion = InputQuestion.Text,
            .SecurityAnswer = InputAnswer.Text
            }

        Dim message = DBHandlerObj.Validate_User(customer)
        dvMessage.Visible = True
        lblMessage.Text = message
        'Server.Transfer("Default.aspx")

    End Sub

End Class