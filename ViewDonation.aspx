<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ViewDonation.aspx.cs" Inherits="ViewDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="font-size: large; color: #CC3300">
            <strong>View Donation </strong>
        </caption>
        <tr style="color: #993399">
            <td style="font-weight: 700">Member Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: #000000" Width="520px">
                    <Columns>
                        <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                        <asp:BoundField DataField="Scheme" HeaderText="Scheme" SortExpression="Scheme" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Master], [Scheme], [Amount] FROM [TBL_GIVED] WHERE ([Name] = @Name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

