<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewTherapist.aspx.cs" Inherits="LunchBoxDataStorageSystem.NewTherapist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table align="center">
<tr>
    <td colspan="2" align="center">New Therapist</td>
</tr>
<tr>
    <td>First Name</td>
    <td>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td>Last Name</td>
    <td>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td>Email</td>
    <td>
        <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
    </td>
</tr>
<tr>
    <td>Phone Number</td>
    <td>
        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td>Zipcode</td>
    <td>
        <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
    <td>Tax No</td>
    <td>
        <asp:TextBox ID="txtTaxNo" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
    <td colspan="2" align="center">
        <asp:Button ID="btnSubmit" runat="server" OnClick="saveTherapist" Text="Save"/>
    </td>
</tr>

</table>
</asp:Content>
