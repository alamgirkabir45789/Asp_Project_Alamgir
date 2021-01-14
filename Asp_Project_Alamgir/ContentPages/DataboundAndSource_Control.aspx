<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainAdmin/MainMaster.Master" AutoEventWireup="true" CodeBehind="DataboundAndSource_Control.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.DataboundAndSource_Control" %>

<%@ Register Src="~/UserControl/DataboundAndSourceControl.ascx" TagPrefix="uc1" TagName="DataboundAndSourceControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <uc1:DataboundAndSourceControl runat="server" id="DataboundAndSourceControl" />
</asp:Content>
