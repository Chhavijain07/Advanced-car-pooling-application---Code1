using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Web.Configuration;
public partial class searchtravel : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    ArrayList arr = new ArrayList();
    string usname, ttimefrom, ttimeto;
    int count;
    private object parsedDate;
    private string dateFormat;

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
        query = "select tdate from traveldet where tfrom='" + dropfrom.SelectedItem + "' and tto='" + dropto.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            arr.Add(rd[0].ToString());
        }
        rd.Close();
        con.Close();

        count = arr.Count;
        string dateFormat = "MM-dd-yyyy"; // Adjust as needed
        DateTime parsedDate;
        if (count > 0)
        {
            for (int i = 0; i < count; i++)
            {
                if (DateTime.TryParseExact(arr[i].ToString(), dateFormat, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out parsedDate))
                {
                    // Calculate the days difference
                    int h = (int)(parsedDate - DateTime.Today).TotalDays;

                    // Call your data() function (assuming it does not interfere with the loop or database state)
                    data();

                    // Define the query with parameters
                    query = "UPDATE traveldet SET tcnt = @h WHERE tdate = @date AND tfrom = @from AND tto = @to";

                    // Use a parameterized query to prevent SQL injection and date format issues
                    using (SqlCommand updateCmd = new SqlCommand(query, con)) // Renamed 'cmd' to 'updateCmd'
                    {
                        updateCmd.Parameters.AddWithValue("@h", h);
                        updateCmd.Parameters.AddWithValue("@date", parsedDate);
                        updateCmd.Parameters.AddWithValue("@from", dropfrom.SelectedItem.ToString());
                        updateCmd.Parameters.AddWithValue("@to", dropto.SelectedItem.ToString());

                        // Execute the update command
                        updateCmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    // Log or handle the error if date parsing fails
                    throw new FormatException(string.Format("Invalid date format in arr[{0}]: {1}", i, arr[i].ToString()));
                    
                }
            }
            con.Close();
        }
        
        GridView1.Visible = true;
        GridView1.DataBind();
        lblack.Visible = false;
        Panel1.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        usname = GridView1.SelectedRow.Cells[0].Text.ToString();
        usern.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
       // lblname.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        lblgender.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        lblage.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        ttimefrom = GridView1.SelectedRow.Cells[4].Text.ToString();
        ttimeto = GridView1.SelectedRow.Cells[5].Text.ToString();
        data();
        query = "select toccupation,toccutype,tname from signupdet where uname='" + usname + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lbloccupation.Text = rd[0].ToString();
            lbloccutype.Text = rd[1].ToString();
            lblname.Text = rd[2].ToString();
        }
        rd.Close();
        con.Close();

        data();
        query = "select * from traveldet where uname='" + usname + "' and tfromtime='" + ttimefrom + "' and ttotime='" + ttimeto + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd1 = cmd.ExecuteReader();
        while (rd1.Read())
        {
            lblvehiclemake.Text = rd1[1].ToString();
            lblvehiclemodel.Text = rd1[2].ToString();
            lblfueltype.Text = rd1[3].ToString();
            lblseater.Text = rd1[4].ToString();
            lblfrom.Text = rd1[5].ToString();
            lblvia.Text = rd1[6].ToString();
            lblto.Text = rd1[7].ToString();
            lbltraveldate.Text = rd1[8].ToString();
            lblfromtime.Text = rd1[9].ToString();
            lbltotime.Text = rd1[11].ToString();
            lbllicnum.Text = rd1[20].ToString();
        }
        rd1.Close();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        data();
        query = "select tname,tage,tgender,toccupation,toccutype,tphone,temail,st1,st2,city,state,pinc from signupdet where uname='" + lbluser.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            string address = rd[7].ToString() + "," + rd[8].ToString() + "," + rd[9].ToString() + "," + rd[10].ToString() + "," + rd[11].ToString();
            data();
            query = "insert into requestdet(fromuname,touname,vmake,vmodel,ftype,seater,trafrom,travia,trato,tradate,tratimefrom,tratimeto,status,tname,tage,tgender,toccu,typeoccu,tphone,temail,taddress,tlicnum)values('" + lbluser.Text + "','" + usern.Text + "','" + lblvehiclemake.Text + "','" + lblvehiclemodel.Text + "','" + lblfueltype.Text + "','" + lblseater.Text + "','" + lblfrom.Text + "','" + lblvia.Text + "','" + lblto.Text + "','" + lbltraveldate.Text + "','" + lblfromtime.Text + "','" + lbltotime.Text + "','NO','" + rd[0].ToString() + "','" + rd[1].ToString() + "','" + rd[2].ToString() + "','" + rd[3].ToString() + "','" + rd[4].ToString() + "','" + rd[5].ToString() + "','" + rd[6].ToString() + "','" + address + "','" + lbllicnum.Text + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        rd.Close();
        con.Close();
        lblack.Visible = true;
        Panel1.Visible = false;
    }
   
}