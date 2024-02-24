using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class RegisterScheme : System.Web.UI.Page
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedItem.ToString();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into TBL_SCHEMEREG values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','0')", con);
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
    
  