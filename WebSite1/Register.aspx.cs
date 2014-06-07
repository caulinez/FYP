using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        userInfo newUser = new userInfo();
        newUser.Username = TextBox1.Text;
        newUser.Password = TextBox2.Text;

        db.userInfos.InsertOnSubmit(newUser);
        db.SubmitChanges();
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}
