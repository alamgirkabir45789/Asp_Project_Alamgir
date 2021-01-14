<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PortfiMasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeReg.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.EmployeeReg" %>

<%@ Register Src="~/UserControl/CommonUser.ascx" TagPrefix="uc1" TagName="CommonUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center;color:green;">Employee Registration</h2>
    <uc1:CommonUser runat="server" ID="CommonUser" />

    </asp:Content>
