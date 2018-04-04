
Public Class DBHandler
    'definining db entities 
    Dim MitraDbEntityObj As New MITRADBDBEntities

    Public Function CreateUser(customer As Customer) As Boolean
        Throw New NotImplementedException()
    End Function


    Public Function Validate_User(customer As Customer) As String
        Dim message As String = Nothing
        Dim userExist = Convert.ToString(MitraDbEntityObj.Validate_User(customer.Username,
                                                        customer.FirstName,
                                                        customer.LastName,
                                                        customer.PasswordHash,
                                                       customer.SecurityQuestion,
                                                       customer.SecurityAnswer))
        Select Case userExist
            Case "0"
                'dvMessage.Visible = True
                'lblMessage.Text = "Username exists."
                message = "Username exists."
                Exit Select
            Case "-1"
                'dvMessage.Visible = True
                'lblMessage.Text = "insertion ok."
                message = "insertion ok."
                Exit Select
            Case Else
                message = "all ok"
        End Select
        Return message
    End Function
End Class

