<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="MChangePass.aspx.cs" Inherits="MChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #FF0000; text-align: left; font-size: large">
            <strong>&nbsp;Chane Password</strong></caption>
        <tr>
            <td style="color: #993399"><b>Login Name</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the name" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Old Password</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the Password" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>New Password</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="enter the same password" ForeColor="Red">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the password" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Confirm Password</b></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter the Password" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCC99" OnClick="Button1_Click" Text="Change" />
            </td>
        </tr>
    </table>
</asp:Content>

