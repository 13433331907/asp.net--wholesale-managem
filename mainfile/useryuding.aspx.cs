using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class useryuding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=.;Initial Catalog=mana;User ID=sa;Password=123456";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = " DELETE FROM yuding WHERE kehuName =@kehuName ";
        cmd.Parameters.Add("@kehuName", SqlDbType.VarChar, 20).Value = DropDownList1.SelectedValue;
        cn.Open();
        int r = cmd.ExecuteNonQuery();
        cn.Close();


        string msg;
        if (r > 0)
        {
            msg = "<script>alert('删除成功')</script>";
            Response.Redirect("useryuding.aspx");
        }
        else
            msg = "<script>alert('删除失败')</script>";
        Literal lit = new Literal();
        lit.Text = msg;
        Page.Controls.Add(lit);
    }
}