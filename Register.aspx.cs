using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox10.Text = DateTime.Now.ToShortDateString();
        SqlCommand cmd = new SqlCommand("select * from TBL_REG ", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        int c = dt.Rows.Count + 1;
        TextBox1.Text = c.ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = RadioButtonList1.SelectedItem.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into TBL_REG values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "' ,'" + TextBox12.Text + "','0')", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {
            adpt.Fill(dt);
            msgbox("Registered successfully");

        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
}