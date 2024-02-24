<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ViewFundRequest.aspx.cs" Inherits="ViewFundRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="font-size: large; color: #CC3300">
            <strong>View Fund Request</strong></caption>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: #000000" Width="563px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Start" HeaderText="Start" SortExpression="Start" />
                        <asp:BoundField DataField="End" HeaderText="End" SortExpression="End" />
                        <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                        <asp:BoundField DataField="Fund" HeaderText="Fund" SortExpression="Fund" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Id], [Name], [Title], [Description], [Start], [End], [Master], [Fund] FROM [TBL_RF] WHERE ([Name] = @Name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

