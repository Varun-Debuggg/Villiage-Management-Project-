using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MChangePass : System.Web.UI.Page
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
         SqlCommand cmd1 = new SqlCommand("select * from TBL_TEME where Login='" + TextBox1.Text + "'", con);
        cmd1.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd1;
        DataTable d = new DataTable();
        try
        {
            adpt.Fill(d);
            if (d.Rows.Count > 0)
            {

                SqlCommand cmd = new SqlCommand("update TBL_REG set Password='" + TextBox3.Text + "'where Login='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "' ", con);
                cmd.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd;
                DataTable dt = new DataTable();
                try
                {
                    adpt.Fill(dt);
                    msgbox("Update successfully");

                }
                catch (Exception ee)
                {
                    msgbox(ee.Message);
                }

            }
            else
            {
                msgbox("Incorrect Identification");
            }
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
}