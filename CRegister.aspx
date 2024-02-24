<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CRegister.aspx.cs" Inherits="CRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="font-size: large; color: #FF0000">
            <strong>Ciziten Registration</strong></caption>
        <tr>
            <td style="color: #993399"><b>Id</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBox1" ErrorMessage="Enter the Id" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Name</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="TextBox2" ErrorMessage="Enter the name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Sex</b></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Address</b></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ControlToValidate="TextBox4" ErrorMessage="Enter the Address" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>DoB</b></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="White" ControlToValidate="TextBox5" ErrorMessage="Enter the DoB" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid date" ForeColor="#FF3300" MaximumValue="1/7/2000" MinimumValue="1/7/1950" Type="Date">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Mobile No</b></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="White" ControlToValidate="TextBox6" ErrorMessage="Enter the Mobile" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid Phone no" ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700;">Aadhar No</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="White" ControlToValidate="TextBox7" ErrorMessage="Enter the month" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid aadhar no" ForeColor="Red" ValidationExpression="\d{12}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700"><b>Email</b></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BackColor="White" ControlToValidate="TextBox8" ErrorMessage="Enter the Aadhar" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Login Name</b></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BackColor="White" ControlToValidate="TextBox9" ErrorMessage="Enter the email" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Password</b></td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" BackColor="White" ControlToValidate="TextBox10" ErrorMessage="Enter the DoR" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox11" ErrorMessage="Enter the paasword correctly" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399"><b>Confirm Password</b></td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" BackColor="White" ControlToValidate="TextBox11" ErrorMessage="Enter the login" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" style="font-weight: bold; color: #993399" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" BackColor="White" ControlToValidate="TextBox3" ErrorMessage="Enter the sex" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" Text="Register" Height="26px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

