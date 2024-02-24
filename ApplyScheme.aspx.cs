using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ApplyScheme : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
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
            }
        }
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList1.SelectedItem.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand("select * from TBL_APPLYSCHEME ", con);
        cmd1.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd1;
        DataTable dt1 = new DataTable();
        adpt.Fill(dt1);
        int c = dt1.Rows.Count + 1001;
        TextBox12.Text = c.ToString();
       
        SqlCommand cmd12 = new SqlCommand("select * from TBL_APPLYSCHEME where Name='"+TextBox1.Text+"' and Master='"+TextBox2.Text+"' and Scheme='"+TextBox3.Text+"' and Start='"+TextBox5.Text+"' ", con);
        cmd12.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd12;
        DataTable dt12 = new DataTable();
        try
        {

            adpt.Fill(dt12);
            if (dt12.Rows.Count > 0)
            {
                msgbox("Already applied for this scheme");
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("~\\File\\" + FileUpload1.FileName));
                FileUpload2.SaveAs(Server.MapPath("~\\File\\" + FileUpload2.FileName));
                FileUpload3.SaveAs(Server.MapPath("~\\File\\" + FileUpload3.FileName));
                TextBox9.Text = FileUpload1.FileName;
                TextBox10.Text = FileUpload2.FileName;
                TextBox11.Text = FileUpload3.FileName;
                SqlCommand cmd = new SqlCommand("insert into TBL_APPLYSCHEME values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','0')", con);
                cmd.CommandType = CommandType.Text;
                adpt.SelectCommand = cmd;
                DataTable dt = new DataTable();
                try
                {
                    adpt.Fill(dt);
                    Label1.Visible = true;
                    Label1.Text ="Your Register Number is "+ TextBox12.Text;
                    msgbox("Registered successfully");

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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = DropDownList2.SelectedItem.ToString();
         SqlCommand cmd12 = new SqlCommand("select * from TBL_SCHEMEREG where Scheme='"+TextBox2.Text+"' and Title='"+TextBox3.Text+"' ", con);
        cmd12.CommandType = CommandType.Text;
        adpt.SelectCommand = cmd12;
        DataTable dt12 = new DataTable();
        try
        {
            adpt.Fill(dt12);
            if (dt12.Rows.Count > 0)
            {
                TextBox4.Text = dt12.Rows[0][2].ToString();
                TextBox5.Text = dt12.Rows[0][3].ToString();
                TextBox6.Text = dt12.Rows[0][4].ToString();
                TextBox7.Text = dt12.Rows[0][5].ToString();
            }
        }
        catch(Exception ee)
        {
            msgbox(ee.Message);
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}