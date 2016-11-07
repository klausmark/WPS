<%@ Page Title="Title" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Wines.aspx.cs"  Inherits="Opgave2_1.AddEditWine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="WineNo" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="WineNo" HeaderText="WineNo" InsertVisible="False" ReadOnly="True" SortExpression="WineNo" />
            <asp:BoundField DataField="WineDescription" HeaderText="WineDescription" SortExpression="WineDescription" />
            <asp:BoundField DataField="WineName" HeaderText="WineName" SortExpression="WineName" />
            <asp:BoundField DataField="Supplier" HeaderText="Supplier" SortExpression="Supplier" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [WineNo], [WineDescription], [WineName], [Supplier], [Country], [District], [Year], [price], [Picture] FROM [WINE] WHERE ([WineNo] = @WineNo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="WineNo" QueryStringField="WineNo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
