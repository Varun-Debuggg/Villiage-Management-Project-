using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Submit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from TBL_SUBMIT ", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        int c = dt.Rows.Count + 1;
        TextBox1.Text = c.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into TBL_SUBMIT values ( '" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {
            adpt.Fill(dt);
            msgbox("Submit successfully");

        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    
    }
}