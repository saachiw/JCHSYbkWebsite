<!DOCTYPE HTML>
<%
//gets student id from the 
String quote_stid=request.getParameter("student_id");
%>	

<html>

<head>
  <title>Johns Creek Yearbook</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">
    <header>
      <div id="logo"><h1><a href="index.html">jc</a>yearbook</h1></div>
<nav>
        <ul class="lavaLampWithImage" id="lava_menu">
		  <li><a href="index.html">your yearbook.</a>
		  <li class="current"><a href="your_senior_quote.jsp">your senior quote.</a></li>
          <li><a href="your_senior_superlatives.jsp">your superlatives.</a></li>
		  <li><a href="register_your_club.jsp">your clubs.</a></li>
		  <li><a href="your_story.jsp">your story.</a></li>

        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
           <li class="show"><img width="450" height="450" src="jclogos/1.jpg" alt="photo_one" /></li>
            <li><img width="450" height="450" src="jclogos/2.jpg" alt="photo_two" /></li>
            <li><img width="450" height="450" src="jclogos/3.jpg" alt="photo_three" /></li>
            <li><img width="450" height="450" src="jclogos/4.jpg" alt="photo_four" /></li>
            <li><img width="450" height="450" src="jclogos/5.png" alt="photo_five" /></li>
          </ul>
        </div>
      </div>
      <div id="content">
        <h1>entering your senior quote.</h1>
			<p>Please enter your quote below. If your quote is not school-appropriate, it will be deleted. You may come back and change your quote at any time before DATE, but after that all quotes are final. For any questions, stop by the yearbook room or email us at <a href = mailto: johnscreekyearbook@gmail.com>johnscreekyearbook@gmail.com</a>.</p>
			<form method="post" action="update_student_quote.jsp">
			<fieldset style="width: 300px">
			<legend></legend>
				<input type='hidden' name='student_id' value=<%=quote_stid%>>
				<input type='hidden' name='authenticated'>
				<table>
						<tr>
							<td>Quote</td>
							<td> <input type='textarea' name='quote'></td>
						</tr>
						<tr>
							<td><input type='submit' value='add quote'> </td>
						</tr>
					</table>
			</form>
		</div>
    </div>
    <footer>
<p><a href="index.html">your yearbook.</a> | <a href="your_senior_quote.jsp">your senior quote.</a> | <a href="your_senior_superlatives.jsp">your superlatives.</a> | <a href="register_your_club.jsp">your clubs.</a> | <a href="your_story.jsp">your story.</a></p>      <p>&copy; 2012 my portfolio two. All Rights Reserved. | <a href="http://www.css3templates.co.uk">design from css3templates.co.uk</a></p>
    </footer>
  </div>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.lavalamp.min.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
    $(function() {
      $("#lava_menu").lavaLamp({
        fx: "backout",
        speed: 700
      });
    });
  </script>
</body>
</html>
