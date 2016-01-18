<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%
try
{

String l2 = (String) session.getAttribute("l1");
String stus = (String) session.getAttribute("str6");


Connection con = databasecon.getconnection();
Statement st = con.createStatement();

String sts ="update user_reg set status='"+stus+"' where user_reg_id='"+l2+"'"; 

int x = st.executeUpdate(sts);


if(x!=0)
{

}
response.sendRedirect("index.html");
}

catch(Exception e)
{
out.print(e);

}

%>

</body>
</html>
