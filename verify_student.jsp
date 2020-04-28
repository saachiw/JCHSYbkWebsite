<%@ page import="java.sql.*"%>
<%
//get the informations from the form and initially, set the student as nonexistant
String fname=request.getParameter("first_name");
String lname=request.getParameter("last_name");
String sid=request.getParameter("student_id");
boolean authenticated=false;
boolean exists=false;
int length = String.valueOf(sid).length();

//if everything is good
if(fname!=null && fname != ""  && lname !=null && lname != "" && sid !=null && sid != "") {	
	//if (length == 10) {
	
		//process the info
		//out.println("\n Entering fname section where fname= "+fname+" and last name = "+lname+" and student id = " +sid);
		//System.out.println("fname="+fname);

		try {
			//out.println("in Try block\n");
		
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jchs_yearbook","jchs_ybk","JennyC123"); 
			//out.println("AM here...should have a connecttion now");
			//out.println("con=" +con);

			Statement stmt=con.createStatement();

			String query = "select student_id from senior_list where first_name='"+fname+"' and last_name='"+lname+"' and student_id='"+sid+"'";
			//out.println(query);
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) { 
				System.out.println(rs.getInt(1));  
				authenticated=true;
				session.setAttribute("sid", sid);
			}
			con.close();  
	}  catch(Exception e){ System.out.println(e);} 
	//}	else out.println("stid length wrong");
		//out.println("exiting the main processsing block");
	}  
	//some things are bad, so print error message
	else {
		//out.println("Error: One of the three inputs are missing.");
		request.getRequestDispatcher("error1.jsp").forward(request, response);
	}
//if the student exists with correct information in the database, send to quote form
if(authenticated) {
	// out.println("authenticated= "+authenticated);
	// out.println("Found because authenticated..... sid ="+ sid);
	request.getRequestDispatcher("quote_form.jsp").forward(request, response);
} 
//error, student authentication failed
else {
	try {
		//out.println("in Try block\n");
	
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jchs_yearbook","jchs_ybk","JennyC123"); 
		//out.println("AM here...should have a connecttion now");
		//out.println("con=" +con);

		Statement stmt=con.createStatement();

		String query = "select student_id from senior_list where first_name='"+fname+"' and last_name='"+lname+"'";
		//out.println(query);
		ResultSet rs=stmt.executeQuery(query);
		while(rs.next()) { 
			exists = true;
		}
		con.close();  
	} catch(Exception e){ System.out.println(e);} 
	if(exists) {
		//out.println("Student name found, incorrect student ID");
		request.getRequestDispatcher("error2.jsp").forward(request, response);
	} else {
		//out.println("Error: Student name and student ID do not match");
		request.getRequestDispatcher("error3.jsp").forward(request, response);
	}
}
%>
