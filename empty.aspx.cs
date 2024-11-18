using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class empty : System.Web.UI.Page
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblack.Visible = false;
        Panel1.Visible = true;
        lblreq.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
        data();
        query = "select * from requestdet where tname='" + lblreq.Text + "' and touname='" + lbluser.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblvehicledetails.Text = rd[3].ToString() + " - " +  rd[4].ToString();
            lblfueltype.Text = rd[5].ToString();
            lblseater.Text = rd[6].ToString();
            lbltravelfrom.Text = rd[7].ToString();
            lbltravelvia.Text = rd[8].ToString();
            lbltravelto.Text = rd[9].ToString();
            lbltraveldate.Text = rd[10].ToString();
            lbltraveltime.Text = rd[11].ToString() + " To " + rd[12].ToString();
        }
        rd.Close();
        con.Close();
        GridView2.DataBind();
        GridView2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "update requestdet set status='YES' where tname='" + lblreq.Text + "' and touname='" + lbluser.Text + "' and tradate='" + lbltraveldate.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        GridView2.Visible = false;
        lblack.Visible = true;
    }
}