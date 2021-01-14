<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PortfiMasterPage.Master" AutoEventWireup="true" CodeBehind="IndoorPatientReg.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.IndoorPatientReg" %>

<%@ Register Src="~/UserControl/PatientRegistration.ascx" TagPrefix="uc1" TagName="PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:PatientRegistration runat="server" ID="PatientRegistration" />
</asp:Content>
