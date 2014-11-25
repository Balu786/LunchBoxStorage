<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="LunchBoxDataStorageSystem.Test1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Order List<br />
    </p>
    <p>
        <asp:GridView ID="grdVw" AutoGenerateColumns="false"  DataKeyNames="phone" runat="server" 
            ShowFooter="True">
         <Columns>
         <asp:TemplateField HeaderText="TherpyType">
          <ItemTemplate>
        <asp:Label ID="txtstorid" runat="server" Text='<%#Eval("TherpyType") %>'/>
    </ItemTemplate>
         <EditItemTemplate>
          <asp:TextBox ID="txtTherpyType1" width="70px"  runat="server" Text='<%#Eval("TherpyType") %>'/>
         </EditItemTemplate>
        <%-- <FooterTemplate>
             <asp:TextBox ID="txtTherpyType2" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Date">
      <ItemTemplate>
         <asp:Label ID="lblname" runat="server" Text='<%#Eval("Date") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtDate1" width="70px"  runat="server" Text='<%#Eval("Date") %>'/>
     </EditItemTemplate>
     <%-- <FooterTemplate>
             <asp:TextBox ID="txtDate2" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="medicareweek">
     <ItemTemplate>
         <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("medicareweek") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtmedicareweek" width="70px"  runat="server" Text='<%#Eval("medicareweek") %>'/>
     </EditItemTemplate>
<%--      <FooterTemplate>
             <asp:TextBox ID="txtmedicareweek1" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Referingagency">
       <ItemTemplate>
         <asp:Label ID="lblcity" runat="server" Text='<%#Eval("Referingagency") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtReferingagency1" width="50px"   runat="server" Text='<%#Eval("Referingagency") %>'/>
     </EditItemTemplate>
     <%-- <FooterTemplate>
             <asp:TextBox ID="txtReferingagency2" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="Contctperson">
     <ItemTemplate>
         <asp:Label ID="lblstate" runat="server" Text='<%#Eval("Contctperson") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtContctperson1" width="30px"  runat="server" Text='<%#Eval("Contctperson") %>'/>
     </EditItemTemplate>
    <%--  <FooterTemplate>
             <asp:TextBox ID="txtContctperson2" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
     </asp:TemplateField>
      <asp:TemplateField HeaderText="Nursename">
     <ItemTemplate>
         <asp:Label ID="lblNursename1" runat="server" Text='<%#Eval("Nursename") %>'/>
     </ItemTemplate>
    <EditItemTemplate>
         <asp:TextBox ID="txtNursename1" width="30px"  runat="server" Text='<%#Eval("Nursename") %>'/>
     </EditItemTemplate>
    <%--<FooterTemplate>
             <asp:TextBox ID="txtNursename2" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="phone">
     <ItemTemplate>
         <asp:Label ID="lblphone" runat="server" Text='<%#Eval("phone") %>'/>
     </ItemTemplate>
    <%--<EditItemTemplate>
         <asp:TextBox ID="txtphone1" width="30px"  runat="server" Text='<%#Eval("phone") %>'/>
     </EditItemTemplate>--%>
   <%-- <FooterTemplate>
             <asp:TextBox ID="txtphone2" runat="server"></asp:TextBox> 
         </FooterTemplate>--%>
    </asp:TemplateField>
         </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
