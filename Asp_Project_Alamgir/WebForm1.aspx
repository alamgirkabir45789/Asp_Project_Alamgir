<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Asp_Project_Alamgir.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPatientName" runat="server" Width="213px"></asp:TextBox>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtAge" runat="server" Width="213px" ></asp:TextBox>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem>Choose Any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtEmail" runat="server" Width="213px"></asp:TextBox>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Contact No"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtContactNo" runat="server" Width="213px"></asp:TextBox>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Visiting Date"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtVisitingDate" runat="server" Width="213px" TextMode="Date"></asp:TextBox>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Exam Name"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtExamName" runat="server" Width="213px"></asp:TextBox>
                <br />
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label>
                <br />
                <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPrice" runat="server" Width="213px"></asp:TextBox>
                <br /></td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblLTID" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" rowspan="2">
                <asp:Button ID="btnSubmit" runat="server" Height="35px" OnClick="btnSubmit_Click" Text="Submit" Width="217px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
