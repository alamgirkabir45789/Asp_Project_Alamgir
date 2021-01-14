<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisteredStudentInfo.aspx.cs" Inherits="Asp_Project_Alamgir.Management.RegisteredStudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ReunionRegistrationID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="ReunionRegistrationID" HeaderText="ReunionRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="ReunionRegistrationID" />
        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
        <asp:BoundField DataField="BatchNo" HeaderText="BatchNo" SortExpression="BatchNo" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ReunionRegistration] WHERE [ReunionRegistrationID] = @ReunionRegistrationID" InsertCommand="INSERT INTO [ReunionRegistration] ([FullName], [EmailAddress], [BatchNo], [PhoneNumber], [Message]) VALUES (@FullName, @EmailAddress, @BatchNo, @PhoneNumber, @Message)" SelectCommand="SELECT * FROM [ReunionRegistration]" UpdateCommand="UPDATE [ReunionRegistration] SET [FullName] = @FullName, [EmailAddress] = @EmailAddress, [BatchNo] = @BatchNo, [PhoneNumber] = @PhoneNumber, [Message] = @Message WHERE [ReunionRegistrationID] = @ReunionRegistrationID">
    <DeleteParameters>
        <asp:Parameter Name="ReunionRegistrationID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="BatchNo" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="Message" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="BatchNo" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="Message" Type="String" />
        <asp:Parameter Name="ReunionRegistrationID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
     <br /><br />
    <h2>Registered Student Information</h2>




</asp:Content>
