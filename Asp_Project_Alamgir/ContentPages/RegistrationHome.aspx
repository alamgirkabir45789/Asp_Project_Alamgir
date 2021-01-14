<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationHome.aspx.cs" Inherits="Asp_Project_Alamgir.ContentPages.RegistrationHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div style="border:solid 1px #20307C; padding:10px; width:100%;">
        <h3> Medico Medical College Hospital </h3>
        <%--<img src="../img/img1.png"  style="text-align: center; width: 40%; height:40%;" />--%>
        <p>Welcome to our website. Today is <%= DateTime.Now.ToString("dddd, dd MMMM yyyy") %> <a href="ReunionRegistration.aspx" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:20px;">Click Here For Registration</a></p>
        <p>
            <b> Event Name : </b> Online patient Registration<br />
            <b>  Address : </b> Medico Medical College and Hospital, 110 CDA Avenue, Nasirabad, (Opposite CTG Shopping Complex) Dhaka- 4000<br />
           <%-- <b> Event Date : </b> Friday, 02 December 2020<br />
            <b> Event Start Time : </b> Start from 02:00 PM onwards<br /><br />--%>
            <b> Please feel free to call me on (+8801747 193 694) or contact by (alamgirkabir45389@gmail.com), if you require any further information. </b>
        </p>
        <p>Please click on the link below to tell us that you will join us in this wonderful event.<p />
        <a href="ReunionRegistration.aspx" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:20px;">Click Here For Online Registration</a>
    </div> 

</asp:Content>
