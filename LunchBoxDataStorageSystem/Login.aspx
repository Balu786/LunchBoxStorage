<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LunchBoxDataStorageSystem.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 500px;height: 159px;margin: 0px auto;padding-top:110px; text-align:center;font-family: verdana;">
    <h3>LunchBox Data Storage Systems</h3><br />
    
    <table align="center">
    <tr>
            <td align="center" colspan="2"><span style="">Login</span></td>
        </tr>
        <tr>
            <td>UserName</td>
            <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPswd" TextMode="Password" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2"><asp:Button ID="btnLogin" runat="server" OnClick="authenticate" Text="Login" /></td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
