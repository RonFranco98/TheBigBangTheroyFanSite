<%@ Page Language="C#" AutoEventWireup="true" CodeFile="log-in.aspx.cs" Inherits="log_in" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.11.2.js"></script>
    <script src="JavaScript.js"></script>
    <link rel="stylesheet" type="text/css" href="SuperStyle.css" />
</head>
<body>
    <div id="#box1" class="boxes" style="background-color:#FF5C33;"><!--log-in-->
		<h1>
			log-in
		</h1>
		<form id="form2" name="LogIn" runat="server" action="log-in.aspx" method="post" onsubmit="return chack_all()">

        <div class="style1">
        <table>
        
        <tr>
        <td>user:</td>
        <td><input type="text" id="text1" name="text1" /></td>
        </tr>

        <tr>
        <td>password</td>
        <td><input type="password" id="password" name="password" /></td>
        </tr>

        <tr>
        <td><input type="submit" id="submit"/></td>
        <td></td>
        </tr>
        
    </table>
        </div>
    </form>
</body>
</html>
