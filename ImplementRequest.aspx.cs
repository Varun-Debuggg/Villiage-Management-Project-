using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ImplementRequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.Visible = false;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand cmd1 = new SqlCommand("select * from TBL_APPLYSCHEME where RegId='" + GridView1.SelectedRow.Cells[1].Text + "' ", con);
        cmd1.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd1;
        DataTable dt1 = new DataTable();
        try
        {
            adpt.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {

                TextBox3.Text = dt1.Rows[0][11].ToString();
                TextBox4.Text = dt1.Rows[0][0].ToString();
                TextBox5.Text = dt1.Rows[0][1].ToString();
                TextBox6.Text = dt1.Rows[0][2].ToString();

                SqlCommand cmd12 = new SqlCommand("select * from TBL_CR where Id='" + TextBox3.Text + "' ", con);
                cmd12.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd12;
                DataTable dt12 = new DataTable();
                try
                {
                    adpt.Fill(dt12);
                    if (dt12.Rows.Count > 0)
                    {

                        TextBox1.Text = dt12.Rows[0][1].ToString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd5 = new SqlCommand("select * from TBL_GIVEDONATION where Master='" + TextBox5.Text + "' and Scheme='" + TextBox6.Text + "'", con);
        cmd5.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd5;
        DataTable d16 = new DataTable();
        try
        {
            adpt.Fill(d16);
            if (d16.Rows.Count > 0)
            {
                TextBox7.Text = d16.Rows[0][2].ToString();
                int f = Convert.ToInt32(TextBox2.Text);
                int g = Convert.ToInt32(TextBox7.Text);
                int h = g - f;
                TextBox8.Text = h.ToString();
                SqlCommand cmd12 = new SqlCommand("insert into TBL_APPROVE values ( '" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox1.Text + "')", con);
                cmd12.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd12;
                DataTable dt12 = new DataTable();
                try
                {
                    adpt.Fill(dt12);

                    msgbox(" Fund Approved successfully");


                    SqlCommand cmd0 = new SqlCommand("update TBL_GIVEDONATION set Amount='" + TextBox8.Text + "'where Master='" + TextBox5.Text + "'  and Scheme='" + TextBox6.Text + "'", con);
                    cmd0.CommandType = CommandType.Text;
                    adpt.SelectCommand = cmd0;
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    try
                    {
                        SqlCommand cmd01 = new SqlCommand("update TBL_APPLYSCHEME set Status='2'where RegId='" + TextBox3.Text + "' ", con);
                        cmd01.CommandType = CommandType.Text;
                        adpt.SelectCommand = cmd01;
                        DataTable dt1 = new DataTable();
                        adpt.Fill(dt1);
                        msgbox("Request approved");
                    }
                    catch (Exception ee)
                    {
                        msgbox(ee.Message);
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