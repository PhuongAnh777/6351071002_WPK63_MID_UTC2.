<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManageCourse.aspx.cs" Inherits="de1.ManageCourse" %>
<%@ Register src="UserControl/ucManageCourse.ascx" tagname="ucManageCourse" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageCourse ID="ucManageCourse1" runat="server" />
</asp:Content>
