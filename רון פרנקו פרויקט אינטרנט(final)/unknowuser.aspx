<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unknowuser.aspx.cs" Inherits="unknowuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.11.2.js"></script>
    <script src="JavaScript.js"></script>
    <link rel="stylesheet" type="text/css" href="SuperStyle.css" />
</head>
<body>
    <div id="box1" class="boxes"> <!--home-->
		<h1>
			the big bang theory website
		</h1>
		<p>
			this is the big bang theory fan website , this website contain
            <br />
            a quiz about the big bang theory,
            <br />
            a plot about the series,
            <br />
            a plot about the main charictors,
            <br />
            and information abuot the upcoming season
            <br />
            but for all of those things you have to <a href="#box2" style="color:Blue;">Sign Up</a>
		</p>
		</div>

		<div id="box2" class="boxes"><!--Sign Up-->
		<h1>
			Sign Up
		</h1>
		<p>
		<form id="form" name="tofes" runat="server" action="unknowuser.aspx" method="post" onsubmit="return chack_all()">

        <div class="style1">
            <table>
        
        <tr>
        <td>user:</td>
        <td><input type="text" id="text1" name="text1" /></td>
        </tr>

        <tr>
        <td>last-name</td>
        <td><input type="text" id="text2" name="text2" /></td>
        </tr>

        <tr>
        <td>password</td>
        <td><input type="password" id="password" name="password" /></td>
        </tr>

        <tr>
        <td>age</td>
        <td><input type="text" id="text3"  name="text3"/></td>
        </tr>

        <tr>
        <td>gender</td>
        <td>
            man:<input type="radio" id="radio1" name="radio" value="man" />
            woman:<input type="radio" id="radio2" name="radio" value="women" /></td>
        </tr>

        <tr>
        <td>hobbie</td>
        <td>
            <select id="DDL" name="DDL"><!--drop down list-->
            <option value="select hoby">select hoby</option>
            <option value="sport">sport</option>
            <option value="math">math</option>
            <option value="computer">computer</option>
            <option value="box">books</option>
            </select>
        </td>
        </tr>

        <tr>
        <td><input type="submit" id="submit"/></td>
        <td >already sing-up <a href="log-in.aspx" style="color:red;" />log-in</a></td>
        </tr>
        
    </table>
        </div>
    </form>
		</p>
		</div>
		
		<!--link to the under pages-->
		<div id="a1"><a href="#box1">home</a></div>
		<div id="a2"><a href="#box2">sign up</a></div>
</body>
</html>
