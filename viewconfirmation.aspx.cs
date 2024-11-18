using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class viewconfirmation : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,name;
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
        Panel1.Visible = true;
        name = GridView1.SelectedRow.Cells[0].Text.ToString();
        data();
        query = "select * from requestdet where tname='" + name + "' and touname='" + lbluser.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblvehicledetails.Text = rd[3].ToString() + " - " + rd[4].ToString();
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
    }
}