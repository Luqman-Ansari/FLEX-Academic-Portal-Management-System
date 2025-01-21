using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentTranscript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
        double gpa;

        DataTable resultsTable = executeSearchQuery(username,"1");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "1");
            Label9.Text = "SGPA: ";
            Label9.Text += gpa.ToString();

            GridView1.DataSource = resultsTable;
            GridView1.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label1.Text = string.Empty;
        }


        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "2");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "2");
            Label10.Text = "SGPA: ";
            Label10.Text += gpa.ToString();

            GridView2.DataSource = resultsTable;
            GridView2.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label5.Text = string.Empty;
        }

        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "3");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "3");
            Label11.Text = "SGPA: ";
            Label11.Text += gpa.ToString();

            GridView3.DataSource = resultsTable;
            GridView3.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label2.Text = string.Empty;
        }

        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "4");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "4");
            Label12.Text = "SGPA: ";
            Label12.Text += gpa.ToString();

            GridView4.DataSource = resultsTable;
            GridView4.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label6.Text = string.Empty;
        }


        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "5");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "5");
            Label13.Text = "SGPA: ";
            Label13.Text += gpa.ToString();

            GridView5.DataSource = resultsTable;
            GridView5.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label3.Text = string.Empty;
        }

        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "6");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "6");
            Label14.Text = "SGPA: ";
            Label14.Text += gpa.ToString();

            GridView6.DataSource = resultsTable;
            GridView6.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label7.Text = string.Empty;
        }

        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "7");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "7");
            Label15.Text = "SGPA: ";
            Label15.Text += gpa.ToString();

            GridView7.DataSource = resultsTable;
            GridView7.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label4.Text = string.Empty;
        }


        resultsTable.Clear();
        resultsTable = executeSearchQuery(username, "8");
        // Bind the results to the GridView
        if (resultsTable.Rows.Count > 0)
        {
            gpa = calculate_gpa(username, "8");
            Label16.Text = "SGPA: ";
            Label16.Text += gpa.ToString();

            // Bind the results to the GridView
            GridView8.DataSource = resultsTable;
            GridView8.DataBind();
        }
        else
        {
            // If the table is empty, display a text message
            Label8.Text = string.Empty;
        }



    }

    protected double calculate_gpa(string role_num, string sem_no)
    {
        DataTable dataTable = executeSearchQuery(role_num, sem_no);

        double totalGradePoints = 0;
        double totalCreditHours = 0;

        foreach (DataRow row in dataTable.Rows)
        {
            double gradePoints = Convert.ToDouble(row["Grade Points"]);
            double creditHours = Convert.ToDouble(row["Credit Hours"]);

            totalGradePoints += gradePoints * creditHours;
            totalCreditHours += creditHours;
        }

        double gpa = totalGradePoints / totalCreditHours;
        return gpa;
    }
    protected DataTable executeSearchQuery(string num, string sem_no)
    {
        DataTable dataTable = new DataTable();
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";
        string query = "exec getTranscript '" + num + "', " + sem_no + "";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.CommandType = CommandType.Text;

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
    protected void btnSearch(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


}