using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CheckStatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Text = DateTime.Now.ToShortDateString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from TBL_TEMC ", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {
            adpt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0][1].ToString();
                SqlCommand cmd1 = new SqlCommand("select * from TBL_APPLYSCHEME where Name='"+TextBox1.Text+"' ", con);
                cmd1.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd1;
                DataTable dt1 = new DataTable();
                try
                {
                    adpt.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        TextBox2.Text = dt1.Rows[0][12].ToString();
                        TextBox4.Text = dt1.Rows[0][5].ToString();
                        DateTime d1 = Convert.ToDateTime(TextBox4.Text);
                        DateTime d2 = Convert.ToDateTime(TextBox3.Text);
                        TimeSpan d = d1 - d2;
                        TextBox5.Text = d.ToString();
                        int f = Convert.ToInt32(d.TotalDays);
                        int a = Convert.ToInt32(TextBox2.Text);
                       
                        if (a == 2)
                        {
                            Label1.Text = "Request is approved";
                        }
                        else if (f <= 0)
                        {
                            Label1.Text = "Sorry time Over";
                        }
                        else if (a == 0)
                        {
                            Label1.Text = "Waiting List";
                        }
                        else if (a == 1)
                        {
                            Label1.Text = "Short Listed";
                        }
                        
                    }
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