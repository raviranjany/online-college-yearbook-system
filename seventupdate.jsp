<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Online College Year Book</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
       
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Online College Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="adminhome.jsp">Home</a></li>
            <li><a href="teacherachievements.jsp">Teacher Achievements</a></li>
            <li><a href="studentachievements.jsp" class="active">Student Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>  
    
    

    <%
    String username = request.getParameter("username");
    String year = request.getParameter("yr");
    String event = request.getParameter("event");
    String id = request.getParameter("id");
    String description = request.getParameter("description");
    String image = request.getParameter("image");
    %>
    <center>
     <br/>   
     <h2><font color="black" >Achievement Details of <font color="red"> <%=username%></font> </font></h2>
    <table width="501" border="1.5" cellpadding="0" cellspacing="0"  >

    <form action="seventupdateact.jsp?image=<%=image%>" method="post">
    <tr>
    <td width="126" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
    <img height="200" width="120" src="Gallery\<%=image%>"></img></div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Name : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="username" size="25" readonly="" value="<%=username%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Teacher ID : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="id" size="25" readonly="" value="<%=id%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Year : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="year" size="25" required="" value="<%=year%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Event Name : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="event" size="25" required="" value="<%=event%>"></div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Description : </font></strong></div></td>
    <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="description" size="25" required="" value="<%=description%>"></div></td>
    </tr>

    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="UPDATE" /><br/><br/>
    </p>
    <div align="right">
    </div></td>
    </tr>
    </form>

    </table>
    </center> 
    
    
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>
</body>

</html>