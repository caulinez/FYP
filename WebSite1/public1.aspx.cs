using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class public1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        var currentUser = (UserInfoClass)Session["UserInfo"];
        Label1.Text = currentUser.getUserName();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        DataClasses2DataContext db1 = new DataClasses2DataContext();

        Project newProject = new Project();

     
        newProject.Username = Label1.Text;
        newProject.ProjectName = ProjName.Text;
        newProject.ProjectDesc = ProjDesc.Text;
        newProject.Status = "created";
        db1.Projects.InsertOnSubmit(newProject);
        db1.SubmitChanges();
        Response.Redirect("Home.aspx");


    }
}