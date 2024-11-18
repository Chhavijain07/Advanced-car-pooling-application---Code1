using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class createtravel : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,fuel,seater,memebers,fromtime,totime;
    string name, gender, age,usname;
    protected void Page_Load(object sender, EventArgs e)
    {
        usname = Session["uname"].ToString();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        usname = Session["uname"].ToString();

        data();
        query = "select tname,tgender,tage from signupdet where uname='" + usname + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            name = rd[0].ToString();
            gender = rd[1].ToString();
            age = rd[2].ToString();
        }
        rd.Close();
        con.Close();
        if (radiopetrol.Checked == true)
        {
            fuel = "Petrol";
        }
        else
        {
            fuel = "Diesel";
        }
        if (radiofour.Checked == true)
        {
            seater = "4";
        }
        else
        {
            seater = "8";
        }
        if (radiom1.Checked == true)
        {
            memebers = "1";
        }
        else if (radiom2.Checked == true)
        {
            memebers = "2";
        }
        else if (radiom3.Checked == true)
        {
            memebers = "3";
        }
        else if (radiom4.Checked == true)
        {
            memebers = "4";
        }
        else if (radiom5.Checked == true)
        {
            memebers = "5";
        }
        else if (radiom6.Checked == true)
        {
            memebers = "6";
        }
        else if (radiom7.Checked == true)
        {
            memebers = "7";
        }

        fromtime = droptimefrom.SelectedItem.Text + dropamfrom.SelectedItem.Text;
        totime = droptimeto.SelectedItem.Text + dropamto.SelectedItem.Text;
        data();
        query = "insert into traveldet(vmake,vmodel,ftype,seater,tfrom,tvia,tto,tdate,tfromtime,tfromam,ttotime,ttoam,tname,tgender,tage,mem,uname,licnum)values('" + txtvehiclemake.Text + "','" + txtvehiclemodel.Text + "','" + fuel.ToString() + "','" + seater.ToString() + "','" + dropfrom.SelectedItem + "','" + dropvia.SelectedItem + "','" + dropto.SelectedItem + "','" + txtdate.Text + "','" + fromtime.ToString() + "','" + dropamfrom.SelectedItem + "','" + totime.ToString() + "','" + dropamto.SelectedItem + "','" + name + "','" + gender + "','" + age + "','" + memebers + "','" + usname + "','" + txtlicnum.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
        txtdate.Text = "";
        txtvehiclemake.Text = "";
        txtvehiclemodel.Text = "";
        txtlicnum.Text = "";
    }
}