<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ImplementRequest.aspx.cs" Inherits="ImplementRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="font-size: large; color: #CC3300">
            <strong>Implement Request</strong></caption>
        <tr>
            <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" style="font-weight: bold" Text="View Confirmed Request" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="color: #000000" Width="574px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="RegId" HeaderText="RegId" SortExpression="RegId" />
                        <asp:BoundField DataField="Document" HeaderText="Document" SortExpression="Document" />
                        <asp:BoundField DataField="Aadhar" HeaderText="Aadhar" SortExpression="Aadhar" />
                        <asp:BoundField DataField="IdProof" HeaderText="IdProof" SortExpression="IdProof" />
                        <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
                        <asp:BoundField DataField="Fund" HeaderText="Fund" SortExpression="Fund" />
                        <asp:BoundField DataField="End" HeaderText="End" SortExpression="End" />
                        <asp:BoundField DataField="Start" HeaderText="Start" SortExpression="Start" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Scheme" HeaderText="Scheme" SortExpression="Scheme" />
                        <asp:BoundField DataField="Master" HeaderText="Master" SortExpression="Master" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; color: #993399; width: 139px">Register Id</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; color: #993399; width: 139px">Name</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; color: #993399; width: 139px">Master</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; color: #993399; width: 139px; height: 26px;">Scheme</td>
            <td style="height: 26px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; color: #993399; width: 139px">Amount Allocated</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 139px"><b style="color: #993399">Amount Finally Allocated</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 139px"><b></b></td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button2_Click" Text="Approve" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [RegId], [Document], [Aadhar], [IdProof], [Income], [Fund], [End], [Start], [Description], [Scheme], [Master], [Name] FROM [TBL_APPLYSCHEME] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

