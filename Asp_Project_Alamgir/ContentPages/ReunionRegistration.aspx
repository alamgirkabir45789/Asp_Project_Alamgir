<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainAdmin/MainMaster.Master" AutoEventWireup="true" CodeBehind="ReunionRegistration.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.ReunionRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="text-align:center;color:brown;font-weight:900">Report Collection Information</h2>
    <table class="nav-justified" style="background-color:none;color:black;border-radius:50px">
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">&nbsp;</td>
        <td style="width: 261px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="4">
            <%--<asp:Label ID="Label1" runat="server" style="font-family: Arial; font-weight: bold; font-size: medium" Text="Registration Form"></asp:Label>--%>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">&nbsp;</td>
        <td style="width: 261px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">
            <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label><br /><br />
        </td>
        <td style="width: 261px">
            <asp:TextBox ID="txtFullName"  runat="server" ForeColor="BlueViolet" Width="217px" ></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Name is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">
            <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label><br /><br />
        </td>
        <td style="width: 261px">
            <asp:TextBox ID="txtEmail" runat="server" ForeColor="BlueViolet" Width="217px"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailAddress" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">
            <asp:Label ID="Label4" runat="server" Text="Patient ID"></asp:Label><br /><br />
        </td>
        <td style="width: 261px">
            <asp:TextBox ID="txtBatchNo" runat="server" Width="217px" ForeColor="BlueViolet"></asp:TextBox><br /><br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBatchNo" runat="server" ControlToValidate="txtBatchNo" ErrorMessage="Batch no is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 22px"></td>
        <td style="width: 199px; height: 22px">
            <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label><br /><br />
        </td>
        <td style="width: 261px; height: 22px">
            <asp:TextBox ID="txtPhoneNo" runat="server" ForeColor="BlueViolet" Width="217px"></asp:TextBox><br /><br />
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Phone number is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">
            <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label>
        </td>
        <td style="width: 261px">
            <asp:TextBox ID="txtMessage" runat="server" Width="217px" TextMode="MultiLine" ForeColor="BlueViolet"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">
            <asp:Label ID="lblRID" runat="server" Visible="False"></asp:Label>
        </td>
        <td style="width: 261px">
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes I am agree" />
&nbsp;&nbsp;
            <asp:Label ID="rtnMessage" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="emailSendSuccess" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">&nbsp;</td>
        <td style="width: 261px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSave" runat="server" Height="39px" Text="Send " ForeColor="Wheat" BackColor="gray" Width="78px" OnClick="btnSave_Click" />
            <asp:Button ID="btnReset" runat="server" Height="39px" ForeColor="Red" BackColor="lightgray" Text="Reset" Width="78px" OnClick="btnReset_Click" />
            <asp:Button ID="btnDelete" runat="server" Height="39px" ForeColor="Wheat" BackColor="Green" OnClick="btnDelete_Click" Text="Delete" Width="78px" />
            <asp:Button ID="btnUpdate" runat="server" Height="39px" ForeColor="White" BackColor="gray" OnClick="btnUpdate_Click" Text="Update" Width="78px" />
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">&nbsp;</td>
        <td style="width: 261px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td colspan="2" rowspan="2">
            <asp:GridView ID="dgViewReunionInfo" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ReunionRegistrationID" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="dgViewReunionInfo_SelectedIndexChanged" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ReunionRegistrationID" HeaderText="ReunionRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="ReunionRegistrationID" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="BatchNo" HeaderText="BatchNo" SortExpression="BatchNo" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT * FROM [ReunionRegistration]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">&nbsp;</td>
        <td style="width: 261px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 199px">&nbsp;</td>
        <td style="width: 261px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
   <br /><br />


</asp:Content>
