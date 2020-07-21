using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class log_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string username = Request.Form["text1"];
            string pass = Request.Form["password"];


            string sql1 = "SELECT * From AcsessTeble where FN ='" + username + "' and PW ='" + pass + "'";

            System.Data.DataTable dt = MyDbase.SelectFromTable(sql1, "AccessFile.accdb");
            if (dt.Rows.Count == 0)
            {
                Response.Redirect("user_name_not_exist.aspx");
            }

            else
            {
                if (username == "ron123")
                {
                    Session["admin"] = "yes";
                    Response.Redirect("admin.aspx");
                }
                Session["login"] = username;  // יצירת סשן עם שם משתמש 
                Response.Redirect("Default.aspx");
            }

        }
    }
}