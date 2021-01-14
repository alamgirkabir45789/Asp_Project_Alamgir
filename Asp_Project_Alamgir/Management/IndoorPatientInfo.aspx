<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainAdmin/MainMaster.Master" AutoEventWireup="true" CodeBehind="IndoorPatientInfo.aspx.cs" Inherits="Asp_Project_Alamgir.Management.IndoorPatientInfo" %>

<%@ Register Src="~/UserControl/PatientRegistration.ascx" TagPrefix="uc1" TagName="PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <uc1:PatientRegistration runat="server" ID="PatientRegistration" />
</asp:Content>
