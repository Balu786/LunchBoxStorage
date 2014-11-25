<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="LunchBoxDataStorageSystem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1339px">
        <Columns>
            <asp:BoundField DataField="TherpyType" HeaderText="TherpyType" 
                SortExpression="TherpyType" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="medicareweek" HeaderText="medicareweek" 
                SortExpression="medicareweek" />
            <asp:BoundField DataField="Referingagency" HeaderText="Referingagency" 
                SortExpression="Referingagency" />
            <asp:BoundField DataField="Contctperson" HeaderText="Contctperson" 
                SortExpression="Contctperson" />
            <asp:BoundField DataField="Nursename" HeaderText="Nursename" 
                SortExpression="Nursename" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="patientnamr" HeaderText="patientnamr" 
                SortExpression="patientnamr" />
            <asp:BoundField DataField="patPhone" HeaderText="patPhone" 
                SortExpression="patPhone" />
            <asp:BoundField DataField="pataddress" HeaderText="pataddress" 
                SortExpression="pataddress" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Familycontacr" HeaderText="Familycontacr" 
                SortExpression="Familycontacr" />
            <asp:BoundField DataField="FmPhone" HeaderText="FmPhone" 
                SortExpression="FmPhone" />
            <asp:BoundField DataField="MediINsuranceName" HeaderText="MediINsuranceName" 
                SortExpression="MediINsuranceName" />
            <asp:BoundField DataField="Physician" HeaderText="Physician" 
                SortExpression="Physician" />
            <asp:BoundField DataField="mediPhone" HeaderText="mediPhone" 
                SortExpression="mediPhone" />
            <asp:BoundField DataField="AgDatevltncompltedby" 
                HeaderText="AgDatevltncompltedby" SortExpression="AgDatevltncompltedby" />
            <asp:BoundField DataField="dfvisitcomby" HeaderText="dfvisitcomby" 
                SortExpression="dfvisitcomby" />
            <asp:BoundField DataField="noofvisits" HeaderText="noofvisits" 
                SortExpression="noofvisits" />
            <asp:BoundField DataField="callagncynewordr" HeaderText="callagncynewordr" 
                SortExpression="callagncynewordr" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
