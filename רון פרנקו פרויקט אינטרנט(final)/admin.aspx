<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%if (Session["admin"] == null)
      Response.Redirect("home.aspx");
       %>
<head runat="server">
    <title></title>
</head>
<body>
     <center>
    <font style="font-size:25px; color:Blue; font-family:Arial;"><b><u>רשימת משתמשים</u></b> </font>
    </center> 
<br />
<br />
<%
    //הצגת טבלת משתמשים מלאה עם אפשרות לעריכה ומחיקת רשומות
    string sql1 = "SELECT * FROM AcsessTeble";
    System.Data.DataTable dt = MyDbase.SelectFromTable(sql1, "AccessFile.accdb");

     Response.Write("<center><table bgcolor=#9BBBA0 dir='rtl'  border='1'>");
     Response.Write("<tr bgcolor='white'><th>שם משתמש</th><th>שם משפחה</th><th>סיסמא</th><th>גיל</th><th>מין</th><th>תחביב</th>"
     +"<th>ערוך</th><th>מחק</th></tr>");
     for (int i = 0; i < dt.Rows.Count; i++)
     {
         Response.Write("<tr>");
         for (int k = 0; k < dt.Columns.Count; k++)
         {
             Response.Write("<td><font size=2 face=Arial>" + dt.Rows[i][k] + "</td>");
         }
         
         Response.Write("<td><a href=edit.aspx?y=" + dt.Rows[i]["FN"] + "><font size=1 face=Arial> עריכה</a></td>");
         Response.Write("<td><a href=delete.aspx?x=" + dt.Rows[i]["FN"] + "><font size=1 face=Arial> מחק</a></td>");
         Response.Write("</tr>");

     }
     Response.Write("</table>");
    
%>
<br /><br />
<a href="k5.aspx"> <font style="font-size:25px; color:Blue; font-family:Arial;">חזרה לעמוד המנהל</font></a>
   
</body>
</html>