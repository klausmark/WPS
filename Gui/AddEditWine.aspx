<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AddEditWine.aspx.cs" Inherits="Gui.AddEditWine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="WineName" HeaderText="WineName" SortExpression="WineName" />
            <asp:BoundField DataField="WineDescription" HeaderText="WineDescription" SortExpression="WineDescription" />
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="AddWine" SelectMethod="GetWine" TypeName="Gui.Models.WineDataRetriver" UpdateMethod="UpdateWine">
        <InsertParameters>
            <asp:Parameter Name="WineName" Type="String" />
            <asp:Parameter Name="WineDescription" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="wineName" Type="String" />
            <asp:Parameter Name="wineDescription" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
