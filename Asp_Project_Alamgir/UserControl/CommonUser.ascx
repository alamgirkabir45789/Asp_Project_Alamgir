<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommonUser.ascx.cs" Inherits="Asp_Project_Alamgir.UserControl.CommonUser" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 148px;
    }
    .auto-style3 {
        width: 216px;
    }
    .auto-style4 {
        width: 190px;
    }
</style>


<table class="auto-style1" style="background-color:none; color:black;border-radius:100px" >
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label><br /><br />
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtName" runat="server" Width="190px"></asp:TextBox><br /><br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label><br /><br />
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtEmail" runat="server" Width="190px"></asp:TextBox><br /><br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Contact No"></asp:Label><br /><br />
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtContactNo" runat="server" Width="190px"></asp:TextBox><br /><br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Department Name"></asp:Label><br /><br />
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlDepartment" runat="server" Height="22px"  Width="190px">
            </asp:DropDownList><br /><br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label><br /><br />
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtUserName" runat="server" Width="190px"></asp:TextBox><br /><br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label><br /><br />
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPassword" runat="server" Width="190px"></asp:TextBox><br /><br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="lblPID" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:CheckBox ID="chkAggree" runat="server" Text="Yes I am agree" /><br /><br />
        </td>
        <td>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td class="auto-style3">
            &nbsp;<asp:Button ID="btnSave" runat="server" ForeColor="White" BackColor="#2d6187" Height="31px" OnClick="btnSave_Click" Text="Save" Width="120px" />
        &nbsp; 
            &nbsp;
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2" rowspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>


