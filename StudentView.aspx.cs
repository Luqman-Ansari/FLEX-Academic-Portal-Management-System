using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
       // username = "21i-1234";
        //test.Text = username;
        Label1.Text = username;

        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;

        string query = "select* from student s inner join person p on p.cnic = s.cnic where NU_ID = '" + username + "'";
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
                    DateTime dob = (DateTime)rs["DoB"];
                    string dateOnly = dob.ToString("dd-MM-yyyy");
                    lblDoB.Text += dateOnly;
                    lblPhone.Text += rs["Phone_No"].ToString();
                    lblEmail.Text += rs["email"].ToString();
                }
            }
            else
            {
                lblErrorMessage.Text = "No person found with the specified Role Number.";
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "An error occurred: " + ex.Message;
        }

        rs.Close();
        cm.Dispose();

        conn.Close();

        string q = "SELECT distinct(s.SEMESTER_NO), s.SGPA FROM semester s WHERE s.NU_ID = '" + username + "'";

        // Execute the query and retrieve the data into a DataTable
        DataTable dataTable = runQuery(q);

        // Create arrays to store the values
        string[] labels = new string[dataTable.Rows.Count];
        double[] gpa = new double[dataTable.Rows.Count];

        // Loop through the DataTable rows and populate the arrays
        for (int i = 0; i < dataTable.Rows.Count; i++)
        {
            DataRow row = dataTable.Rows[i];
            labels[i] = row["SEMESTER_NO"].ToString();
            gpa[i] = Convert.ToDouble(row["SGPA"]);
        }


        // Assign the data to the chart
        BarChart.Series["GPASeries"].Points.DataBindXY(labels, gpa);
    }

    protected DataTable runQuery(string query)
    {
        DataTable dataTable = new DataTable();

        //TODO:
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

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


}