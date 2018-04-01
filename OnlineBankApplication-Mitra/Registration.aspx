<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Registration.aspx.vb" Inherits="OnlineBankApplication_Mitra.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%-- this logic is to validate if password and confirm password conain same values--%>

    <br />
    <h1>Customer Registration page</h1>
    <fieldset>
        <div class="form-group">
            <label for="Firstname">FirstName</label>
            <asp:TextBox ID="InputFirstname" runat="server" type="text" class="form-control" required="true"></asp:TextBox>
            <asp:RegularExpressionValidator
                ID="RegularExpressionValidator2"
                ControlToValidate="InputFirstname"
                ValidationExpression="([A-Za-z])+"
                ErrorMessage="Invalid Firstname!"
                Display="Static"
                Text="Invalid First name!"
                ForeColor="Red"
                runat="server">
            </asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="Lastname">LastName</label>
            <asp:TextBox ID="InputLastname" runat="server" type="text" class="form-control" required="true"></asp:TextBox>
            <asp:RegularExpressionValidator
                ID="RegularExpressionValidator3"
                ControlToValidate="InputLastname"
                ValidationExpression="([A-Za-z])+"
                ErrorMessage="Invalid Lastname!"
                Display="Static"
                Text="Invalid Lastname!"
                ForeColor="Red"
                runat="server">
            </asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="Telephone">Telephone</label>
            <asp:TextBox ID="InputTel" runat="server" type="Tel" placeholer="123-456-789" class="form-control" required="true"></asp:TextBox>
            <asp:RegularExpressionValidator
                ID="TelRegValidator"
                ControlToValidate="InputTel"
                ValidationExpression="^\d{10}$"
                ErrorMessage="Number not valid"
                Display="Static"
                Text="Tel number is not valid!"
                ForeColor="Red"
                runat="server">
            </asp:RegularExpressionValidator>
        </div>
        <div class="form-group" aria-describedby="chooseAccountType">
            <label for="AccountType">Choose your Account type</label>
            <asp:ListBox runat="server" ID="AccountTypeSelection" SelectionMode="Multiple" class="form-control">
                <asp:ListItem Text="Checquing Account"></asp:ListItem>
                <asp:ListItem Text="Savings Account"></asp:ListItem>
            </asp:ListBox>
        </div>
        <div class="form-group">
            <label for="Username">Username</label>
            <asp:TextBox ID="Username" runat="server" 
                type="text" class="form-control" required="true" placeholder="firstname.lastname"></asp:TextBox>
            <small id="usernameHelp" class="form-text text-muted">Remember your username</small>
            <asp:LoginName ID="LoginName1" runat="server" />
    </div>
        <div class="form-group">
            <label for="InputPassword">Password</label>
            <asp:TextBox ID="Password" runat="server" type="password"
                class="form-control" placeholder="Password" CausesValidation="true"></asp:TextBox>
            <asp:RegularExpressionValidator
                ID="PwdRegExValidator"
                ControlToValidate="Password"
                ValidationExpression="([A-Za-z0-9!@#%^&*()_+])+"
                ErrorMessage="Password Contain Invalid characters!"
                Display="Static"
                Text="Password Contain Invalid characters!"
                ForeColor="Red"
                runat="server">
            </asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <label for="InputPwd">Confirm Password</label>
            <asp:TextBox ID="ConfirmPswd" runat="server" type="password" class="form-control"
                placeholder="Password" CausesValidation="true"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1"
                runat="server"
                ControlToValidate="ConfirmPswd"
                ControlToCompare="Password"
                Type="String"
                Display="Static"
                Text="Passwords do not match!"
                ForeColor="red"
                ErrorMessage="Passwords do not match!">

            </asp:CompareValidator>

        </div>
        <asp:Button ID="RegisterButton" runat="server" Text="Register" type="submit" class="btn btn-primary" />
    </fieldset>

</asp:Content>
