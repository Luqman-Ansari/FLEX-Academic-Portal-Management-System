using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        string un = TextBox1.Text;
        string pass = TextBox2.Text;

        if (un == "" || pass == "")
        {
            Label1.Text = "Enter Username and Password";
        }
        else
        {
            string query = "select role from login where username = '" + un + "' and password = '" + pass + "' ;";
            cm = new SqlCommand(query, conn);

            SqlDataReader rs = cm.ExecuteReader();

            if (rs.HasRows)
            {
                if (rs.Read())
                {
                    string role = rs.GetString(0);
                    // Redirect to the appropriate page based on the role
                    if (role == "student" || role =="Student")
                    {
                        rs.Close();
                        cm.Dispose();

                        query = "select username from login l inner join REGISTER r on l.username = r.STUDENT_ID where l.role = 'student' and username = '" + un + "' and PASSWORD = '" + pass + "' ;";
                        cm = new SqlCommand(query, conn);

                        rs = cm.ExecuteReader();

                        if (rs.HasRows)
                        {
                            if (rs.Read())
                            {
                                Session["username"] = rs.GetString(0);
                            }
                        }
                        else
                        {
                            Label1.Text = "Srudent is not registered to any course";
                            return;
                        }

                        Response.Redirect("StudentView.aspx");
                    }
                    else if (role == "faculty" ||role == "Faculty")
                    {
                        rs.Close();
                        cm.Dispose();

                        query = "select username from login where username = '" + un + "' and password = '" + pass + "' ;";
                        cm = new SqlCommand(query, conn);

                        rs = cm.ExecuteReader();

                        if (rs.HasRows)
                        {
                            if (rs.Read())
                            {
                                Session["username"] = rs.GetString(0);
                            }
                        }

                        Response.Redirect("FacultyView.aspx");
                    }
                    else if (role == "admin" || role=="Admin")
                    {
                        rs.Close();
                        cm.Dispose();

                        query = "select username from login where username = '" + un + "' and password = '" + pass + "' ;";
                        cm = new SqlCommand(query, conn);

                        rs = cm.ExecuteReader();

                        if (rs.HasRows)
                        {
                            if (rs.Read())
                            {
                                Session["username"] = rs.GetString(0);
                            }
                        }
                        Response.Redirect("AdminView.aspx");
                    }
                    else
                    {
                        Label1.Text = "Invalid role";
                    }
                }

            }
            else
            {
                // Display an error message
                Label1.Text = "Invalid username or password";
            }

            rs.Close();
            cm.Dispose();
        }

        conn.Close();
    }

        
}