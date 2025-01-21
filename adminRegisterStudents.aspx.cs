using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminRegisterStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable resultsTable = ExecuteProc();

        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();
    }

    private DataTable ExecuteProc()
    {
        DataTable dataTable = new DataTable();

        //TODO:
        string text = search.Text;
        string connectionString = "Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            //error1.Text = search_choice.Text;
            string query = "select p.CNIC, p.FIRST_NAME + ' ' + p.LAST_NAME as 'Name', p.PHONE_NO, p.EMAIL, l.username, l.PASSWORD, l.role from PERSON p inner join login l on l.cnic = p.CNIC ";
            //string test = " where l.Username = '" + text + "';";

            //query += test;

            if (text.Length > 0)
            {
                query += " where ";
                if (search_choice.Text == "1")
                {
                    query += "l.username = '" + text + "';";
                }
                else if (search_choice.Text == "3")
                {
                    query += "p.cnic = " + text + ";";
                }
                else if (search_choice.Text == "2")
                {
                    query += "p.FIRST_NAME = '" + text + "' or p.LAST_NAME = '" + text + "'";
                }
                else if (search_choice.Text == "4")
                {
                    query += "p.email = '" + text + "';";
                }
                else if (search_choice.Text == "5")
                {
                    query += "l.role = '" + text + "';";
                }

            }
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.CommandType = CommandType.Text;

                connection.Open();

                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    adapter.Fill(dataTable);
                    if(dataTable.Rows.Count > 0)
                    {
                        error1.ForeColor = System.Drawing.Color.LightGreen;
                        //error1.Text = "Found";
                    }
                    else
                    {
                        error1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300"); ;
                        error1.Text = "No Record Found. ";
                    }
                }
            }


        }

        return dataTable;
    }

    bool IsPasswordValid(string password)
    {
        if (password.Length < 8)
        {
            return false;
        }

        bool hasUppercase = false;
        bool hasLowercase = false;
        bool hasDigit = false;

        foreach (char c in password)
        {
            if (char.IsUpper(c))
            {
                hasUppercase = true;
            }
            else if (char.IsLower(c))
            {
                hasLowercase = true;
            }
            else if (char.IsDigit(c))
            {
                hasDigit = true;
            }
        }

        if (!hasUppercase || !hasLowercase || !hasDigit)
        {
            return false;
        }

        return true;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=LUQMAN-PC\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        conn.Open();

        eFname.Text = "";
        eLname.Text = "";
        eDob.Text = "";
        ePhone.Text = "";
        eEmail.Text = "";
        eUser.Text = "";
        Ecnic.Text = "";
        ePass.Text = "";
        error.Text = "";
        error1.Text = "";
        error.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF3300");

        string cnic = txtCNIC.Text;
        string Fname = txtFirstName.Text;
        string Lname = txtLastName.Text;
        string dob = txtDOB.Text;   
        string phone = txtPhoneNo.Text;
        string email = txtEmail.Text;
        string username = TextUser.Text;
        string pass = TextPass.Text;
        string role = ddlOptions.SelectedValue;
        bool check = false;

        if (cnic == "" || Fname == "" || Lname == "" || dob == "" || phone == "" || email == "" || username == "" || pass == "")
        {
            if (cnic == "")
                Ecnic.Text = "This Field is Empty";
            if (Fname == "")
                eFname.Text = "This Field is Empty";
            if (Lname == "")
                eLname.Text = "This Field is Empty";
            if (dob == "")
                eDob.Text = "This Field is Empty";
            if (phone == "")
                ePhone.Text = "This Field is Empty";
            if (email == "")
                eEmail.Text = "This Field is Empty";
            if (username == "")
                eUser.Text = "This Field is Empty";
            if (pass == "")
                ePass.Text = "This Field is Empty";
        }
        else
        {
            string datePattern = @"^\d{2}-\d{2}-\d{4}$";
            bool isValidFormat = Regex.IsMatch(dob, datePattern);
            if (!isValidFormat)
            {
                eDob.Text = "Enter in DD-MM-YYYY format";
                check = true;
            }

            if(cnic.Length != 13)
            {
                Ecnic.Text = "CNIC must be 13 digits - (" + cnic.Length + ")";
                check = true;
            }

            if(!IsPasswordValid(pass) )
            {
                ePass.Text = "Your Password must be 8 digits and have\n Upper case, Lower case and a digit";
            }

            if(role == "Student")
            {
                if(!Regex.IsMatch(username, @"^\d{2}[ilkp]-\d{4}$"))
                {
                    eUser.Text = "Use your role Num as username\n e.g: 21i-1234";
                    check = true;
                }
            }

            if(!Regex.IsMatch(email, @"@.*\.com$"))
            {
                eEmail.Text = "Example: some@email.com";
                return;
            }

            try
            {
                string sqlQuery = "SELECT COUNT(*) FROM PERSON WHERE CNIC = @cnic";
                using (SqlCommand command = new SqlCommand(sqlQuery, conn))
                {

                    command.Parameters.AddWithValue("@cnic", cnic);
                    int count = (int)command.ExecuteScalar();

                    // Check if CNIC exists
                    if (count > 0)
                    {
                        Ecnic.Text = "CNIC already exists.";
                        check = true;
                    }
                }

                string usernameQuery = "SELECT COUNT(*) FROM LOGIN WHERE Username = @username";
                using (SqlCommand usernameCommand = new SqlCommand(usernameQuery, conn))
                {
                    // Add parameter to the command
                    usernameCommand.Parameters.AddWithValue("@username", username);

                    // Execute the command and get the result
                    int usernameCount = (int)usernameCommand.ExecuteScalar();

                    // Check if username exists
                    if (usernameCount > 0)
                    {
                        eUser.Text = "Username Already Exists. ";
                        check = true;
                    }
                }

                if (check)
                    return;

                DateTime parsedDate = DateTime.ParseExact(dob, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                dob = parsedDate.ToString("yyyy-MM-dd");

                string query = "insert into PERSON values (" + cnic + ",'" + Fname + "', '" + Lname + "', '" + dob + "', " + phone + ", '" + email + "');";
                SqlCommand cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();
                cm.Dispose();

                query = "insert into login values(" + cnic + ", '" + username + "', '" + pass + "', '" + role + "')";
                cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();
                cm.Dispose();
                
                if(role == "Admin")
                {
                    query = "insert into ADMIN_OFFICER values((select max(NU_ID) from ADMIN_OFFICER )+1, " + cnic + ");";
                    cm = new SqlCommand(query, conn);
                    cm.ExecuteNonQuery();
                    cm.Dispose();
                }
                else if( role == "Student")
                {
                    query = "insert into STUDENT values( "+username+", "+cnic+")";
                    cm = new SqlCommand(query, conn);
                    cm.ExecuteNonQuery();
                    cm.Dispose();
                }
                else if (role == "Faculty")
                {
                    query = "insert into faculty values((select max(NU_ID) from faculty )+1, " + cnic + ");";
                    cm = new SqlCommand(query, conn);
                    cm.ExecuteNonQuery();
                    cm.Dispose();
                }

                error.ForeColor = System.Drawing.Color.LightGreen;
                error.Text = "Successfully Registered. ";
                //error.Text = role;
            }
            catch (Exception ex)
            {
                error.Text = "An Error Occured: " + ex.Message;
            }

        }
        conn.Close();
    }

    protected void txtPhoneNo_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        eFname.Text = "";
        eLname.Text = "";
        eDob.Text = "";
        ePhone.Text = "";
        eEmail.Text = "";
        eUser.Text = "";
        Ecnic.Text = "";
        ePass.Text = "";
        error.Text = "";
        error1.Text = "";

        DataTable resultsTable = ExecuteProc();

        // Bind the results to the GridView
        GridView1.DataSource = resultsTable;
        GridView1.DataBind();
    }
}