<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewRequest.aspx.cs" Inherits="ViewRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <caption style="font-size: large; color: #CC3300">
        View Request</caption>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: #000000" Width="680px">
                <Columns>
                    <asp:BoundField DataField="RegId" HeaderText="RegId" SortExpression="RegId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                    <asp:BoundField DataField="Scheme" HeaderText="Scheme" SortExpression="Scheme" />
                    <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [RegId], [Name], [Master], [Scheme], [Income] FROM [TBL_APPLYSCHEME] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

