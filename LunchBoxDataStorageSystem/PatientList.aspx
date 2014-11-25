<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="LunchBoxDataStorageSystem.PatientList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
        
        <asp:GridView ID="grdPatnlist"  AutoGenerateColumns="false"  
    runat="server">
         <Columns>
        <asp:TemplateField HeaderText="NAME">
        <ItemTemplate>
         <asp:Label ID="lblNursename1" runat="server" Text='<%#Eval("NAME") %>'/>
         </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="PRIMARY_PHONE">
         <ItemTemplate>
          <asp:Label ID="lblNursename1" runat="server" Text='<%#Eval("PRIMARY_PHONE") %>'/>
         </ItemTemplate>
    
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SECONDARY_PHONE">
         <ItemTemplate>
<asp:Label ID="lblNursename1" runat="server" Text='<%#Eval("SECONDARY_PHONE") %>'/>
         </ItemTemplate>
 
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DOB">
         <ItemTemplate>
           <asp:Label ID="lblNursename1" runat="server" Text='<%#Eval("DOB") %>'/>
         </ItemTemplate>
     
        </asp:TemplateField>
        <asp:TemplateField HeaderText="medicalid">
         <ItemTemplate>
         <asp:Label ID="lblNursename1" runat="server" Text='<%#Eval("medicalid") %>'/>
         </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        </asp:GridView>
        
          
</asp:Content>
