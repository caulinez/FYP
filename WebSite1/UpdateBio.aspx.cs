using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateBio : System.Web.UI.Page
{
    int count = 0;
    int loadedOnce = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        count = 0;
        if (TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text == "")
        {
            var currentUser = (UserInfoClass)Session["UserInfo"];
            Label1.Text = currentUser.getUserName();

            DataClasses3DataContext dc = new DataClasses3DataContext();

            var StudentBio = from q in dc.StudentBios
                             where
                                 q.Username == Label1.Text
                             select q;


            foreach (var StudentBio1 in StudentBio)
            {
                count = count + 1;
                TextBox1.Text = StudentBio1.Name;
                TextBox2.Text = StudentBio1.Class;
                TextBox3.Text = StudentBio1.Writeup;
            }
            loadedOnce = loadedOnce + 1;
        }
        else 
        {
            count = 1;//screen has been changed before
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClasses3DataContext dc = new DataClasses3DataContext();


        StudentBio newStudentBio = new StudentBio();
        newStudentBio.Username = Label1.Text; 
        newStudentBio.Name = TextBox1.Text;
        newStudentBio.Class = TextBox2.Text;
        newStudentBio.Writeup = TextBox3.Text;
       
            if (count == 0)
            {
                dc.StudentBios.InsertOnSubmit(newStudentBio);
                dc.SubmitChanges();
            }
            else
            {
                var StudentBio = from q in dc.StudentBios
                                 where
                                     q.Username == Label1.Text
                                 select q;


                foreach (var StudentBio1 in StudentBio)
                {
                    
                    StudentBio1.Name = TextBox1.Text;
                    StudentBio1.Class = TextBox2.Text;
                    StudentBio1.Writeup = TextBox3.Text;
                    dc.SubmitChanges();
                }
        
            }
        

    }
}