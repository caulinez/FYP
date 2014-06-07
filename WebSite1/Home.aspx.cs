using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select Role from userInfo where Username = '" +TextBoxUN.Text+ "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            string Role = com.ExecuteScalar().ToString().Trim();
            if ( Role == "admin") 
            {
                Response.Redirect("admin.aspx");
            }
            conn.Close();*/
        

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       /* SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkUser = "select Role from userInfo where Username = '" + TextBoxUN.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, conn);
        string Role = com.ExecuteScalar().ToString();
        if (Role == "admin")
        {
            Response.Redirect("admin.aspx");
        }
        conn.Close();*/
        DataClassesDataContext dc = new DataClassesDataContext();

        var userInfo = from q in dc.userInfos where  
                       q.Username == TextBoxUN.Text
                       && q.Password == TextBoxPW.Text
                       select q;

        foreach (var userInfo1 in userInfo)
        {
            if (userInfo1.Role == "admin")
            {
                Response.Redirect("admin.aspx");
            }
            else if (userInfo1.Role == "student")
            {
                Response.Redirect("student.aspx");
            }

            else if (userInfo1.Role == "public")
            {
                Response.Redirect("public.aspx");
            }
        }

        


    }
}