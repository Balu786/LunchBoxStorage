<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HealthAgency.aspx.cs" Inherits="LunchBoxDataStorageSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
   <table style=" position:absolute; left:40%; top:30%;">
   <tr>
   <td>
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtName" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtEmail" runat="server" Height="68px" Width="174px" 
           style="margin-right: 2px" TextMode="MultiLine"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lblPhno" runat="server" Text="Phone Number"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtPhno" runat="server" Width="174px"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td>
    <asp:Label ID="lbltaxid" runat="server" Text="TAXId"></asp:Label>
   </td>
   <td>
     <asp:TextBox ID="txtTaxId" runat="server" Width="174px"></asp:TextBox>
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
