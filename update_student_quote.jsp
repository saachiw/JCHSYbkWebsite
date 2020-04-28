<%@ page import="java.sql.*"%>
<%
String quote_stid=request.getParameter("student_id");
String stuquote = request.getParameter("quote");


 if(quote_stid != null && quote_stid != "") {
	 try{
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jchs_yearbook","jchs_ybk","JennyC123"); 

			PreparedStatement ps = con.prepareStatement("update senior_list set senior_quote=? where student_id=?");
			ps.setString(1,stuquote);
    		ps.setInt(2,Integer.parseInt(quote_stid));
    		int result = ps.executeUpdate();

		System.out.println("result="+result);
		con.close();
		request.getRequestDispatcher("confirmation.jsp").forward(request, response);
	 } catch(Exception e){ out.println(e);}  
 }
	 else {
		 request.getRequestDispatcher("error4.jsp").forward(request, response);
	 }
%>





