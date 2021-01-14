<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainAdmin/MainMaster.Master" AutoEventWireup="true" CodeBehind="OnlinePatientManagement.aspx.cs" Inherits="Asp_Project_Alamgir.Management.OnlinePatientManagement" %>

<%@ Register Src="~/UserControl/OnlinePatient.ascx" TagPrefix="uc1" TagName="OnlinePatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <uc1:OnlinePatient runat="server" ID="OnlinePatient" />
</asp:Content>
