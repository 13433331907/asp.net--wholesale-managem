using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=.;Initial Catalog=mana;User ID=sa;Password=123456";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = "Select*from [user] where UserNo=@UserNo and UserPwd=@UserPwd";
        cmd.Parameters.Add("@UserNo", SqlDbType.Char, 8).Value = txtUserName.Text.Trim();
        cmd.Parameters.Add("@UserPwd", SqlDbType.Char, 8).Value = txtPassword.Text.Trim();

        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Response.Cookies["UserNo"].Value = txtUserName.Text.Trim();
            Response.Cookies["UserPwd"].Value = txtPassword.Text.Trim();
            Response.Cookies["UserNo"].Expires = DateTime.Now.AddDays(int.Parse(dpExpires.SelectedValue));
            Response.Cookies["UserPwd"].Expires = DateTime.Now.AddDays(int.Parse(dpExpires.SelectedValue));
            Session["UserName"] = dr["UserName"].ToString();
            Response.Redirect("userphone.aspx");
        }
        else
        {
            Literal lit = new Literal();
            lit.Text = "<script>alert('用户名或密码错误!')</script>";
            Page.Controls.Add(lit);
        }
        cn.Close();
    }
}