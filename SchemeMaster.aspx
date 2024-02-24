<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SchemeMaster.aspx.cs" Inherits="SchemeMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #CC3300; font-size: x-large; text-align: left">
            <strong>&nbsp;&nbsp;&nbsp;Scheme Master</strong></caption>
        <tr>
            <td style="width: 128px; color: #CC0099">Scheme.Master Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter the id" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 128px; color: #CC0099">Scheme Master Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter the name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 128px; color: #CC0099">Description</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="149px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter the description" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 128px; color: #CC0099">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCFF" OnClick="Button1_Click" Text="Register" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
</asp:Content>

