<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewDonation1.aspx.cs" Inherits="ViewDonation1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="font-size: large; color: #CC3300">
            <strong>View Donation</strong></caption>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="633px" style="color: #000000">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                        <asp:BoundField DataField="Scheme" HeaderText="Scheme" SortExpression="Scheme" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Name], [Master], [Scheme], [Amount] FROM [TBL_GIVED]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

