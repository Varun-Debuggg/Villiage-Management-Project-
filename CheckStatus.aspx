<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="CheckStatus.aspx.cs" Inherits="CheckStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #CC3300; font-size: large; text-align: left">
            <p>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check Status</strong></p>
        </caption>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" Text="Check Status" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="color: #000000; margin-bottom: 10px" Width="736px">
                    <Columns>
                        <asp:BoundField DataField="RegId" HeaderText="RegId" SortExpression="RegId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                        <asp:BoundField DataField="Scheme" HeaderText="Scheme" SortExpression="Scheme" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Start" HeaderText="Start" SortExpression="Start" />
                        <asp:BoundField DataField="End" HeaderText="End" SortExpression="End" />
                        <asp:BoundField DataField="Fund" HeaderText="Fund" SortExpression="Fund" />
                        <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
                        <asp:BoundField DataField="IdProof" HeaderText="IdProof" SortExpression="IdProof" />
                        <asp:BoundField DataField="Aadhar" HeaderText="Aadhar" SortExpression="Aadhar" />
                        <asp:BoundField DataField="Document" HeaderText="Document" SortExpression="Document" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [RegId], [Name], [Master], [Scheme], [Description], [Start], [End], [Fund], [Income], [IdProof], [Aadhar], [Document] FROM [TBL_APPLYSCHEME] WHERE ([Name] = @Name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

