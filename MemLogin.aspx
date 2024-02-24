<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemLogin.aspx.cs" Inherits="MemLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" >
    <caption style="font-weight: 700; text-align: left; font-size: large; color: #FF0000;">
        <p>
            Member Login</p>
    </caption>
    <tr>
        <td style="font-weight: 700; width: 83px; color: #990099;">Login Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter the login name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; width: 83px; color: #990099;">Password</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter the oassword" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; width: 83px; color: #990099;">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#993300" ForeColor="#FFCC99" OnClick="Button1_Click" style="height: 26px" />
        </td>
    </tr>
</table>
</asp:Content>

