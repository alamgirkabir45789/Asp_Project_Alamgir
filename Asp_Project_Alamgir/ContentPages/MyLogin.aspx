<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PortfiMasterPage.Master" AutoEventWireup="true" CodeBehind="MyLogin.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.MyLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 167px;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            width: 257px;
            text-align: center;
        }
        .auto-style4 {
            font-family: Arial;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="nav-justified" style="background-color:dodgerblue;color:white;border-radius:50px;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Font-Size="XX-Large" Text="Login"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Email "></asp:Label><br /><br />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtEmail" runat="server" Width="211px" ForeColor="BlueViolet"></asp:TextBox><br /><br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmai" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email i s required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br /><br />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPassword" runat="server" Width="211px" ForeColor="BlueViolet"></asp:TextBox><br /><br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="User Category"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlUserType" runat="server" Height="28px" Width="211px" ForeColor="BlueViolet">
                    <asp:ListItem>Select Your Category</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp; &nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="100px" Height="40px" BackColor="Navy" ForeColor="gold" />
                &nbsp;<asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" Width="100px" Height="40px" BackColor="Green" ForeColor="White" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
