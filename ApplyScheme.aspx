<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="ApplyScheme.aspx.cs" Inherits="ApplyScheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <caption style="color: #CC3300; font-size: large; text-align: left">
            <strong>Apply the Scheme</strong></caption>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px">Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Select Scheme Master</b></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="19px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="153px" AppendDataBoundItems="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Select Scheme</b></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title" Height="20px" Width="153px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AppendDataBoundItems="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Description</b></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Start Date</b></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>End Date</b></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Fund Proposed</b></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Income</b></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>ID Proof</b></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="154px" />
            &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Aadhar Card</b></td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" Width="154px" />
            &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; font-weight: bold; width: 163px"><b>Upload Further Document</b></td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" Height="25px" Width="154px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 163px"><b></b>
                <asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="#FFCCCC" OnClick="Button1_Click" Text="Apply" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 163px">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-weight: 700; font-size: medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="color: #993399; width: 163px"><b></b>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Name] FROM [TBL_SCHEMEMASTER]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #993399; width: 163px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Title] FROM [TBL_SCHEMEREG] WHERE ([Scheme] = @Scheme)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="Scheme" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

