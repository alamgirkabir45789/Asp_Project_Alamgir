<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PortfiMasterPage.Master" AutoEventWireup="true" CodeBehind="OnlinePatientRegistration.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.OnlinePatientRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            width: 241px;
        }
        .auto-style3 {
            width: 189px;
            height: 22px;
            text-align: left;
        }
        .auto-style4 {
            width: 241px;
            height: 22px;
            text-align: left;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 241px;
            text-align: left;
        }
        .auto-style7 {
            height: 22px;
            text-align: left;
        }
        .auto-style8 {
            width: 241px;
            height: 22px;
        }
        .auto-style9 {
            font-family: Arial;
            font-weight: bold;
            font-size: x-large;
        }
        .newStyle1 {
            background-repeat: repeat-x;
            background-attachment: scroll;
            background-color: #D0E9C6;
            background-image: url('../img/team4.jpg');
        }
        .newStyle2 {
            background-color: #0000FF;
        }
        .auto-style10 {
            color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="text-left">
            <span class="auto-style10">
        <br />
        </div>
        <table class="nav-justified" style="color:black;background:fixed; border-radius:50px; background-color:none">
            <tr>
                <td class="auto-style1" colspan="4">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="text-left">
                    <asp:Label ID="Label9" runat="server" Font-Bold="true" Text="Online Patient Registration" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="text-left">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label><br /><br />
                    </span>
                </td>
                <td class="text-left">
                    <asp:TextBox ID="txtName" runat="server" Width="203px" Height="30px" BorderStyle="solid"  CssClass="auto-style10"></asp:TextBox><br /><br />
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="#CC0000" CssClass="auto-style10">*</asp:RequiredFieldValidator>
                </td>
                <td class="text-left" rowspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Age" CssClass="auto-style10"></asp:Label><br /><br />
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAge" runat="server" Width="203px" Height="30px"   TextMode="Number" CssClass="auto-style10"></asp:TextBox><br /><br />
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required" ForeColor="#CC0000" CssClass="auto-style10">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <span class="auto-style10"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label><br />
                </td>
                <td class="text-left">
                    <asp:RadioButtonList ID="radBtnGender" runat="server" RepeatDirection="Horizontal" Height="30px" Width="203px" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList><br />
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="radBtnGender" ErrorMessage="Gender is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><br /><br />
                    </span>
                </td>
                <td class="text-left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="203px" Height="30px"  CssClass="auto-style10"></asp:TextBox><br /><br />
                </td>
                <td class="text-left">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style10">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <span class="auto-style10"></td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Contact No"></asp:Label><br /><br />
                    </span>
                </td>
                <td class="text-left">
                    <asp:TextBox ID="txtContactNo" runat="server" Height="30px"  Width="203px" CssClass="auto-style10"></asp:TextBox><br /><br />
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactNo" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact No is required" ForeColor="#CC0000" CssClass="auto-style10">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <span class="auto-style10"></td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Department Name"></asp:Label><br /><br />
                    </span>
                </td>
                <td class="text-left">
                    <asp:DropDownList ID="ddlDepartment"   runat="server" Height="30px" Width="203px" CssClass="auto-style10">
                    </asp:DropDownList><br /><br />
                </td>
                <td class="text-left"><span class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Visiting Date"></asp:Label><br /><br />
                    </span>
                </td>
                <td class="text-left">
                    <asp:TextBox ID="txtVisitingDate" runat="server" Width="203px" Height="30px"  TextMode="Date" CssClass="auto-style10"></asp:TextBox><br /><br />
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorVisitingDate" runat="server" ControlToValidate="txtVisitingDate" ErrorMessage="Visiting date is required" ForeColor="#CC0000" CssClass="auto-style10">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <span class="auto-style10"></td>
                <td class="auto-style4">
                    <asp:Label ID="emailSend" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
            <span class="auto-style10">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Black"></asp:Label>
                
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblOPID" runat="server" Visible="False"></asp:Label>
                    </span>
                </td>
                <td class="text-left">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="gray" BorderStyle="solid" ForeColor="white" Height="40px" OnClick="btnSubmit_Click" Text="Submit" Width="100px" CssClass="auto-style10" />
                    <span class="auto-style10">&nbsp;
                    </span>
                    <asp:Button ID="btnReset" runat="server" BackColor="gray" BorderStyle="groove" ForeColor="wheat" Font-Bold="true"  Height="40px" OnClick="btnReset_Click" Text="Reset" Width="100px" CssClass="auto-style10" />
                </td>
                <td class="text-left">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
                </td>
            </tr>
            <tr class="auto-style10">
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
            </tr>
            </table>
    </span>
    </asp:Content>
