<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Online College Year Book</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Profile Updated Successfully..!');</script> 
        <%}%>
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Failed..!');</script> 
        <%}%>
    
    <header class="main-header">
        <center><h1>Online College Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="teacherhome.jsp">Home</a></li>
            <li><a href="tupdateprofile.jsp" class="active">Update Profile</a></li>
            <li><a href="tviewachievements.jsp">View Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <br/>
        <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>  
        
        <%
        String user = session.getAttribute("user").toString();
        String sql = "select * from reg where username = '"+user+"'";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        String id = null;
        String email = null;
        String address = null;
        String mobile = null;
        if(rs.next()){
            id = rs.getString("id");
            email = rs.getString("email");
            address = rs.getString("address");
            mobile = rs.getString("mobile");
            
        }
        
        
        %>
        <center>
     <br/>   
     <h2><font color="black" >Details of <font color="red"> <%=user%></font> </font></h2>
    <table width="501" border="1.5" cellpadding="0" cellspacing="0"  >

    <form action="tupdateprofileact.jsp" method="post">
    
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Name : </font></strong></div></td>
    <td  width="146" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="username" size="25" readonly="" value="<%=user%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Student ID : </font></strong></div></td>
    <td  width="146" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="id" size="25" readonly="" value="<%=id%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Email : </font></strong></div></td>
    <td  width="146" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="email" size="25" required="" value="<%=email%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Address : </font></strong></div></td>
    <td  width="146" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="address" size="25" required="" value="<%=address%>"></div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Mobile : </font></strong></div></td>
    <td  width="146" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="mobile" size="25" required="" value="<%=mobile%>"></div></td>
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