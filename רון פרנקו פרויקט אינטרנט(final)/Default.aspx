<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%if(Session["login"]==null)
  Response.Redirect("unknowuser.aspx"); %>
<head runat="server">
    <title>ron</title>
    <script src="http://code.jquery.com/jquery-1.11.2.js"></script>
    <script src="JavaScript.js"></script>
    <link rel="stylesheet" type="text/css" href="SuperStyle.css" />
</head>
<body>
<div id="logout" ><a href="LogOut.aspx">log-out</a></div>
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
            a plot about the main characters,
            <br />
            and information about the upcoming season
            <br />
		</p>
		</div>
		


		<div id="box2" class="boxes"> <!--plot-->
		<h1>
			plot
		</h1>
		<p>
			The Big Bang Theory is a popular American sitcom from Chuck Lorre Productions and Warner Bros. Television, which airs on the CBS television network in the United States. The Big Bang Theory premiered on September 24, 2007 and has recently completed its eighth season. The Big Bang Theory was renewed for three seasons in March 2014, taking the show through to its tenth season in 2016/17. The show will return in September 2015 for its ninth season.
            The Big Bang Theory is now one of the most popular shows on U.S. television, ranking as the #1 sitcom during the 2012/13 season. The Big Bang Theory stars Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Mayim Bialik and Melissa Rauch. The Big Bang Theory was created by Chuck Lorre and Bill Prady, both of whom serve as executive producers along with showrunner Steven Molaro. Bill Prady was the showrunner for the first five seasons.
            The Big Bang Theory is centered on physicists Sheldon Cooper and Leonard Hofstadter, whose geeky and introverted lives are changed when Penny, an attractive waitress and aspiring actress, moves into the apartment across from theirs. Penny quickly becomes a part of Sheldon and Leonard's social group, which includes the equally geeky engineer Howard Wolowitz and astrophysicist Raj Koothrappali, with Penny's common sense and social skills and the guys' geeky interests expanding each other's worlds. The newest additions to the group are Howard's wife Bernadette Rostenkowski-Wolowitz and Sheldon's girlfriend Amy Farrah Fowler.

		</p>
		</div>
		


		<div id="box3" class="boxes" style="padding-left:7%; padding-top:15%;"> <!--boys-->
		<h1>
			the boys
		</h1>
		<div class="flip3D">
			<div class="front"><img src="images/SC.jpg"/></div>
			<div class="back">
                <h2>
                    shaldon coper
                </h2>
                <h4>
                    Sheldon Cooper is a theoretical physicist at Caltech who lives with his best friend, Leonard Hofstadter. Sheldon is known for his brilliant mind but also his quirky behavior and idiosyncrasies. Sheldon has a hard time understanding sarcasm and is, with the exception of his close friends and girlfriend Amy, uncomfortable with most social situations. Sheldon is extremely logical, but this comes at a cost of often being rude of condescending to others. Although Sheldon's friends are often the subject of his put downs and narcissistic behavior, they have generally learned to live with Sheldon's quirks. Bernadette says that Sheldon doesn't know when he's being mean as "the part of his brain that should know is getting a wedgie from the rest of his brain".
 
                </h4>
            </div>
		</div>

		<div class="flip3D">
			<div class="front"><img src="images/LH.jpg"/></div>
			<div class="back">
                <h2>
                    leonard hofstadter
                </h2>
                <h4>
                    Leonard Hofstadter is an experimental physicist at Caltech in Pasadena. Leonard is currently engaged to Penny, whom he lives across the hall from with Sheldon Cooper.
                    Although Leonard has many geeky interests and hobbies, he has been the most willing of the guys to try and socialize with people. Leonard's interest in Penny is the reason she became a part of their social group and helped bring the guys out of their shell.
                    Leonard is known for his black-framed glasses, natural-colored jackets and hoodies, which he usually wears over superhero or physics t-shirts, and he typically wears low-cut black Converse All Star sneakers. 
                </h4>
            </div>
		</div>

		<div class="flip3D">
			<div class="front"><img src="images/RC.jpg"/></div>
			<div class="back">
                <h2>
                    rajesh koothrappali
                </h2>
                <h4>
                    Raj Koothrappali is an Indian-born astrophysicist who lives in Pasadena and works at Caltech. Until recently, Raj was unable to talk to women due to his selective mutism. Raj usually needed a beer in his hand before he could even talk to the girls, including Penny with whom he had a one night stand of sorts.
                </h4>
            </div>
		</div>

		<div class="flip3D">
			<div class="front"><img src="images/HW.jpg"/></div>
			<div class="back">
                <h2>
                    howard wolowitz
                </h2>
                <h4>
                    Howard Wolowitz is an aerospace engineer and former NASA astronaut who works at Caltech in Pasadena. Howard is married to Bernadette Rostenkowski-Wolowitz and is best friends with Raj Koothrappali.
                    Howard's personality has changed over the years from an often inappropriate, budding ladies' man to being the first of the guys to get married and settle down. Among his friends and on the Internet, Howard and his online alter-ego Wolowizard had a creepy reputation. Howard was known for his inappropriate advances on just about any woman he came in contact with and his various schemes to meet women.
                </h4>
            </div>
		</div>
		</div>
		



        <div id="box4" class="boxes" style="padding-left:7%; padding-top:15%;"> <!--girls-->
		<h1>
			the girls
		</h1>
		<div class="flip3D">
			<div class="front"><img src="images/P.jpg"/></div>
			<div class="back" style="background-color:#ff9efc;">
                <h2>
                    Penny
                </h2>
                <h4>
                    Penny is a former waitress, actress and a current pharmaceutical sales rep. Originally from Omaha, Penny moved to California with dreams of becoming a Hollywood actress. Since 2007, Penny has lived in the apartment across the hall from Sheldon and Leonard, who is now her fiance.Penny's lack of education sets her apart from the guys and Amy and Bernadette, though she has street smarts which many of the others lack. Penny has also proved to be very handy as a result of growing up on a farm, where she rebuilt a tractor engine at the age of twelve. Penny has been called on by the guys to defeat spiders and online hackers. In 2012, Penny went back to school for some history and psychology classes, although she initially kept it quiet from Leonard who she felt would make a big deal about it.
                </h4>
            </div>
		</div>

		<div class="flip3D">
			<div class="front"><img src="images/AF.jpg"/></div>
			<div class="back" style="background-color:#ff9efc;">
                <h2>
                    Amy Farrah Fowler
                </h2>
                <h4>
                    Amy Farrah Fowler, PH.D. is a neurobiologist who is dating Sheldon Cooper. After Amy's online dating profile was matched to one Howard and Raj set up for Sheldon without his permission, Sheldon was blackmailed by Howard into meeting her. When Amy admitted she only met up with him because she has an agreement with her mother to date once a year, and informed him that all forms of physical contact, up to and including coitus, were off the table, Sheldon offered to buy her a beverage.
                </h4>
            </div>
		</div>

		<div class="flip3D">
			<div class="front"><img src="images/BS.jpg"/></div>
			<div class="back" style="background-color:#ff9efc;">
                <h2>
                    Bernadette Rostenkowski
                </h2>
                <h4>
                    Bernadette Maryann Rostenkowski-Wolowitz is a microbiologist who is married to Howard Wolowitz. Although Bernadette is generally nice and good-natured, she has shown a dark side and admits she is a very vengeful person. When Bernadette is angry, she sounds a lot like Howard's mother.
                </h4>
            </div>
		</div>

		<div class="flip3D">
			<div class="front"><img src="images/ES.png" /></div>
			<div class="back" style="background-color:#ff9efc;">
                <h2>
                    Emily Sweeney
                </h2>
                <h4>
                    Emily Sweeney, M.D., is a dermatologist who found Raj through his dating site and contacted him. Raj replied through Amy. Emily is a cute redhead with a quirky sense of humor and likes horror movies and other gory things. She has three tattoos including a Sally rag doll from the horror movie "The Nightmare Before Christmas".
                </h4>
            </div>
		</div>
		</div>





		<div id="box5" class="boxes" style="color:black; padding-top:15%;"><!--quiz-->
		<h1>
			quiz
		</h1>
		    <table border="0px">
                <tr>
                    <td>
                        <b>what is penny last name</b>
                        <ol>
                            <li>falafel<input type="radio" name="question_one"></li>
                            <li>rostenkowski-wolowitz<input type="radio" name="question_one"></li>
                            <li>koothrappali<input type="radio" name="question_one"></li>
                            <li>Never mentioned<input id="one" type="radio" name="question_one"></li>
                        </ol>
                    </td>
                    <td>
                        <b>what is bernadette last name</b>
                        <ol>
                            <li>koothrappali<input type="radio" name="question_two"></li>
                            <li>never mantioned<input type="radio" name="question_two"></li>
                            <li>rostenkowski-wolowitz<input id="two" type="radio" name="question_two"></li>
                            <li>hofstadter <input type="radio" name="question_two"></li>
                        </ol>
                    </td>
                    <td>
                        <b>where is sheldon's spot</b>
                        <ol>
                            <li>center<input type="radio" name="question_three"></li>
                            <li>left<input type="radio" name="question_three"></li>
                            <li>right<input id="three" type="radio" name="question_three"></li>
                            <li>in the Chair in the living room<input type="radio" name="question_three"></li>
                        </ol>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>when sheldon see somebody angry what <br /> does he feel obligated to suggest</b>
                        <ol>
                            <li>hot beverages<input id="four" type="radio" name="question_four"></li>
                            <li>money<input type="radio" name="question_four"></li>
                            <li>comic book<input type="radio" name="question_four"></li>
                            <li>game of 3d chess<input type="radio" name="question_four"></li>
                        </ol>
                    </td>
                    <td>
                        <b>how many degrees howard have</b>
                        <ol>
                            <li>one<input type="radio" name="question_five"></li>
                            <li>two<input id="five" type="radio" name="question_five"></li>
                            <li>three<input type="radio" name="question_five"></li>
                            <li>he doesn't have any<input type="radio" name="question_five"></li>
                        </ol>
                    </td>
                    <td>
                        <b>what is raj's dog's name</b>
                        <ol>
                            <li>penny<input type="radio" name="question_six"></li>
                            <li>louis<input type="radio" name="question_six"></li>
                            <li>Cinnamon<input id="six" type="radio" name="question_six"></li>
                            <li>Never mentioned<input type="radio" name="question_six"></li>
                        </ol>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>what is the name of raj's <br /> black hair girlfriend</b>
                        <ol>
                            <li>peeny<input type="radio" name="question_seven"></li>
                            <li>emily<input type="radio" name="question_seven"></li>
                            <li>Cinnamon<input type="radio" name="question_seven"></li>
                            <li>lucy<input id="seven" type="radio" name="question_seven"></li>
                        </ol>
                    </td>
                    <td>
                        <b>where does leonard originally from &nbsp;&nbsp;&nbsp;</b>
                        <ol>
                            <li>texas<input type="radio" name="question_eight"></li>
                            <li>new york<input type="radio" name="question_eight"></li>
                            <li>new jersey<input id="eight" type="radio" name="question_eight"></li>
                            <li>england<input type="radio" name="question_eight"></li>
                        </ol>
                    </td>
                    <td>
                        <b>what is sheldon's favorite number in binary</b>
                        <ol>
                            <li>0101011<input type="radio" name="question_nine"></li>
                            <li>1011100<input type="radio" name="question_nine"></li>
                            <li>1000101<input type="radio" name="question_nine"></li>
                            <li>1001001<input id="nine" type="radio" name="question_nine"></li>
                        </ol>
                    </td>
                </tr>
            </table>
            <input type="button" id="quiz_button" value="check answers" onclick="quiz_function()">
            <div id="quiz_ans"></div>
		</div>
		
		

		
		<!--link to the under pages-->
		<div id="a1"><a href="#box1">home</a></div>
		<div id="a2"><a href="#box2">plot</a></div>
		<div id="a3"><a href="#box3">boys</a></div>
        <div id="a4"><a href="#box4">girls</a></div>
		<div id="a5"><a href="#box5">quiz</a></div>

</body>
</html>
