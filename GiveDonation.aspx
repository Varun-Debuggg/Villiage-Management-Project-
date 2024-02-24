<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="GiveDonation.aspx.cs" Inherits="GiveDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="color: #CC3300"><strong><span style="font-size: x-large">Give Donation</span></strong></span><table style="width: 100%">
        <tr>
            <td style="font-weight: 700; color: #993399; width: 136px">Select Scheme Master</td>
            <span style="color: #CC3300">
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="19px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="153px" AppendDataBoundItems="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Select Scheme master" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700; color: #993399; width: 136px">Select Scheme</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title" Height="19px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="154px" AppendDataBoundItems="True">
                    <asp:ListItem>select</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                <span style="color: #CC3300">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Select Scheme" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                </span></td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px; font-weight: 700">Amount</td>
            </span>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <span style="color: #CC3300">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter amount" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                </span></td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px; font-weight: 700">
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Donate" BackColor="#CC3300" ForeColor="#FFCCCC" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px; font-weight: 700">
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px; font-weight: 700">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Name] FROM [TBL_SCHEMEMASTER]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Title] FROM [TBL_SCHEMEREG] WHERE ([Scheme] = @Scheme)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Scheme" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px; font-weight: 700">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

