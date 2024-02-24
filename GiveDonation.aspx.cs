using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class GiveDonation : System.Web.UI.Page
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
        SqlCommand cmd1 = new SqlCommand("select * from TBL_TEME ", con);
        cmd1.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd1;
        DataTable dt1 = new DataTable();
        try
        {
            adpt.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                TextBox6.Text = dt1.Rows[0][1].ToString();
            }
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList2.SelectedItem.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand cmd5 = new SqlCommand("select * from TBL_GIVEDONATION where Master='" + TextBox1.Text + "' and Scheme='" + TextBox2.Text + "'", con);
        cmd5.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd5;
        DataTable d16 = new DataTable();
        try
        {
            adpt.Fill(d16);
            if (d16.Rows.Count > 0)
            {
                TextBox4.Text = d16.Rows[0][2].ToString();
                int f = Convert.ToInt32(TextBox4.Text);
                int g = Convert.ToInt32(TextBox3.Text);
                int h = g + f;
                TextBox5.Text = h.ToString();
                SqlCommand cmd0 = new SqlCommand("update TBL_GIVEDONATION set Amount='" + TextBox5.Text + "'where Master='" + TextBox1.Text + "'  and Scheme='" + TextBox2.Text + "'", con);
                cmd0.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd0;
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                msgbox(" Fund Donated successfully");
               
            }
             

            else
            {
                SqlCommand cmd12 = new SqlCommand("insert into TBL_GIVEDONATION values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
                cmd12.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd12;
                DataTable dt12 = new DataTable();

                adpt.Fill(dt12);
                msgbox("Fund Donated");
               
            }
            SqlCommand cmd15 = new SqlCommand("select * from TBL_GIVED where Master='" + TextBox1.Text + "' and Scheme='" + TextBox2.Text + "' and Name='" + TextBox6.Text + "'", con);
            cmd15.CommandType = CommandType.Text;
            adpt.SelectCommand = cmd15;
            DataTable d116 = new DataTable();
            try
            {
                adpt.Fill(d116);
                if (d116.Rows.Count > 0)
                {
                    TextBox4.Text = d116.Rows[0][2].ToString();
                    int f = Convert.ToInt32(TextBox4.Text);
                    int g = Convert.ToInt32(TextBox3.Text);
                    int h = g + f;
                    TextBox5.Text = h.ToString();
                    SqlCommand cmd0 = new SqlCommand("update TBL_GIVED set Amount='" + TextBox5.Text + "'where Master='" + TextBox1.Text + "'  and Scheme='" + TextBox2.Text + "' and Name='" + TextBox6.Text + "'", con);
                    cmd0.CommandType = CommandType.Text;
                    adpt.SelectCommand = cmd0;
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    msgbox(" Fund Donated successfully");
                }
                else
                {
                    SqlCommand cmd121 = new SqlCommand("insert into TBL_GIVED values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "')", con);
                    cmd121.CommandType = CommandType.Text;
                    adpt.SelectCommand = cmd121;
                    DataTable dt121 = new DataTable();

                    adpt.Fill(dt121);
                    msgbox("Fund Donated");
                }

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
                   


               
       
