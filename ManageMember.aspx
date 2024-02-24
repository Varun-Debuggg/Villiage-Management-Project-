<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ManageMember.aspx.cs" Inherits="ManageMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="text-align: left; font-size: large; color: #FF0000">
            <strong>Manage Member</strong></caption>
        <tr>
            <td style="color: #993399; width: 65px"><b>Member Id</b></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="153px" AppendDataBoundItems="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBox1" ErrorMessage="Enter the Id" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 65px"><b>Name</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="TextBox2" ErrorMessage="Enter the name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 65px"><b>DoR</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ControlToValidate="TextBox3" ErrorMessage="Enter the DoR" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 65px"><b>Mobile</b></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="White" ControlToValidate="TextBox4" ErrorMessage="Enter the month" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 65px"><b></b></td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" Text="Suspend" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button2_Click" Text="Revoke" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 65px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Id] FROM [TBL_REG]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

