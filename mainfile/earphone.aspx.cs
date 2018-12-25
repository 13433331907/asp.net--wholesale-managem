using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class earphone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {//未登录
            Response.Redirect("Default2.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=.;Initial Catalog=mana;User ID=sa;Password=123456";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = " INSERT INTO yuding" + " ([No],[Number],[kehuName],[kehuPhone])" + " VALUES(@No,@Number,@kehuName,@kehuPhone)";
        cmd.Parameters.Add("@No", SqlDbType.Char, 10).Value = ddlNo.SelectedValue;
        cmd.Parameters.AddWithValue("@Number", txtNumber.Text);
        cmd.Parameters.AddWithValue("@kehuName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@kehuPhone", TextBox2.Text);
        cn.Open();
        int r = cmd.ExecuteNonQuery();
        cn.Close();
        string msg;
        if (r > 0)
            msg = "<script>alert('订购成功')</script>";
        else
            msg = "<script>alert('订购失败')</script>";
        Literal lit = new Literal();
        lit.Text = msg;
        Page.Controls.Add(lit);
    }
}