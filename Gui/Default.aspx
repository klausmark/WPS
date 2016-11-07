<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gui.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView DataKeyNames="Id" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"  />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditWine.aspx?Id={0}" DataTextField="WineName" HeaderText="WineName" SortExpression="WineName" />
            <asp:BoundField DataField="WineDescription" HeaderText="WineDescription" SortExpression="WineDescription" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteWine" InsertMethod="AddWine" SelectMethod="GetAllWines" TypeName="Gui.Models.WineDataRetriver" UpdateMethod="UpdateWine">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="WineName" Type="String" />
            <asp:Parameter Name="WineDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="wineName" Type="String" />
            <asp:Parameter Name="wineDescription" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
