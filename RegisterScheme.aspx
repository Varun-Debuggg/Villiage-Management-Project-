<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RegisterScheme.aspx.cs" Inherits="RegisterScheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #FF0000; font-size: large; text-align: left;">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register Scheme</strong></caption>
        <tr>
            <td style="color: #993399; width: 136px"><b>Select Scheme Master</b></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="20px" Width="153px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="select the id" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px"><b>Scheme Title</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the scheme title" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 136px"><b>Scheme Description</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter description" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">Starting Date</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter the starting date" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">End Date</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="end date" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">Fund Proposed</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="fund proposed" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#990000" ForeColor="#FFCC99" Text="Register Scheme" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Name] FROM [TBL_SCHEMEMASTER]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

