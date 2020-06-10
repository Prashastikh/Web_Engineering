<%@ page language="java" contentType="text/html"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.util.*"%>

<%@ page import="java.io.*"%>

<%

int a1=0,a2=0,a3=0,a4=0,a5=0;

Connection conn=null; 
ResultSet rs=null; 
Statement stmt=null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pika", "root", "");
String myquery;
out.write("<div style='color:green'>Successfully connected to the database!</div>");
 String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String ans1=request.getParameter("one"); 
if(request.getParameter("one")!=null){ 
	if(ans1.equals("Regina Falange"))
		a1=1;

	else a1=0;
}
String ans2=request.getParameter("two");
if(request.getParameter("two")!=null){ 
	if(ans2.equals("The Rembrandts"))
		a2=1;

	else a2=0;
}

String ans3=request.getParameter("three"); 
if(request.getParameter("three")!=null){ 
	if(ans3.equals("Muriel"))
		a3=1;

	else a3=0;
}

String ans4=request.getParameter("four"); 
if(request.getParameter("four")!=null){
	if(ans4.equals("Oh my goddd"))
		a4=1;

	else a4=0;
}

String ans5=request.getParameter("five"); 
if(request.getParameter("five")!=null){ 
	if(ans5.equals("Smelly Cat"))
		a5=1;
	else a5=0;
}

int tot=a1+a2+a3+a4+a5; 
if(fname!=""){ 
stmt=conn.createStatement();
myquery="INSERT INTO prashasti VALUES('"+fname+"','"+lname+"',"+tot+");";

stmt.executeUpdate(myquery); 
stmt.close();
}

stmt=conn.createStatement(); 
myquery="select * from prashasti"; 
rs=stmt.executeQuery(myquery);
%>

<html>

<head>

<title>Quiz Results</title>
<!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/css/mdb.min.css" rel="stylesheet">
<style>
      body {
          background-color: #DFEEEB;
      }
      table, td, th {
      border:1px solid black;
    }

    table {
      width:80%;  
    }

    td {
      text-align: center;
    }

    th, td {
      padding: 5px;
      font-family:verdana; 
    }


    tr {
        background-color: seashell;
    }

    tr:hover {
      background-color: #ffae45;
    }
</style>
</head>

<body>
<h1 align="center" style="color:aliceblue"><b>Quiz Scores</b></h1> <br/>

<table border="1" cellspacing="12px" cellpadding="12%" style="border:1px solid black; width: 60%" align="center"">

<tr style="background-color: #ffae45;">
<th><b>FName</b></th>
<th><b>LName</b></th>
<th><b>Score</b></th>
</tr>

<%

while(rs.next())

{

out.println("<tr>"); out.println("<td>"+rs.getString(1)+"</td>"); out.println("<td>"+rs.getString(2)+"</td>"); out.println("<td>"+rs.getString(3)+"</td>"); out.println("</tr>");
}

rs.close();

stmt.close();

conn.close();

%>
</table>
<br/><br/>
</body>
</html>
