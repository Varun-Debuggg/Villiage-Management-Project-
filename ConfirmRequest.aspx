<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ConfirmRequest.aspx.cs" Inherits="ConfirmRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #CC3300; font-size: large; text-align: left">
            <p>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Request</strong></p>
        </caption>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" Text="View Pending Request" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="color: #000000" Width="391px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:BoundField DataField="RegId" HeaderText="RegId" SortExpression="RegId" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px; font-weight: 700">Register ID</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px"><b>Name</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px"><b>Master Scheme</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px"><b>Scheme Title</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; height: 22px; width: 134px"><b>Income</b></td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px"><b>IDproof file name</b></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Open" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px"><b>Aadher Card file Name</b></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Open" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px"><b>Other Document name</b></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Open" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 134px; font-weight: 700">Amount Available</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 134px; font-weight: 700; color: #993399">Fund Allocate</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button5_Click" Text="Confirm" />
            </td>
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Name], [Master], [Scheme], [Description], [Start], [End], [Fund], [Income], [IdProof], [Aadhar], [Document], [RegId] FROM [TBL_APPLYSCHEME] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 134px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

