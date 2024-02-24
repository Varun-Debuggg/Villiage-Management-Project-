using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ViewFundRequest : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(Class1.str);
    SqlDataAdapter adpt = new SqlDataAdapter();
    public void msgbox(string s)
    {
        RegisterStartupScript(" ", "<script language=javascript>alert('" + s + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    SqlCommand cmd1 = new SqlCommand("select * from TBL_TEME ", con);
    cmd1.CommandType = CommandType.Text;
    adpt.SelectCommand = cmd1;
    DataTable dt1 = new DataTable();
    try
    {
        adpt.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            TextBox1.Text = dt1.Rows[0][1].ToString();
}
}
        catch (Exception ee)
        {
            msgbox(ee.Message);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
