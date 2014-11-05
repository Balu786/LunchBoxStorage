<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPatent.aspx.cs" Inherits="LunchBoxDataStorageSystem.NewPatent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table>
    <tr>
        <td>PatentName</td>
        <td><asp:TextBox ID="txtPatentName" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>Phone</td>
        <td>
            <asp:TextBox ID="txtPatentPhone" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>Alt Phone</td>
        <td>
            <asp:TextBox ID="txtPtntAltPhne" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>Address </td>
        <td>
            <asp:TextBox ID="txtPtntAddr" runat="server" Rows="4"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td>DOB</td>
        <td>
            <asp:Calendar ID="calDOB" runat="server"></asp:Calendar>
            <%--<asp:TextBox ID="txtPtnDD" runat="server" Width="45px" ToolTip="dd"></asp:TextBox>&nbsp;/&nbsp;
            <asp:TextBox ID="txtPtnMM" runat="server" Width="45px" ToolTip="mm"></asp:TextBox>&nbsp;/&nbsp;
            <asp:TextBox ID="txtPtnYY" runat="server" Width="45px" ToolTip="yyyy"></asp:TextBox>--%>
        </td>
    </tr>

    <tr>
        <td>Socail#</td>
        <td>
            <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>MediCare#</td>
        <td>
            <asp:TextBox ID="txtMedicareNo" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>MedicalId#</td>
        <td>
            <asp:TextBox ID="txtMedicalId" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
       <td>Insurance</td>
        <td>
            <asp:TextBox ID="txtInsurance" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>

    <tr>
       <td>Therapist Requesting</td>
        <td>
        <asp:DropDownList ID="drpdwnTherapist" runat="server" >
            <asp:ListItem Selected="True" Value="0" Text="Select Therapist"  />
        </asp:DropDownList>
           <%-- <asp:TextBox ID="txtTherapist" runat="server"></asp:TextBox>--%>
        </td>
    </tr>
    
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>

    <tr>
       <td>Physican</td>
        <td>
        <asp:DropDownList ID="drpdwnPhysican" runat="server" ></asp:DropDownList>
            <%--<asp:TextBox ID="txtPhysican" runat="server"></asp:TextBox>--%>
        </td>
    </tr>
    
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
       <td>Health Agency</td>
        <td>
            <asp:DropDownList ID="drpdwnHealthAgency" runat="server" ></asp:DropDownList>
            <%--<asp:TextBox ID="txtHealthAgency" runat="server"></asp:TextBox>--%>
        </td>
    </tr>
    <tr>
       <td>Phone</td>
        <td>
            <asp:TextBox ID="txtHealthAgencyPhone" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
       <td>Medical Necessity</td>
        <td>
            <asp:TextBox ID="txtMedicalNecessity"   runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" OnClick="savePatent" OnClientClick="validatePatentInfo()" Text="Save"/>
    </td>
    </tr>

    
</table>

</asp:Content>
