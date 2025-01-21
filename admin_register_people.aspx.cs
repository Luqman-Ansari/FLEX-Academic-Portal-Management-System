using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Security.Policy;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class admin_register_people : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

        string roll = ddl.SelectedValue;
        Label4.Text = roll + " Registered Courses: ";
        roll = ExtractNumber(roll);
        DataTable resultsTable = getStudentCourses(roll);

        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();

        if (!IsPostBack)
        {
            // Place the code here
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select convert(nvarchar(255),l.username)+ ' -> ' + p.FIRST_NAME + ' ' + p.LAST_NAME as 'Students' from login l inner join person p on p.CNIC = l.cnic where l.role = 'Student'";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                ddl.DataSource = reader;
                ddl.DataTextField = "Students";
                ddl.DataValueField = "Students";
                ddl.DataBind();

                reader.Close();
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select cc.course_code + ' -> ' + cc.course_name as 'Courses' from course c inner join  course_offer cc on c.code = cc.course_code";
                SqlCommand com = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = com.ExecuteReader();

                ddl2.DataSource = reader;
                ddl2.DataTextField = "Courses";
                ddl2.DataValueField = "Courses";
                ddl2.DataBind();

                reader.Close();
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select r.COURSE_ID as 'c' from REGISTER r right join SECTION s on s.ID = r.SECTION_ID where r.STUDENT_ID = '" + roll + "'";
                SqlCommand com = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = com.ExecuteReader();

                ddl3.DataSource = reader;
                ddl3.DataTextField = "c";
                ddl3.DataValueField = "c";
                ddl3.DataBind();

                reader.Close();
            }
        }
    }

    private DataTable getStudentCourses(string roll)
    {
        DataTable dataTable = new DataTable();

        //TODO:
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand("select r.COURSE_ID as 'Course ID', s.NAME as 'Section', r.ATTENDANCE from REGISTER r right join SECTION s on s.ID = r.SECTION_ID where r.STUDENT_ID = '"+roll+"'", connection))
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
    protected void btnNav1_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("AdminView.aspx");

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
        Response.Redirect(Request.RawUrl);
    }

    protected void btnNav5_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("FacultyAllocation.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string roll = ddl.SelectedValue;
        Label4.Text = roll + " Registered Courses: ";
        roll = ExtractNumber(roll);
        DataTable resultsTable = getStudentCourses(roll);

        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();

        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";
        errors.Text = string.Empty;
        errors1.Text =string .Empty;
        if (!IsPostBack)
        {
            // Place the code here
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select convert(nvarchar(255),l.username)+ ' -> ' + p.FIRST_NAME + ' ' + p.LAST_NAME as 'Students' from login l inner join person p on p.CNIC = l.cnic where l.role = 'Student'";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                ddl.DataSource = reader;
                ddl.DataTextField = "Students";
                ddl.DataValueField = "Students";
                ddl.DataBind();

                reader.Close();
            }
           
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select cc.course_code + ' -> ' + cc.course_name as 'Courses' from course c inner join  course_offer cc on c.code = cc.course_code";
                SqlCommand com = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = com.ExecuteReader();

                ddl2.DataSource = reader;
                ddl2.DataTextField = "Courses";
                ddl2.DataValueField = "Courses";
                ddl2.DataBind();

                reader.Close();
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select r.COURSE_ID as 'c' from REGISTER r right join SECTION s on s.ID = r.SECTION_ID where r.STUDENT_ID = '" + roll + "'";
                SqlCommand com = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = com.ExecuteReader();

                ddl3.DataSource = reader;
                ddl3.DataTextField = "c";
                ddl3.DataValueField = "c";
                ddl3.DataBind();

                reader.Close();
            }
        }
    }

    public string ExtractNumber(string input)
    {
        string extractedNumber = "";

        if (!string.IsNullOrEmpty(input))
        {
            int arrowIndex = input.IndexOf("->"); // Find the index of "->"

            if (arrowIndex != -1)
            {
                extractedNumber = input.Substring(0, arrowIndex).Trim(); // Extract the substring before "->" and trim any spaces
            }
            else
            {
                extractedNumber = input.Trim(); // No "->" found, trim any spaces from the input string
            }
        }

        return extractedNumber;
    }
    private void proc_toRegisterToCourse(string roll, string course)
    {
        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();

        try
        {
            string query = "exec add_student_to_course '" + roll + "', '" + course + "'";
            SqlCommand cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            errors.ForeColor = System.Drawing.Color.LightGreen;
            errors.Text = "Successfully Registered to Student";
        }
        catch (Exception ex)
        {
            errors.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300");

            if (ex.ToString().Contains("The Course is not offered"))
                errors.Text = "The Course is not offered";
            else if (ex.ToString().Contains("The student has more than 6 courses"))
                errors.Text = "The student has more than 6 courses";
            else if (ex.ToString().Contains("The student has not passed Pre req Course"))
                errors.Text = "The student has not passed Pre req Course";
            else if (ex.ToString().Contains("Already Registered"))
                errors.Text = "Already Registered";
            else
                errors.Text = "An Error Ocurred: " + ex;
        }

        conn.Close();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string roll_num = ddl.SelectedValue;
        string courseCode = ddl2.SelectedValue;
        
        roll_num = ExtractNumber(roll_num);
        courseCode = ExtractNumber(courseCode);
        
        proc_toRegisterToCourse(roll_num, courseCode);

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void show_courses_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

        string roll = ddl.SelectedValue;
        Label4.Text = roll + " Registered Courses: ";
        roll = ExtractNumber(roll);
        DataTable resultsTable = getStudentCourses(roll);

        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "select r.COURSE_ID as 'c' from REGISTER r right join SECTION s on s.ID = r.SECTION_ID where r.STUDENT_ID = '" + roll + "'";
            SqlCommand com = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = com.ExecuteReader();

            ddl3.DataSource = reader;
            ddl3.DataTextField = "c";
            ddl3.DataValueField = "c";
            ddl3.DataBind();

            reader.Close();
        }
    }

    private void proc_toDropCourse(string roll, string course)
    {
        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();

        try
        {
            string query = "exec drop_course '" + roll + "', '" + course + "'";
            SqlCommand cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            errors1.ForeColor = System.Drawing.Color.LightGreen;
            errors1.Text = "Successfully Dropped";
        }
        catch (Exception ex)
        {
            errors1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300");
            errors1.Text = "An Error Ocurred: " + ex;
        }

        conn.Close();
    }
    protected void drop_Click(object sender, EventArgs e)
    {
        string roll_num = ddl.SelectedValue;
        string courseCode = ddl3.SelectedValue;

        roll_num = ExtractNumber(roll_num);
        courseCode = ExtractNumber(courseCode);

        proc_toDropCourse(roll_num, courseCode);
    }
}