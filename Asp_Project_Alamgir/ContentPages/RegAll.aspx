<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PortfiMasterPage.Master" AutoEventWireup="true" CodeBehind="RegAll.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.RegAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:Button ID="btnDoctor" EnableTheming="true"  runat="server" Text="Doctor" Height="129px" Width="211px" BackColor="#060930" Font-Size="Large" ForeColor="Wheat" BorderStyle="Outset"  CssClass="tooltips" data-placement="right" title="Tooltip on right" OnClick="btnDoctor_Click" />                          
  


&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Button ID="btnPatient" runat="server" Text="Patient" Height="129px" Width="211px" BackColor="#321f28" Font-Size="Large" ForeColor="#effad3" BorderStyle="Outset"  CssClass="tooltips" data-placement="right" title="Tooltip on right" OnClick="btnPatient_Click" />                          
  


&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Button ID="btnStaff" runat="server" Text="Department" Height="129px" Width="211px" BackColor="#060930" Font-Size="Large" ForeColor="silver" BorderStyle="Outset"  CssClass="tooltips" data-placement="right" title="Tooltip on right" OnClick="btnStaff_Click" />                          
           

&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDepartment" runat="server" Height="129px" Text="Staff" Width="211px" BackColor="#003300" Font-Size="Large" ForeColor="wheat" BorderStyle="Solid"  CssClass="animated" data-placement="right" title="Tooltip on right" BorderColor="#660033" OnClick="btnDepartment_Click" />
           

&nbsp;&nbsp;
    <asp:Button ID="btnBloodReport" runat="server" Height="129px" OnClick="btnBloodReport_Click" BackColor="#060930" ForeColor="White" Text="Blood Report" Width="211px" />
           

</asp:Content>
