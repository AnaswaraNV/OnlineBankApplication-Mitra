<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="RegPage.aspx.vb" Inherits="OnlineBankApplication_Mitra.RegPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
<asp:WizardStep ID="CreateUserWizardStep0" runat="server">
    <table>
        <tr>
            <th>Billing Information</th>
        </tr>
        <tr>
            <td>Billing Address:</td>
            <td>
                <asp:TextBox runat="server" ID="BillingAddress" MaxLength="50" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="BillingAddress"
                     ErrorMessage="Billing Address is required." />
            </td>
        </tr> 
        <tr>
            <td>Billing City:</td>
            <td>
                <asp:TextBox runat="server" ID="BillingCity" MaxLength="50" Columns="15" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="BillingCity"
                     ErrorMessage="Billing City is required." />
            </td>
        </tr>  
        <tr>
            <td>Billing State:</td>
            <td>
                <asp:TextBox runat="server" ID="BillingState" MaxLength="25" Columns="10" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="BillingState"
                     ErrorMessage="Billing State is required."  />
            </td>
        </tr>   
        <tr>
            <td>Billing Zip:</td>
            <td>
                <asp:TextBox runat="server" ID="BillingZip" MaxLength="10" Columns="10" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="BillingZip"
                     ErrorMessage="Billing Zip is required." />
            </td>
        </tr>
    </table>
</asp:WizardStep>

   </asp:Content>
