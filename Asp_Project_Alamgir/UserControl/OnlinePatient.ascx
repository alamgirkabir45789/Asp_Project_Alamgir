<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OnlinePatient.ascx.cs" Inherits="Asp_Project_Alamgir.UserControl.OnlinePatient" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        font-weight: bold;
        font-size: medium;
    }
    .auto-style4 {
        width: 132px;
    }
    .auto-style5 {
        width: 152px;
    }
*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*{text-shadow:none!important;color:#000!important;background:transparent!important;box-shadow:none!important}</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Online Patient Appintment"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:TextBox ID="txtName" runat="server" Width="203px" Height="30px" BorderStyle="solid"  CssClass="auto-style10"></asp:TextBox>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="White" CssClass="auto-style10">*</asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label3" runat="server" ForeColor="white" Text="Age" CssClass="auto-style10"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:TextBox ID="txtAge" runat="server" Width="203px" Height="30px"   TextMode="Number" CssClass="auto-style10"></asp:TextBox>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required" ForeColor="White" CssClass="auto-style10">*</asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RadioButtonList ID="radBtnGender" runat="server" RepeatDirection="Horizontal" Height="30px" Width="203px" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="radBtnGender" ErrorMessage="Gender is required" ForeColor="White">*</asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:TextBox ID="txtEmail" runat="server" Width="203px" Height="30px"  CssClass="auto-style10"></asp:TextBox>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style10">*</asp:RegularExpressionValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label6" runat="server" Text="Contact No"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:TextBox ID="txtContactNo" runat="server" Height="30px"  Width="203px" CssClass="auto-style10"></asp:TextBox>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactNo" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact No is required" ForeColor="White" CssClass="auto-style10">*</asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label7" runat="server" Text="Department Name"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:DropDownList ID="ddlDepartment"   runat="server" Height="30px" Width="203px" CssClass="auto-style10">
                    </asp:DropDownList>
    </span>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="Label8" runat="server" Text="Visiting Date"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:TextBox ID="txtVisitingDate" runat="server" Width="203px" Height="30px"  TextMode="Date" CssClass="auto-style10"></asp:TextBox>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorVisitingDate" runat="server" ControlToValidate="txtVisitingDate" ErrorMessage="Visiting date is required" ForeColor="White" CssClass="auto-style10">*</asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="emailSend" runat="server"></asp:Label>
    </span>
        </td>
        <td>
            <span class="auto-style10">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="White"></asp:Label>
                
    </span>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            <span class="auto-style10">
                    <asp:Label ID="lblOPID" runat="server" Visible="False"></asp:Label>
    </span>
        </td>
        <td rowspan="2">
            <asp:Button ID="btnSubmit" runat="server" Height="40px" BackColor="Gray" ForeColor="White" OnClick="btnSubmit_Click" Text="Submit" Width="100px" />
&nbsp;
            <asp:Button ID="btnReset" runat="server" Height="40px" OnClick="btnReset_Click" BackColor="DimGray" ForeColor="Wheat" Text="Reset" Width="100px" />
        </td>
        <td>
            <span class="auto-style10">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="White" />
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

