using Microsoft.Reporting.WebForms;
using System;
using System.Web.UI;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI.WebControls;

public partial class offerCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable resultsTable = ExecuteProc();
        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();
    }


    protected void btnNav1_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("AdminView.aspx");

    }

    protected void btnNav2_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here

        Response.Redirect(Request.RawUrl);
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

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm1;
        error2.Text = "";

        string Name = name.Text;
        string cr = credit.Text;
        string code = courseCode.Text;
        string preReq = pre.Text;

        if (Name == "" || cr == "" || code == "")
            Label1.Text = "Enter the missing Credentials. ";
        else
        {
            try
            {
                //if (preReq == "")
                //  preReq = "NULL";

                //Label2.Text = Name;
                string query;

                if (preReq == "")
                    query = "exec insert_course @name = '" + Name + "', @code = '" + code + "', @credit = " + cr + ", @preReq = null";
                else
                    query = "exec insert_course @name = '" + Name + "', @code = '" + code + "', @credit = " + cr + ", @preReq = '" + preReq + "'";

                cm1 = new SqlCommand(query, conn);
                cm1.ExecuteNonQuery();
                cm1.Dispose();

                Label1.ForeColor = System.Drawing.Color.DarkGreen;
                Label1.Text = "Successfully Inserted. ";
                


            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("duplicate"))
                    Label1.Text = "Course Already Exists. ";
                else
                    Label1.Text = "An error occurred: " + ex.Message;
            }

        }

        conn.Close();
    }

    protected void Refresh_button_Click(object sender, EventArgs e)
    {
        DataTable resultsTable = ExecuteProc();

        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();

        name.Text = "";
        credit.Text = "";
        courseCode.Text="";
        pre.Text = "";
        TextBox1.Text = "";
        error2.Text = "";
        Label1.Text = "";

    }

    private DataTable ExecuteProc()
    {
        DataTable dataTable = new DataTable();

        //TODO:
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand("courses_offered", connection))
            {
                command.CommandType = CommandType.StoredProcedure;

                connection.Open();

                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    // Fill the DataTable with the results of the stored procedure
                    adapter.Fill(dataTable);
                }
            }
        }

        return dataTable;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm, cm1;

        string Name = TextBox1.Text;
        TextBox1.Text = "";
        Label1.Text = "";

        if (Name == "")
        {
            error2.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300");
            error2.Text = "*Enter the Name of Course";
        }
        else
        {
            try
            {
                string query = "select * from course where code = '" + Name + "';";

                cm = new SqlCommand(query, conn);

                SqlDataReader rs = cm.ExecuteReader();

                if (rs.HasRows)
                {
                    if (rs.Read())
                    {
                        //Label2.Text = Name;
                        query = "exec delete_course @name = '" + Name + "'";

                        rs.Close();
                        cm1 = new SqlCommand(query, conn);
                        cm1.ExecuteNonQuery();
                        cm1.Dispose();

                        error2.ForeColor = System.Drawing.Color.DarkGreen;
                        error2.Text = "Successfully Dropped. ";
                        //Button1_Click(sender, e);
                    }
                }
                else
                {
                    error2.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300");
                    error2.Text = "Course does not exist. ";
                }
            }
            catch (Exception ex)
            {
                error2.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300");
                error2.Text = "An error occurred: " + ex.Message;
            }

        }

        conn.Close();
    }
}