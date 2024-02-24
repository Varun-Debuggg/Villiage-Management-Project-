<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewFundAmount.aspx.cs" Inherits="ViewFundAmount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <caption style="color: #CC3300; font-size: large">
        <strong>View Fund Amount</strong></caption>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: #000000" Width="708px">
                <Columns>
                    <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                    <asp:BoundField DataField="Scheme" HeaderText="Scheme" SortExpression="Scheme" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [TBL_GIVEDONATION]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

