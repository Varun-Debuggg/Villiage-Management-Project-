using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CizitenLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from TBL_CREG where Login='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {
            adpt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                msgbox("search item found");
                SqlCommand cm = new SqlCommand("update TBL_TEMC set Login='" + TextBox1.Text + "', Password='" + TextBox2.Text + "' where Id= '1' ", con);
                cmd.CommandType = CommandType.Text;
                adpt.SelectCommand = cm;
                DataTable d = new DataTable();

                adpt.Fill(d);
                Response.Redirect("CHome.aspx");
            }
            else
                msgbox("incorrect Password");
        }


        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
}