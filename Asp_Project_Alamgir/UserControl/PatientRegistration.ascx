<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PatientRegistration.ascx.cs" Inherits="Asp_Project_Alamgir.UserControl.PatientRegistration" %>

<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
    }
    .auto-style4 {
        width: 394px;
    }
    .auto-style5 {
        width: 394px;
        text-align: left;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style7 {
        width: 169px;
        height: 26px;
    }
    .auto-style8 {
        width: 394px;
        height: 26px;
    }
    .auto-style9 {
        width: 157px;
    }
    .auto-style10 {
        height: 26px;
        width: 157px;
    }
    </style>


<div class="auto-style1">
</div>
<p>
 

    <h2 style="text-align:center;color:navy;font-weight:900">Indoor Patient Registration</h2>

        <table class="auto-style2" style="background-color:none;color:black;border-radius:100px">
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style1" colspan="2">
            <%--<asp:Label ID="Label1" runat="server" Text="Patient Registration" CssClass="auto-style11"></asp:Label>--%>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label><br /><br />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtName" runat="server" Width="215px" ForeColor="BlueViolet"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label><br /><br />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtAge" runat="server" ForeColor="BlueViolet" Width="215px" TextMode="Number"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label><br /><br />
        </td>
        <td class="auto-style4">
            <asp:RadioButtonList ID="radBtnGender" runat="server"  Height="29px" Width="215px" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator  ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="radBtnGender" ErrorMessage="Gender is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Email Address" ></asp:Label><br /><br />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtEmail" runat="server" Width="215px" ForeColor="BlueViolet"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Contact No"></asp:Label><br /><br />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtContactNo" runat="server" Width="215px" ForeColor="BlueViolet"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactNo" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact number is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style7">
            <asp:Label ID="Label7" runat="server" Text="Department Name"></asp:Label><br /><br />
        </td>
        <td class="auto-style8">
            <asp:DropDownList ID="ddlDepartment" runat="server"  Height="30px" Width="215px" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged">
            </asp:DropDownList><br /><br />
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDepartment" runat="server" ControlToValidate="ddlDepartment" ErrorMessage="Department is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label8" runat="server" Text="Visiting Date"></asp:Label><br /><br />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtVisitingDate" runat="server"  Width="215px" TextMode="Date"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ControlToValidate="txtVisitingDate" ErrorMessage="Visiting date is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="lblPID" runat="server"></asp:Label>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes I am agree" /><br /><br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">
            &nbsp;<asp:Button ID="btnSubmit" ForeColor="white" BackColor="#794c74" runat="server" Height="46px" Text="Submit Information" Width="207px" OnClick="btnSubmit_Click" style="text-align: center" />
&nbsp;&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" Height="41px" Width="252px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3" colspan="2" rowspan="2">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>



