<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician.aspx.cs" Inherits="LunchBoxDataStorageSystem.Physician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table style=" position:absolute; left:40%; top:30%;">
   <tr>
   <td>
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblEmil" runat="server" Text="Email"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblPhno" runat="server" Text="Phone Number"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtPhno" runat="server"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td colspan="2">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="btnSubmit" style=" left:40%;" runat="server" Text="Submit" 
           Width="66px" onclick="btnSubmit_Click" />
       </td>
       </tr>
   </table>   
</asp:Content>
