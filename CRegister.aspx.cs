using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class CRegister : System.Web.UI.Page
{
    SqlDataAdapter adpt = new SqlDataAdapter();
  
    public void msgbox(string s)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from TBL_CREG ", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        int c = dt.Rows.Count + 1;
        TextBox1.Text = c.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();
         SqlCommand cmd = new SqlCommand("insert into TBL_CREG values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        cmd.ExecuteNonQuery(); 
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
        con.Close();
    
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = RadioButtonList1.SelectedItem.ToString();
    }
}