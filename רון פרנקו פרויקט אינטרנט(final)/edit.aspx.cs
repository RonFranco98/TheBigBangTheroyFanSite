using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            string UName2 = Request.Form["username"];
            string Pass2 = Request.Form["password"];
            string FName2 = Request.Form["firstname"];
            string LName2 = Request.Form["lastname"];
            string sex2 = Request.Form["sex"];
            string Area2 = Request.Form["area"];
            string City2 = Request.Form["add_city"];
            string Street2 = Request.Form["add_street"];
            string SNum2 = Request.Form["add_num"];
            string Mail2 = Request.Form["mail"];
            string HomeNum2 = Request.Form["homenum"];
            string CellNum2 = Request.Form["cellnum"];

            string sql1 = string.Format("UPDATE tUsers SET username ='{0}', pass ='{1}', firstname ='{2}', lastname ='{3}', sex ='{4}', area ='{5}', add_city ='{6}', add_street ='{7}', add_num ='{8}', mail ='{9}', homenum ='{10}',cellnum = '{11}' WHERE (username ='{12}')", UName2, Pass2, FName2, LName2, sex2, Area2, City2, Street2, SNum2, Mail2, HomeNum2, CellNum2, UName2);
            MyDbase.ChangeTable(sql1, "tUsers.accdb");
            Response.Redirect("ShowUsersTable.aspx");
        }
    }
}