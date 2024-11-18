using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class managetravel : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, usname, tfrom,tvia, tto, tdate, fromtime, totime;
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        usname = GridView1.SelectedRow.Cells[0].Text.ToString();
        tdate = GridView1.SelectedRow.Cells[1].Text.ToString();
        fromtime = GridView1.SelectedRow.Cells[2].Text.ToString();
        totime = GridView1.SelectedRow.Cells[3].Text.ToString();
        tfrom = GridView1.SelectedRow.Cells[4].Text.ToString();
        tvia = GridView1.SelectedRow.Cells[5].Text.ToString();
        tto = GridView1.SelectedRow.Cells[6].Text.ToString();
        data();
        query = "delete from traveldet where uname='" + usname + "' and tdate='" + tdate + "' and tfromtime='" + fromtime + "' and ttotime='" + totime + "' and tfrom='" + tfrom + "' and tto='" + tto + "' and tvia='" + tvia + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "delete from requestdet where touname='" + usname + "' and tradate='" + tdate + "' and tratimefrom='" + fromtime + "' and tratimeto='" + totime + "' and trafrom='" + tfrom + "' and trato='" + tto + "' and travia='" + tvia + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
}