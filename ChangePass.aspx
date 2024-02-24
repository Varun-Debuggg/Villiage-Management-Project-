<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <caption style="font-size: large; color: #FF0000; text-align: left;">
        <strong>Change Password</strong></caption>
    <tr>
        <td style="color: #990099; height: 22px; width: 108px"><b>Login Name</b></td>
        <td style="height: 22px">
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="140px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the name" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #990099; width: 108px"><b>Old Password</b></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the old password" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #990099; height: 22px; width: 108px"><b>New Password</b></td>
        <td style="height: 22px">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the new password" ForeColor="#FF6666">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="enter the same password" ForeColor="Red">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1" style="height: 22px; width: 108px; font-weight: 700;">Confirm Password</td>
        <td style="height: 22px">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Re-enter the correct password" ForeColor="#FF3300">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 108px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" style="height: 26px" Text="Change" />
            &nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td style="width: 108px">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [TBL_ADMIN]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

