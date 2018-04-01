<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="OnlineBankApplication_Mitra._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Mitra</h1>
        <p class="lead">A helping hand to your Online banking needs</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <fieldset>
        <div class="alert alert-dismissible alert-success" style="display:none;">
            <asp:Button runat="server" ID="successbutton" type="button" class="close" data-dismiss="alert" ></asp:Button>
            <asp:Label runat="server" ID="successLabel"><strong>Well done!</strong> You have successfully registered!</asp:Label>
        </div>
        <div class="form-group">
            <label for="Username">UserName</label>
            <asp:TextBox ID="InputUsername" runat="server" type="text" class="form-control" placeholder="Enter Username"></asp:TextBox>
            <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="InputPassword1">Password</label>
            <asp:TextBox ID="InputPassword" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
        </div>
        <asp:Button ID="SignInButton" runat="server" Text="Sign In" type="submit" class="btn btn-primary" />
        <br />
        <span>
            <p>Not a member ?</p>
            <label>&nbsp;</label>
            <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" type="button" class="btn btn-link" />
        </span>

    </fieldset>
    <br />
    <div class="row">
        <div class="col-md-4">
            <h2>Apply for home, car, student loans at cheap rates</h2>
            <p>
                We can offer you bank loans at cheap rates. Contact your local branch for more details.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get Your taxes Done Easily</h2>
            <p>
                We offer tax helps. Call us for your personalized accountants and financial experts
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
    </div>


</asp:Content>
