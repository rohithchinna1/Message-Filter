<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.security.SecureRandom"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>

<%

Connection con=null;
Connection con1=null;


PreparedStatement psmt1=null;
PreparedStatement psmt2=null;




String sname = (String) session.getAttribute("b1");
String sid=(String) session.getAttribute("l1");
String gname=(String) session.getAttribute("fb1");
String gid = (String) session.getAttribute("fl1");

try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("insert into friends(sender,sender_uid,getter,getter_uid,date) values(?,?,?,?,?)");

psmt1.setString(1,sname);
psmt1.setString(2,sid);
psmt1.setString(3,gname);
psmt1.setString(4,gid);
psmt1.setString(5,strDateNew1);


psmt1.executeUpdate();




response.sendRedirect("user_home.jsp");
}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>

</body>
</html>