using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ManageMember : System.Web.UI.Page
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update TBL_REG set Status='0' where Id='" + TextBox1.Text + "'", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {

            adpt.Fill(dt);
            msgbox("Member is revoked");
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand cmd = new SqlCommand("Update TBL_REG set Status='1' where Id='" + TextBox1.Text + "'", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {

            adpt.Fill(dt);
            msgbox("Member is suspended");
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    
     
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedItem.ToString();
   SqlCommand cmd = new SqlCommand("select * from TBL_REG where Id='" + TextBox1.Text + "'", con);
        cmd.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd;
        DataTable dt = new DataTable();
        try
        {
            adpt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                TextBox2.Text = dt.Rows[0][1].ToString();
                TextBox3.Text = dt.Rows[0][9].ToString();
                TextBox4.Text = dt.Rows[0][5].ToString();

            }
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
}