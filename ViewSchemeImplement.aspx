<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ViewSchemeImplement.aspx.cs" Inherits="ViewSchemeImplement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #CC3300; font-size: large">
            <strong>View Sccheme Implementation</strong></caption>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: #000000" Width="679px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [TBL_APPROVE]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

