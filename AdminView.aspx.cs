using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
        // username = "21i-1234";
        //test.Text = username;

        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;

        string query = "select* from login l inner join PERSON p on p.CNIC = l.cnic where l.username = '" + username + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader rs = cm.ExecuteReader();

        try
        {
            if (rs.HasRows)
            {
                while (rs.Read())
                {
                    lblCNIC.Text += rs["CNIC"].ToString();
                    lblFName.Text += rs["First_Name"].ToString();
                    lblLName.Text += rs["Last_Name"].ToString();
                    lblDoB.Text += rs["DoB"].ToString();
                    //lblPhone.Text += rs["Phone_No"].ToString();
                    lblEmail.Text += rs["email"].ToString();
                }
            }
            else
            {
                lblErrorMessage.Text = "No person found with the specified CNIC.";
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "An error occurred: " + ex.Message;
        }

        rs.Close();
        cm.Dispose();

        conn.Close();
    }

    protected void btnNav1_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect(Request.RawUrl);

    }

    protected void btnNav2_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        
        Response.Redirect("offerCourses.aspx");
    }

    protected void btnNav3_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("adminRegisterStudents.aspx");
    }

    protected void btnNav4_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("admin_register_people.aspx");
    }

    protected void btnNav5_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("FacultyAllocation.aspx");
    }
}