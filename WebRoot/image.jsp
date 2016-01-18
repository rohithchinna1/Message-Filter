<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>


<% 

Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;

ResultSet rs = null;
String d=request.getParameter("dept");
String am=request.getQueryString();
try {
con = databasecon.getconnection();  
stmt = con.createStatement();

rs = stmt.executeQuery("select image from user_reg where sno = '"+am+"'");

while (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

}

// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 