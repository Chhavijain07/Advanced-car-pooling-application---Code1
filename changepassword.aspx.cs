using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["uname"].ToString();
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
        query = "select uname,pwd from signupdet where uname='" + lbluser.Text + "' and pwd='" + txtold.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            data();
            query = "update signupdet set pwd='" + txtnew.Text + "' where uname='" + lbluser.Text + "' and pwd='" + txtold.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblack.Visible = true;
            lblack.Text = "Password Updated";
        }
        else
        {
            lblack.Text = "Invalid Old Password";
            lblack.Visible = true;
        }
        rd.Close();
        con.Close();
    }
}