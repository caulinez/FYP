using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var currentUser = (UserInfoClass)Session["UserInfo"];
        Label1.Text = Label1.Text = currentUser.getUserName();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string redirect;
        redirect = RadioButtonList1.SelectedItem.Text;

        if (redirect == "Update Bio")
        {
            UserInfoClass currentUser = new UserInfoClass();
            currentUser.UserName = Label1.Text;
            Session["UserInfo"] = currentUser;
            Response.Redirect("UpdateBio.aspx");
        }
        else if(redirect == "Form Teams")
        {
            UserInfoClass currentUser = new UserInfoClass();
            currentUser.UserName = Label1.Text;
            Session["UserInfo"] = currentUser;
            Response.Redirect("FormTeams.aspx");
        }
        else if (redirect == "Choose project")
        {
            UserInfoClass currentUser = new UserInfoClass();
            currentUser.UserName = Label1.Text;
            Session["UserInfo"] = currentUser;
            Response.Redirect("ChooseProject.aspx");
        }
        else if (redirect == "Promote Completed Project")
        {
            UserInfoClass currentUser = new UserInfoClass();
            currentUser.UserName = Label1.Text;
            Session["UserInfo"] = currentUser;
            Response.Redirect("PromoteCompletedProject.aspx");
        }


    }
}