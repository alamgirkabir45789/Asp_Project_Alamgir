<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PortfiMasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorRegistration.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.DoctorRegistration" %>

<%@ Register Src="~/UserControl/CommonUser.ascx" TagPrefix="uc1" TagName="CommonUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center;color:#808080">Doctor Registration</h2>
    <uc1:CommonUser runat="server" ID="CommonUser" />
</asp:Content>
