<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>

<%
try
{
String a = request.getParameter("wctry");
String b = request.getParameter("wrd");


Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sss = "insert into filter_message(detail1,detail2) values('"+a+"','"+b+"')";
int x = st.executeUpdate(sss);


if(x!=0)
{



%>
<jsp:forward page="admin_home.jsp" />
<%
}

}

catch(Exception e)
{
out.print(e);

}

%>