using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class unknowuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Write("<body dir='rtl'>");
            string user_name = Request.Form["text1"];
            string lest_name = Request.Form["text2"];
            string pass_word = Request.Form["password"];
            string age = Request.Form["text3"];
            string gender = Request.Form["radio"];
            string hoby = Request.Form["DDL"];

            string sql1 = "SELECT * FROM AcsessTeble WHERE FN=" + "'" + user_name + "'";
            System.Data.DataTable dt = MyDbase.SelectFromTable(sql1, "AccessFile.accdb");

            if (dt.Rows.Count == 0)
            {
                //string sql = "INSERT INTO AcsessTeble(FN,LN)" +"values(" + "'" + user_name + "','" + lest_name + "')";
                //MyDbase.ChangeTable(sql, "AccessFile.accdb");

                //string sql = "INSERT INTO AcsessTeble(FN)" +
                //   "values(" + "'" + user_name + "')";             

                string sql = "INSERT INTO AcsessTeble(FN,LN,PW,Age_fild,gender,hoby)" +
                "values(" + "'" + user_name + "','" + lest_name + "','" + pass_word + "','" + age + "','" + gender + "','" + hoby + "')";
                MyDbase.ChangeTable(sql, "AccessFile.accdb");

                Session["login"] = user_name;  // יצירת סשן עם שם משתמש 
                Response.Redirect("Success.aspx");
            }
            else
            {
                Response.Redirect("Erorr.aspx");
            }
        }
    }
}