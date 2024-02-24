using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class RequestFund : System.Web.UI.Page
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList2.SelectedItem.ToString();
        SqlCommand cmd12 = new SqlCommand("select * from TBL_SCHEMEREG where Scheme='" + TextBox1.Text + "' and Title='" + TextBox2.Text + "' ", con);
        cmd12.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd12;
        DataTable dt12 = new DataTable();
        try
        {
            adpt.Fill(dt12);
            if (dt12.Rows.Count > 0)
            {
                TextBox3.Text = dt12.Rows[0][2].ToString();
                TextBox4.Text = dt12.Rows[0][3].ToString();
                TextBox5.Text = dt12.Rows[0][4].ToString();
                TextBox6.Text = dt12.Rows[0][5].ToString();
            }
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedItem.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand cmd12 = new SqlCommand("select * from TBL_RF where Name='" + TextBox8.Text + "' and Id='" + TextBox7.Text + "' and Master='" + TextBox1.Text + "' and Title='" + TextBox2.Text + "' and Status='0'", con);
        cmd12.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd12;
        DataTable dt12 = new DataTable();
        try
        {

            adpt.Fill(dt12);
            if (dt12.Rows.Count > 0)
            {
                msgbox("Already  Request is applied for this scheme");
            }
            else
            {

                SqlCommand cmd = new SqlCommand("insert into TBL_RF values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','0')", con);
                cmd.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd;
                DataTable dt = new DataTable();
                try
                {
                    adpt.Fill(dt);
                    msgbox("Request Sent successfully");

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
 protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
{
    TextBox7.Text = DropDownList3.SelectedItem.ToString();
    SqlCommand cmd1 = new SqlCommand("select * from TBL_REG where Id='" + TextBox7.Text + "' ", con);
    cmd1.CommandType = CommandType.Text;
    adpt.SelectCommand = cmd1;
    DataTable dt1 = new DataTable();
    try
    {
        adpt.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            TextBox8.Text = dt1.Rows[0][10].ToString();
}
}
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
  
}