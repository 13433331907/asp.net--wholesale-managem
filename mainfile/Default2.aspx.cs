using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=.;Initial Catalog=mana;User ID=sa;Password=123456";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = "Select*from kehu where No=@No and Pwd=@Pwd";
        cmd.Parameters.Add("@No", SqlDbType.Char, 8).Value = txtUserName.Text.Trim();
        cmd.Parameters.Add("@Pwd", SqlDbType.Char, 8).Value = txtPassword.Text.Trim();

        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Response.Cookies["No"].Value = txtUserName.Text.Trim();
            Response.Cookies["Pwd"].Value = txtPassword.Text.Trim();
            Response.Cookies["No"].Expires = DateTime.Now.AddDays(int.Parse(dpExpires.SelectedValue));
            Response.Cookies["Pwd"].Expires = DateTime.Now.AddDays(int.Parse(dpExpires.SelectedValue));
            Session["Name"] = dr["Name"].ToString();
            Response.Redirect("phone.aspx");
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