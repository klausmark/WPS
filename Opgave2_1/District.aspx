<%@ Page Title="District" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="District.aspx.cs" Inherits="District" %>
<asp:Content ID="District" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="District" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="District" HeaderText="District" ReadOnly="True" SortExpression="District" />
            <asp:BoundField DataField="DistrictDescription" HeaderText="Description of District" SortExpression="DistrictDescription" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WalthersWinesConnectionString1 %>" DeleteCommand="DELETE FROM [DISTRICT_TABLE] WHERE [District] = @District" InsertCommand="INSERT INTO [DISTRICT_TABLE] ([District], [DistrictDescription]) VALUES (@District, @DistrictDescription)" ProviderName="<%$ ConnectionStrings:WalthersWinesConnectionString1.ProviderName %>" SelectCommand="SELECT [District], [DistrictDescription] FROM [DISTRICT_TABLE]" UpdateCommand="UPDATE [DISTRICT_TABLE] SET [DistrictDescription] = @DistrictDescription WHERE [District] = @District">
        <DeleteParameters>
            <asp:Parameter Name="District" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="District" Type="String" />
            <asp:Parameter Name="DistrictDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DistrictDescription" Type="String" />
            <asp:Parameter Name="District" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
