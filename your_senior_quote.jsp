<!DOCTYPE HTML>
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
        <h1>enter your senior quote.</h1>
			<p>Enter the following information as it is in the school's database. If you encounter any errors, come to the yearbook room or email us at <a href = mailto: johnscreekyearbook@gmail.com>johnscreekyearbook@gmail.com</a>.</p>
			<form action="verify_student.jsp" method="post">
			<fieldset style="width: 300px">
				<legend></legend>
				<table>
					<tr>
						<td>First Name</td>
						<td><input type="text" name="first_name" required="required" /></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="last_name" required="required" /></td>
					</tr>
					<tr>
						<td>Student ID</td>
						<td><input type="text" name="student_id" required="required" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Check" /></td>
					</tr>
				</table>
			</fieldset>
			</form>
		</div>
    </div>
<p><a href="index.html">your yearbook.</a> | <a href="your_senior_quote.jsp">your senior quote.</a> | <a href="your_senior_superlatives.jsp">your superlatives.</a> | <a href="register_your_club.jsp">your clubs.</a> | <a href="your_story.jsp">your story.</a></p>    <footer>
      <p>&copy; 2012 my portfolio two. All Rights Reserved. | <a href="http://www.css3templates.co.uk">design from css3templates.co.uk</a></p>
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
