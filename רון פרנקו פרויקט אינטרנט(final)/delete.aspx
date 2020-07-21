<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    string del = Request.QueryString["x"];
    string sql1 = "Select * from AcsessTeble where FN=" + "'" + del + "'";
    System.Data.DataTable dataTable = MyDbase.SelectFromTable(sql1, "AccessFile.accdb");
    //Session["sug"] = dataTable.Rows[0]["sug"];

    string sql = "DELETE from AcsessTeble where username=" + "'" + del + "'";
    MyDbase.ChangeTable(sql, "AccessFile.accdb");
    Response.Redirect("admin.aspx");
 %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
