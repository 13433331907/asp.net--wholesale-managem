using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercomputer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {//未登录
            Response.Redirect("UserLogin.aspx");
        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=.;Initial Catalog=mana;User ID=sa;Password=123456";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = " INSERT INTO computer" + " ([No],[Name],[Color],[Cpu],[runMenory],[hardMenory],[Number],[Price])" + " VALUES(@No,@Name,@Color,@Cpu,@runMenory,@hardMenory,@Number,@Price)";
        cmd.Parameters.AddWithValue("@No", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Color", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Cpu", TextBox8.Text);
        cmd.Parameters.AddWithValue("@runMenory", TextBox4.Text);
        cmd.Parameters.AddWithValue("@hardMenory", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Number", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Price", TextBox7.Text);
        cn.Open();
        int r = cmd.ExecuteNonQuery();
        cn.Close();
        string msg;
        if (r > 0)
            msg = "<script>alert('添加成功')</script>";
        else
            msg = "<script>alert('添加失败')</script>";
        Literal lit = new Literal();
        lit.Text = msg;
        Page.Controls.Add(lit);
    }
}