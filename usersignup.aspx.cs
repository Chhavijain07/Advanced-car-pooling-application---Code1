using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class usersignup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,gender;
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
        if (RadioButton1.Checked == true)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        data();
        query = "insert into signupdet(tname,tgender,tage,tphone,temail,toccupation,toccutype,st1,st2,city,state,pinc,uname,pwd)values('" + txtname.Text + "','" + gender + "','" + txtage.Text + "','" + txtphno.Text + "','" + txtemail.Text + "','" + txtoccupation.Text + "','" + txttypeofoccu.Text + "','" + txtstreet1.Text + "','" + txtstreet2.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtpin.Text + "','" + txtuname.Text + "','" + txtpwd.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
        txtage.Text = "";
        txtuname.Text = "";
        txtcity.Text = "";
        txtemail.Text = "";
        txtname.Text = "";
        txtoccupation.Text = "";
        txtphno.Text = "";
        txtpin.Text = "";
        txtstate.Text = "";
        txtstreet1.Text = "";
        txtstreet2.Text = "";
        txttypeofoccu.Text = "";
       
    }
    protected void txtuname_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select uname from signupdet where uname='" + txtuname.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblerr.Visible = true;
            lblerr.Text = "Username Exists";
            Button1.Enabled = false;
        }
        else
        {
            lblerr.Visible = false;
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
}