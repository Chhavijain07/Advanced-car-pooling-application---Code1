using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class index : System.Web.UI.Page
{  
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "select uname,pwd from signupdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Session["uname"] = txtusername.Text.ToString();
            Response.Redirect("empty.aspx");
        }
        else
        {
            lblack.Visible = true;
        }
        rd.Close();
        con.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into placedet(placename)values('" + txtplace.Text.ToUpper() + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtplace.Text = "";
        GridView1.DataBind();
    }
}