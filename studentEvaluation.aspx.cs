using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentEvaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";
        string username = (string)Session["username"];

        if (!IsPostBack)
        {
            // Place the code here
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select c.course_code + '--> '+ c.course_name as 'Name' from REGISTER r inner join course_offer c on c.course_code = r.COURSE_ID where r.STUDENT_ID = '" + username + "'";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                ddl1.DataSource = reader;
                ddl1.DataTextField = "Name";
                ddl1.DataValueField = "Name";
                ddl1.DataBind();

                reader.Close();
            }

        }
    }
    private DataTable executeSearchQuery()
    {
        DataTable dataTable = new DataTable();

        string username = (string)Session["username"];
        
        string course = ddl1.SelectedValue;

        string[] parts = course.Split(new string[] { "-->" }, StringSplitOptions.None);

        course = parts[0].Trim();

        //TODO:
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand("exec getAttendance '" + username + "', '" + course + "'", connection))
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
}