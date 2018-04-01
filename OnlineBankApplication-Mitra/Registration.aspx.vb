Public Class Registration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Setting the first value as selected
        AccountTypeSelection.SelectedIndex = 0
    End Sub

    Protected Sub RegisterButton_Click(sender As Object, e As EventArgs) Handles RegisterButton.Click
        'after customer registration need to call the stored pro
        'to insert value to database and 
        Server.Transfer("Default.aspx")
    End Sub

End Class