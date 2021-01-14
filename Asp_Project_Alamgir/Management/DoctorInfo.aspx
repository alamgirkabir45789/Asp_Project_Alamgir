<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainAdmin/MainMaster.Master" AutoEventWireup="true" CodeBehind="DoctorInfo.aspx.cs" Inherits="Asp_Project_Alamgir.Management.DoctorInfo" %>

<%@ Register Src="~/UserControl/CommonUser.ascx" TagPrefix="uc1" TagName="CommonUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 style="text-align:center;color:hotpink;font-weight:700 ;text-transform:fullsize-kana"">Doctor Registration</h1>
    <uc1:CommonUser runat="server" ID="CommonUser" />
</asp:Content>
