<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Submit.aspx.cs" Inherits="Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="font-size: large; color: #CC3300">
            <strong>Submit Feedback</strong></caption>
        <tr>
            <td style="color: #993399"><b>FeedBack Id</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter the Id" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Description</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter the Description" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
    </table>
</asp:Content>

