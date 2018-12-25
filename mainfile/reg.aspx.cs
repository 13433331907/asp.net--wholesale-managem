using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=.;Initial Catalog=mana;User ID=sa;Password=123456";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = " INSERT INTO kehu" + " ([No],[Pwd],[Name],[Email],[Tel])" + " VALUES(@No,@Pwd,@Name,@Email,@Tel)";
        cmd.Parameters.AddWithValue("@No", txtNo.Text);
        cmd.Parameters.AddWithValue("@Pwd", txtPwd.Text);
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Tel", txtTelephone.Text);

        cn.Open();
        int r = cmd.ExecuteNonQuery();
        cn.Close();


        string msg;
        if (r > 0)
        {
            msg = "<script>alert('注册成功')</script>";
            Response.Redirect("Default2.aspx");
        }
        else
            msg = "<script>alert('注册失败')</script>";
        Literal lit = new Literal();
        lit.Text = msg;
        Page.Controls.Add(lit);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.txtNo.Text = " ";
        this.txtPwd.Text = " ";
        this.txtConfirm.Text = " ";
        this.txtName.Text = " ";
        this.txtEmail.Text = " ";
        this.txtTelephone.Text = " ";
    }

    protected void txtNo_TextChanged(object sender, EventArgs e)
    {
        
    }
}