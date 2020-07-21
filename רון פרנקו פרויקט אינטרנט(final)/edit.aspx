<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<%if (Session["admin"] == null)
      Response.Redirect("home.aspx");
%>

 <script  type="text/javascript">
     //בדיקת כל הטופס - מפעיל בדיקות פרטניות
     function check_all() {
         var a = firstname_check();
         var b = username_check();
         var c = lastname_check();
         var d = sex_check();
         var e = area_check();
         var f = num_check();
         var g = pass_check();
         var h = mail_check();
         return a && b && c && d && e && f && g && h;
     }

     //שם המשתמש
     function username_check() {
         var x = document.getElementById("username").value;
         var ch = false;

         if (x == "") {//אם התיבה ריקה
             document.getElementById("msg_username").innerHTML = "אנא הכנס שם משתמש";
             document.getElementById("msg_username").style.color = "red";
             //שינוי צבע השדה על פי שם השדה
             document.getElementById("username").style.background = "#33FF33";
             return false;
         }
         else {
             document.getElementById("msg_username").innerHTML = "";
         }
         if (x.length < 6) {//אם השם קצר מידי
             document.getElementById("msg_username").innerHTML = "שם המשתמש חייב להכיל מינימום 6 תווים";
             //הסמן ימתין בשדה הטופס והטקסט הקצר מדי יבחר
             document.tofes.username.focus();
             document.tofes.username.select();

             return false;
         }
         else {
             document.getElementById("msg_username").innerHTML = "";
             //שינוי צבע השדה על פי שם השדה
             document.getElementById("username").style.background = "white";
         }
         for (var i = 0; i < x.length; i++) {//אם יש סימנים
             if ((x[i] < "A" || x[i] > "z") && (x[i] < "0" || x[i] > "9"))
                 ch = true;
         }
         if (ch) {
             document.getElementById("msg_username").innerHTML = "שם המשתמש יכול להכיל אותיות אנגליות ו/או מספרים בלבד!";
             return false;
         }
         else {
             document.getElementById("msg_username").innerHTML = "";
         }

         return true;
     }

     //בדיקת הסיסמה
     function pass_check() {
         var x = document.getElementById("password").value;
         var ch = false;
         var y = document.getElementById("check_password").value;

         if (x == "") {//אם התיבה ריקה
             document.getElementById("msg_pass").innerHTML = "אנא הכנס סיסמה";
             return false;
         }
         else {
             document.getElementById("msg_pass").innerHTML = "";
         }
         if (x.length < 6) {//אם הסיסמה קצרה מידי
             document.getElementById("msg_pass").innerHTML = "הסיסמה חייבת להכיל מינימום 6 תווים";
             return false;
         }
         else {
             document.getElementById("msg_pass").innerHTML = "";
         }
         for (var i = 0; i < x.length; i++) {//אם יש סימנים
             if ((x[i] < "A" || x[i] > "z") && (x[i] < "0" || x[i] > "9"))
                 ch = true;
         }
         if (ch) {
             document.getElementById("msg_pass").innerHTML = "הסיסמה יכולה להכיל אותיות אנגליות ו/או מספרים בלבד!";
             return false;
         }
         else {
             document.getElementById("msg_pass").innerHTML = "";
         }

         if (x != y) {//אם אימות הסיסמה שגוי
             document.getElementById("msg_pass").innerHTML = "אימות הסיסמה היה שגוי !!!";
             return false;
         }

         return true;
     }

     //חוזק סיסמה - בעת כתיבה
     function pass_strong() {

         var x = document.getElementById("password").value;
         var count = 0;
         var ch = false;

         for (var i = 0; i < x.length; i++) {//בודק קודם כל אם כתוב תקין
             if ((x[i] < "A" || x[i] > "z") && (x[i] < "0" || x[i] > "9"))
                 ch = true;
         }
         if (ch) {
             document.getElementById("msg_pass").innerHTML = "הסיסמה יכולה להכיל אותיות אנגליות ו/או מספרים בלבד!";
             document.getElementById("msg_pass").style.color = "White";
         }

         if (x.length < 6 && ch == false) {
             document.getElementById("msg_pass").innerHTML = "הסיסמה חייבת להכיל מינימום 6 תווים";
             document.getElementById("msg_pass").style.color = "White";
         }


         if (x.length >= 6 && ch == false) {

             for (i = 0; i < x.length; i++) { // בדיקה האם יש מספר בסיסמה
                 if ((x[i] >= 0) && (x[i] <= 9)) {
                     count++;
                     i = x.length;
                 }
             }
             for (var i2 = 0; i2 < x.length; i2++) { //בדיקה האם יש אות בסיסמה
                 if ((x[i2] >= 'A') && (x[i2] <= 'z')) {
                     count++;
                     i2 = x.length;
                 }
             }
             if ((x.length >= 10)) { //בדיקה אם אורך הסיסמה גדול מ10
                 count++;
             }

             if (count == 1) {
                 document.getElementById("msg_pass").innerHTML = "סיסמה חלשה";
                 document.getElementById("msg_pass").style.color = "Red";
             }
             if (count == 2) {
                 document.getElementById("msg_pass").innerHTML = "סיסמה בינונית";
                 document.getElementById("msg_pass").style.color = "Yellow";
             }
             if (count == 3) {
                 document.getElementById("msg_pass").innerHTML = "סיסמה חזקה";
                 document.getElementById("msg_pass").style.color = "Green";
             }
         }

     }

     //בדיקת שם פרטי
     function firstname_check() {
         var x = document.getElementById("firstname").value;
         var ch = false;

         if (x == "") {
             document.getElementById("msg_firstname").innerHTML = "אנא הכנס את שמך";
             return false;
         }
         else {
             document.getElementById("msg_firstname").innerHTML = "";
         }
         if (x.length < 2) {
             document.getElementById("msg_firstname").innerHTML = "השם חייב להכיל לפחות שתי אותיות";
             return false;
         }
         else {
             document.getElementById("msg_firstname").innerHTML = "";
         }
         for (var i = 0; i < x.length; i++) {
             if (x[i] < "א" || x[i] > "ת")
                 ch = true;
         }
         if (ch) {
             document.getElementById("msg_firstname").innerHTML = "כתוב את שמך באותיות עבריות בלבד!";
             return false;
         }
         else {
             document.getElementById("msg_firstname").innerHTML = "";
         }

         return true;
     }

     function lastname_check() {
         var x = document.getElementById("lastname").value;
         var ch = false;

         if (x == "") {
             document.getElementById("msg_lastname").innerHTML = "אנא הכנס שם משפחה";
             return false;
         }
         else {
             document.getElementById("msg_lastname").innerHTML = "";
         }
         if (x.length < 2) {
             document.getElementById("msg_lastname").innerHTML = "שם המשפחה חייב להכיל לפחות שתי אותיות";
             return false;
         }
         else {
             document.getElementById("msg_lastname").innerHTML = "";
         }
         for (var i = 0; i < x.length; i++) {
             if (x[i] < "א" || x[i] > "ת")
                 ch = true;
         }
         if (ch) {
             document.getElementById("msg_lastname").innerHTML = "כתוב את שמך באותיות עבריות בלבד!";
             return false;
         }
         else {
             document.getElementById("msg_lastname").innerHTML = "";
         }

         return true;
     }

     function sex_check() {
         if (document.getElementById("sex_fr").style.display == "none") {
             var x = document.getElementsByName("sex");
             var ch = false;

             if (x[0].checked || x[1].checked) {
                 ch = true;
                 document.getElementById("msg_sex").innerHTML = "";
             }
             else
                 document.getElementById("msg_sex").innerHTML = "הכנס את מינך";
             return ch;
         }
     }

     function area_check() {
         var x = document.getElementById("area");
         if (x[x.selectedIndex].value == "בחר אזור...") {
             document.getElementById("msg_area").innerHTML = "הכנס אזור מגורים";
             return false;
         }
         else
             document.getElementById("msg_area").innerHTML = "";
         return true;
     }

     function num_check() {

         var x = document.getElementById("homenum").value;
         var y = document.getElementById("cellnum").value;
         var ch = false;

         if (x != "" || y != "") {


             if (x != "") {
                 for (var i = 0; i < x.length; i++) {
                     if (x[i] < "0" || x[i] > "9")
                         ch = true;
                 }
                 if (ch) {
                     document.getElementById("msg_homenum").innerHTML = "השתרבב תו שאינו סיפרה למספר שלך";
                     return false;
                 }
                 else {
                     if (x.length == 10) {
                         switch (x.substring(0, 3)) {
                             case "050":
                             case "052":
                             case "054":
                             case "057":
                                 document.getElementById("msg_homenum").innerHTML = "אנא כתוב את מספר הסלולארי במקום המתאים";
                                 return false;
                                 break;
                             case "077":
                             case "073":
                             case "072":
                                 document.getElementById("msg_homenum").innerHTML = "";
                                 break;
                             default:
                                 document.getElementById("msg_homenum").innerHTML = "תבנית לא חוקית! קידומת לא מוכרת";
                                 return false;
                         }
                     }
                     else if (x.length == 9) {
                         switch (x.substring(0, 2)) {
                             case "050":
                             case "052":
                             case "054":
                             case "057":
                                 document.getElementById("msg_homenum").innerHTML = "אנא כתוב את מספר הטלפון הסלולארי במקום המתאים";
                                 return false;
                                 break;
                             case "02":
                             case "03":
                             case "04":
                                 document.getElementById("msg_homenum").innerHTML = "";
                                 break;
                             default:
                                 document.getElementById("msg_homenum").innerHTML = "תבנית לא חוקית! קידומת לא מוכרת";
                                 return false;
                         }
                     }
                     else {
                         document.getElementById("msg_homenum").innerHTML = "תבנית לא חוקית! מספר ספרות שגוי";
                         return false;
                     }
                 }
             }
             if (y != "") {
                 for (i = 0; i < y.length; i++) {
                     if (y[i] < "0" || y[i] > "9")
                         ch = true;
                 }
                 if (ch) {
                     document.getElementById("msg_cellnum").innerHTML = "השתרבב תו שאינו סיפרה למספר שלך";
                     return false;
                 }
                 else {
                     if (y.length == 10) {
                         switch (y.substring(0, 3)) {
                             case "050":
                             case "052":
                             case "054":
                             case "057":
                                 document.getElementById("msg_cellnum").innerHTML = "";
                                 break;
                             default:
                                 document.getElementById("msg_cellnum").innerHTML = "תבנית לא חוקית! קידומת לא מוכרת";
                                 return false;
                         }
                     }
                     else {
                         document.getElementById("msg_cellnum").innerHTML = "תבנית לא חוקית! מספר ספרות שגוי";
                         return false;
                     }
                 }

             }

         }
         else {
             document.getElementById("msg_homenum").innerHTML = "אתה חייב להכניס לפחות מספר אחד!";
             return false;
         }
         document.getElementById("msg_homenum").innerHTML = "";
         return true;
     }

     function mail_check() {


         var a = document.getElementById("mail").value;

         var b = a.split("."), c = a.split("@");
         var e = b[1];

         if (a[0] < 'a' || a[0] > 'z' || a[a.length - 1] < 'a' || a[a.length - 1] > 'z' || c.length != 2 || a.length <= 7 || e[0] == '@') {
             document.getElementById("msg_mail").innerHTML = "כתובת המייל שגויה";
             return false;
         }
         document.getElementById("msg_mail").innerHTML = "";
         return true;
     }
        </script>

<% 
    string editUser = Request.QueryString["y"];
    //string user;
        //if(Session["login"]!=null)
        //  user = Session["login"].ToString();
    string sql1 = "SELECT * From tUsers where username =" + "'" + editUser + "'";
        System.Data.DataTable dt = MyDbase.SelectFromTable(sql1, "tUsers.accdb");

        Session["u"] = dt.Rows[0]["username"];
        Session["firstname"] = dt.Rows[0]["firstname"];
        Session["lastname"] = dt.Rows[0]["lastname"];
        Session["pass"] = dt.Rows[0]["pass"];
        Session["add_city"] = dt.Rows[0]["add_city"];
        Session["add_street"] = dt.Rows[0]["add_street"];
        Session["add_num"] = dt.Rows[0]["add_num"];
        Session["mail"] = dt.Rows[0]["mail"];
        Session["homenum"] = dt.Rows[0]["homenum"];
        Session["cellnum"] = dt.Rows[0]["cellnum"];
        Session["area"] = dt.Rows[0]["area"];
%>


 <form id="tofes" name="tofes" runat="server" action="edit.aspx" method="post" onsubmit="return check_all()">
            <table border="0">
                <tr><td colspan="2"><h3>טופס עדכון </h3></td></tr>
                <tr>
                    <td><span >*</span>שם משתמש: </td>
                    <td><input type="text" value="<%=Session["u"]%>" id="username" name="username" /></td>
                    <td id="msg_username"></td>
                </tr>
                <tr><td colspan="2">שם המשתמש - מינימום 6 ספרות/מספרים.</td></tr>
                <tr>
                    <td><span >*</span>סיסמה: </td>
                    <td><input type="text" value="<%=Session["pass"]%>" id="password" name="password" onkeyup="pass_strong()" /></td>
                    <td id="msg_pass"></td>
                </tr>
                <tr><td colspan="2">6 תווים לפחות באותיות אנגליות ו/או מספרים.</td></tr>
                <tr>
                    <td><span >*</span>אימות סיסמה: </td>
                    <td><input type="password" value="<%=Session["pass"]%>" id="check_password" /></td>
                    <td id="msg_chpass"></td>
                </tr>
                <tr><td ></td></tr>
                <tr>
                    <td><span >*</span>שם פרטי: </td>
                    <td><input type="text" value="<%=Session["firstname"]%>" id="firstname" name="firstname" /></td>
                    <td id="msg_firstname"></td>
                </tr>
                <tr>
                    <td><span >*</span>שם משפחה: </td>
                    <td><input type="text" value="<%=Session["lastname"]%>" id="lastname" name="lastname" /></td>
                    <td id="msg_lastname"></td>
                </tr>
                <tr>
                    <td><span >*</span>מין: </td>
                    <td><input type="radio" name="sex" value="male" />זכר&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="sex" value="female" />נקבה </td>
                    <td id="msg_sex"></td><td id="sex_fr" style="display:none"></td>
                </tr>
                <tr>
                    <td><span >*</span>מיקום בארץ: </td>
                    <td><select id="Select1" name="area" style="width: 145px">
                       <option value="0" selected="selected" >בחר אזור...</option>
                       <option value="1" >אזור הכרמל</option>
                       <option value="2" >תל-אביב והסביבה</option>
                       <option value="3" >צפון הארץ</option>
                       <option value="4" >יהודה ושומרון</option>
                       <option value="5" >דרום הארץ</option>
                    </select></td>
                    <td id="msg_area"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        עיר: <input type="text"  value="<%=Session["add_city"]%>" name="add_city" style="width: 55px" />
                        רחוב: <input type="text" value="<%=Session["add_street"]%>" name="add_street" style="width: 103px" />
                        מס&#39;: <input type="text" value="<%=Session["add_num"]%>" name="add_num" style="width: 26px" />
                    </td>
                </tr>
                <tr>
                    <td><span >*</span>כתובת דוא&quot;ל: </td>
                    <td><input type="text" value="<%=Session["mail"]%>" id="mail" name="mail" /></td>
                    <td id="msg_mail"></td>
                </tr>
                <tr>
                    <td>מספר טלפון: </td>
                    <td><input type="text" value="<%=Session["homenum"]%>" id="homenum" name="homenum" maxlength="10"/></td>
                    <td id="msg_homenum"></td>
                </tr>
                <tr>
                    <td>מספר סלולארי: </td>
                    <td><input type="text" value="<%=Session["cellnum"]%>" id="cellnum" name="cellnum" maxlength="10"/></td>
                    <td id="msg_cellnum"></td>
                </tr>
                <tr><td style="height: 27px"></td></tr>
            <tr>
            <td>&nbsp;</td>
              <td>
                 <input type="submit" value="עדכן פרטים" />
              </td>
           </tr>
     </table>
   </form>
</asp:Content>

