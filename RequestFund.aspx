<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RequestFund.aspx.cs" Inherits="RequestFund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #FF0000; font-size: large">
            <strong style="text-align: left">Request Fund</strong></caption>
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
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title" Height="20px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="153px" AppendDataBoundItems="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the scheme title" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="select the iTitle" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter the starting date" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">End Date</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
            <td style="color: #993399; font-weight: 700; width: 136px">Member Id</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Id" DataValueField="Id" Height="19px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="154px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="select the id" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">
                <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#990000" ForeColor="#FFCC99" Text="Register Scheme" OnClick="Button1_Click" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Name] FROM [TBL_SCHEMEMASTER]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Title] FROM [TBL_SCHEMEREG] WHERE ([Scheme] = @Scheme)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Scheme" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: 700; width: 136px">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Id] FROM [TBL_REG]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

