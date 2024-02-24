using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ConfirmRequest : System.Web.UI.Page
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

        SqlCommand cmd1 = new SqlCommand("select * from TBL_APPLYSCHEME where RegId='" + GridView1.SelectedRow.Cells[12].Text + "' ", con);
        cmd1.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd1;
        DataTable dt1 = new DataTable();
        try
        {
            adpt.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                TextBox1.Text = dt1.Rows[0][0].ToString();
                TextBox2.Text = dt1.Rows[0][1].ToString();
                TextBox3.Text = dt1.Rows[0][2].ToString();
                TextBox4.Text = dt1.Rows[0][7].ToString();
                TextBox5.Text = dt1.Rows[0][8].ToString();
                TextBox6.Text = dt1.Rows[0][9].ToString();
                TextBox7.Text = dt1.Rows[0][10].ToString();
                TextBox10.Text = dt1.Rows[0][11].ToString();
                SqlCommand cmd = new SqlCommand("select * from TBL_GIVEDONATIOn where Master='" + TextBox2.Text + "' and Scheme='" + TextBox3.Text + "' ", con);
                cmd.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd;
                DataTable dt = new DataTable();
                try
                {
                    adpt.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {

                        TextBox8.Text = dt.Rows[0][2].ToString();


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
    protected void Button2_Click(object sender, EventArgs e)
    {
        string filename = TextBox5.Text;
        Response.ContentType = "application /octet-stream";
        Response.AppendHeader("Content-disposition", "attachment;filename=" + filename);

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string filename = TextBox6.Text;
        Response.ContentType = "application /octet-stream";
        Response.AppendHeader("Content-disposition", "attachment;filename=" + filename);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string filename = TextBox7.Text;
        Response.ContentType = "application /octet-stream";
        Response.AppendHeader("Content-disposition", "attachment;filename=" + filename);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd0 = new SqlCommand("update TBL_APPLYSCHEME set Status='1'where  RegId='" + TextBox10.Text + "'", con);
        cmd0.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd0;
        DataTable dt = new DataTable();
        try
        {
            adpt.Fill(dt);
            msgbox(" Confirm request successfully");

            SqlCommand cmd12 = new SqlCommand("insert into TBL_CR values ( '" + TextBox10.Text + "','" + TextBox9.Text + "')", con);
            cmd12.CommandType = CommandType.Text;
            adpt.SelectCommand = cmd12;
            DataTable dt12 = new DataTable();
            try
            {
                adpt.Fill(dt12);
                msgbox("Confirm request");
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