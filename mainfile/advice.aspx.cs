using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class advice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Name"] == null)
            {//未登录
                Response.Redirect("Default2.aspx");
            }
            else
            {//在欢迎信息中显示用户名
                lblUserName.Text = Session["Name"].ToString();
            }

            Application.Lock();
            if (Application["Count"] == null)
            {
                Application["Count"] = 1;
            }
            else
            {
                Application["Count"] = (int)Application["Count"] + 1;
            }
            Application.UnLock();
            lblCount.Text = Application["Count"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Application.Lock();
        if (Application["Chat"] == null)
        {//第一个留言
            Application["Chat"] = Session["Name"].ToString() + "在" + DateTime.Now.ToString("HH:mm") + "：" + TextBox1.Text + "<br/>";
        }
        else
        {
            Application["Chat"] = Session["Name"].ToString() + "在" + DateTime.Now.ToString("HH:mm") + "：" + TextBox1.Text + Application["Chat"].ToString() + "<br/>";
        }
        Application.UnLock();
        TextBox1.Text = "";
    }
}