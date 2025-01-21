using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNav1_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("StudentView.aspx");
    }

    protected void btnNav2_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect(Request.RawUrl);
    }

    protected void btnNav3_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
        Response.Redirect("feedback.aspx");
    }

    protected void btnNav4_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
    }

    protected void btnNav5_Click(object sender, EventArgs e)
    {
        // Your code to handle the click event of btnNav1 goes here
    }

}