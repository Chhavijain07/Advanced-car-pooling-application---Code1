using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class manageprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["uname"].ToString();
        if (!Page.IsPostBack)
        {
            data();
            query = "select * from signupdet where uname='" + lbluser.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lblname.Text = rd[1].ToString();
                lblgender.Text = rd[2].ToString();
                lblage.Text = rd[3].ToString();
                txtphone.Text = rd[4].ToString();
                txtemail.Text = rd[5].ToString();
                txtoccupation.Text = rd[6].ToString();
                txttype.Text = rd[7].ToString();
                txtst1.Text = rd[8].ToString();
                txtst2.Text = rd[9].ToString();
                txtcity.Text = rd[10].ToString();
                txtstate.Text = rd[11].ToString();
                txtpincode.Text = rd[12].ToString();
            }
            rd.Close();
            con.Close();
        }
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
            query = "update signupdet set tphone='" + txtphone.Text + "',temail='" + txtemail.Text + "',toccupation='" + txtoccupation.Text + "',toccutype='" + txttype.Text + "',st1='" + txtst1.Text + "',st2='" + txtst2.Text + "',city='" + txtcity.Text + "',state='" + txtstate.Text + "',pinc='" + txtpincode.Text + "' where uname='" + lbluser.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblack.Visible = true;
        
    }
}