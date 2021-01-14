<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainAdmin/MainMaster.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Asp_Project_Alamgir.Management.PatientInfo" %>

<%@ Register Src="~/UserControl/CommonUser.ascx" TagPrefix="uc1" TagName="CommonUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="text-align:center;color:#132743;font-weight:700 ;text-transform:fullsize-kana">Employee Registration</h2>
    <uc1:CommonUser runat="server" ID="CommonUser" />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
