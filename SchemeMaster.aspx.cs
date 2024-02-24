using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class SchemeMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from TBL_SCHEMEMASTER ", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        int c = dt.Rows.Count + 1;
        TextBox1.Text = c.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlCommand cmd6 = new SqlCommand("select * from TBL_SCHEMEMASTER where Name='" + TextBox2.Text + "'", con);
        cmd6.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd6;
        DataTable dt6 = new DataTable();
        try
        {
            adpt.Fill(dt6);
            if (dt6.Rows.Count > 0)
            {
                msgbox("Already this item is register");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into TBL_SCHEMEMASTER values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
                cmd.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd;
                DataTable dt = new DataTable();
                try
                {
                    adpt.Fill(dt);
                    msgbox("registered successfully");

                }
                catch (Exception ee)
                {
                    msgbox(ee.Message);
                }
            }
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
    
}