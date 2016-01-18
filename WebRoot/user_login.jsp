<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<%
int a=0;
String b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null,l=null,m=null;
String idu = request.getParameter("uname");

String passu= request.getParameter("passw");


try
{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
//String sql="select uid,name,userAES_DECRYPT(email,'key') from user";
String sss1 = "select * from user_reg where user_id='"+idu+"' && pass='"+passu+"'";

ResultSet rs1=st1.executeQuery(sss1);
if(rs1.next())
{
a=rs1.getInt(1);
session.setAttribute("a1",a);
b=rs1.getString(2);
session.setAttribute("b1",b);
c=rs1.getString(3);
session.setAttribute("c1",c);
d=rs1.getString(4);
session.setAttribute("d1",d);
e=rs1.getString(5);
session.setAttribute("e1",e);
f=rs1.getString(6);
session.setAttribute("f1",f);
g=rs1.getString(7);
session.setAttribute("g1",g);
h=rs1.getString(8);
session.setAttribute("h1",h);
i=rs1.getString(9);
session.setAttribute("i1",i);
j=rs1.getString(10);
session.setAttribute("j1",j);
k=rs1.getString(11);
session.setAttribute("k1",k);
l=rs1.getString(12);
session.setAttribute("l1",l);
m=rs1.getString(13);
session.setAttribute("m1",m);

response.sendRedirect("user_home.jsp?message=success");
}
else
{

response.sendRedirect("index.html?message=fail");
}
}
catch(Exception  e1)
{
out.println(e1.getMessage());
}
%>
