<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Therphist.aspx.cs" Inherits="LunchBoxDataStorageSystem.Therphist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <table style=" position:absolute; left:40%; top:30%;">
   <tr>
   <td>
    <asp:Label ID="lblTypecode" runat="server" Text="Type Code"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtTypecode" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblFirstname" runat="server" e Text="First Name"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtFirstNme" runat="server" Height="22px" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblLasrname" runat="server" Text="Last Name"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtLastname" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblIemail" runat="server" Text="Internal Email"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtIemail" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblPhonenum" runat="server" Text="PhoneNumber"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtPhoneNumber" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblZipCode" runat="server" Text="ZipCode"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtZipCode" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td colspan="2">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
       <asp:Button ID="btnSubmit" style=" left:40%;" runat="server" Text="Submit" 
           Width="66px" onclick="btnSubmit_Click" />
       </td>
       </tr>
   </table>   
</asp:Content>
