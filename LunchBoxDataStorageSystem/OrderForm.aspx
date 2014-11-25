<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="LunchBoxDataStorageSystem.OrderForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {}
        .style3
        {
            height: 230px;
        }
        .style4
        {
            height: 230px;
        }
        .style5
        {
            width: 321px;
        }
        .style6
        {
            height: 230px;
            width: 321px;
        }
        .style7
        {
            width: 321px;
            height: 41px;
        }
        .style8
        {
            height: 41px;
        }
        .style9
        {
            width: 321px;
            height: 14px;
        }
        .style10
        {
            height: 14px;
        }
        .style13
        {
            width: 321px;
            height: 25px;
        }
        .style14
        {
        }
        .style15
        {
            width: 237px;
        }
        .style16
        {
            height: 230px;
            width: 237px;
        }
        .style17
        {
            width: 159px;
        }
        .style18
        {
            width: 237px;
            height: 25px;
        }
        .style19
        {
            width: 159px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="style1">
            <tr>
                <td class="style5">
                    <asp:CheckBox ID="cbxPhytrpy" runat="server" Text="Physical Therpy" />
                </td>
                <td class="style15">
                    <asp:CheckBox ID="cbxOcutrpy" runat="server" Text="Ocupation Therpy" />
                </td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style2">
                    <asp:CheckBox ID="cbxSpeshtherpy" runat="server" Text="Speech Therphy" />
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Date</td>
                <td class="style16">
                    <asp:TextBox ID="txtDate" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="calBtton" runat="server" onclick="ImageButton1_Click" 
                        Height="16px" ImageUrl="~/img/calendar.png" />
                    <asp:Calendar ID="calDate" runat="server" Height="54px" 
                        onselectionchanged="calDate_SelectionChanged" Width="234px"></asp:Calendar>
                </td>
                <td class="style3" colspan="3">
                    &nbsp;</td>
                <td class="style4">
                </td>
            </tr>
            <tr>
                <td class="style13">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Medicare Week&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style18">
                    <asp:CheckBox ID="cbxMtS" runat="server" Text="Mon-Sut" />
                </td>
                <td class="style19">
                    <asp:CheckBox ID="cbxsts" runat="server" Text="Sun-sat" />
                </td>
                <td class="style14" colspan="2">
                    <asp:CheckBox ID="cbxstf" runat="server" Text="Sat-Fri" />
                </td>
                <td class="style14">
                    </td>
            </tr>
            <tr>
                <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Referring Agency</td>
                <td class="style8" colspan="4">
                    <asp:DropDownList ID="drpRefagency" runat="server" Height="22px" Width="158px">
                    </asp:DropDownList>
                </td>
                <td class="style8">
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                    Contact Person&nbsp;</td>
                <td class="style10" colspan="4">
                    <asp:TextBox ID="txtconctprsn" runat="server" Height="22px" Width="158px"></asp:TextBox>
                </td>
                <td class="style10">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Nurse Name&nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtNursename" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone&nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtpne" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Patient Name&nbsp;</td>
                <td class="style2" colspan="4">
                    &nbsp;<asp:DropDownList ID="drpPatname" runat="server" Height="22px" 
                        Width="157px">
                         <Items>
       <asp:ListItem Text="--Select--" Value="" />
   </Items>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Diagnosis</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txxDiagnsis" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Physician&nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:DropDownList ID="drpmedipsn" runat="server" Height="18px" Width="158px">
                     <Items>
       <asp:ListItem Text="--Select--" Value="" />
   </Items>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Phone</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtMedipne" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    Agency Specfication</td>
                <td class="style14" colspan="4">
                </td>
                <td class="style14">
                    </td>
            </tr>
            <tr>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Date Evaluation to be completed By</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtdateevln" runat="server" Width="159px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date First visit to be completed&nbsp; by</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtDtfvstcmpby" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maximum Number of Visites&nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtMaxmnofsts" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Spl Orders&nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:TextBox ID="txtsplorders" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Call Agency For New order&nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:RadioButtonList ID="rbncalagncynwodr" runat="server" 
                        RepeatDirection="Horizontal" Height="27px" Width="158px">
                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="4">
                    <asp:Button ID="btnsbmt" runat="server" Text="Submit" onclick="btnsbmt_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
