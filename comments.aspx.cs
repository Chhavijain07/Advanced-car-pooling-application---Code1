using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class comments : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    string rate;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text = Session["uname"].ToString();
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
            rate = "1";
        }
        else if (RadioButton2.Checked == true)
        {
            rate = "2";
        }
        else if (RadioButton3.Checked == true)
        {
            rate = "3";
        }
        else if (RadioButton4.Checked == true)
        {
            rate = "4";
        }
        else if (RadioButton5.Checked == true)
        {
            rate = "5";
        }
        data();
        query = "insert into commentdet(uname,cname,comment,cdate,ctime,crate)values('" + lblusername.Text + "','" + DropDownList1.SelectedItem + "','" + txtcomments.Text + "','" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "','" + rate + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
        txtcomments.Text = "";
       // GridView1.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //GridView1.Visible = true;
        //GridView1.DataBind();
    }
}