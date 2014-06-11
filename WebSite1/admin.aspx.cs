using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("Approve");
            if (cb.Checked == true)
            {
                string text1;
                int projID;

                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                text1 = lb.Text.ToString();
                projID = Convert.ToInt32(text1);

                DataClasses2DataContext dc = new DataClasses2DataContext();

                var Project = from q in dc.Projects
                              where
                                  q.ProjectID == projID
                              select q;


                foreach (var Project1 in Project)
                {



                    Project1.Status = "approve";

                   // dc.Projects.InsertOnSubmit(Project1);
                    dc.SubmitChanges();
                }

            }
        }
    }
}