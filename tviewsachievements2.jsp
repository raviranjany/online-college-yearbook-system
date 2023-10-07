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
            <li><a href="teacherhome.jsp">Home</a></li>
            <li><a href="tupdateprofile.jsp">Update Profile</a></li>
            <li><a href="tviewachievements.jsp" class="active">View Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
        <%
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        String username = request.getParameter("username");
        
        String sql="select * from studentevents where yr = '"+year+"' and username = '"+username+"' and branch = '"+branch+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        String rno = null;
        String image = null;
        String fbid = null;
        String dob = null;
        String email = null;
        String mobile = null;
        String address = null;
        String about = null;
        
        while(rs.next()){
            rno = rs.getString("rno");
            image = rs.getString("image");
            dob = rs.getString("dob");
            email = rs.getString("email");
            mobile = rs.getString("mobile");
            fbid = rs.getString("fbid");
            address = rs.getString("address");
            about = rs.getString("about");
        }
	%>
        <br/><br/>
        <center>
     <br/>   
    <h2><font color="black" >Student Achievement </font></h2>
    <table width="201" border="1.5" cellpadding="0" cellspacing="0"  >

    
    <tr>
    <td width="126" rowspan="14"><div class="style7" style="margin:10px 13px 10px 13px;" >
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
    <strong><font color="black">Branch : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="branch" size="25" readonly="" value="<%=branch%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Year : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="year" size="25" readonly="" value="<%=year%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Roll No : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="rno" size="25" readonly="" value="<%=rno%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Date of Birth : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="dob" size="25" readonly="" value="<%=dob%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black"> Email : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="email" size="25" readonly="" value="<%=email%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Mobile : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="mobile" size="25" readonly="" value="<%=mobile%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Face Book ID : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="fbid" size="25" readonly="" value="<%=fbid%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black"> Address : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
    <input type="text" name="address" size="25" readonly="" value="<%=address%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">About him/her : </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
    <input type="text" name="about" size="25" readonly="" value="<%=about%>"></div></td>
    </tr>
    
    
    </table>
    <br/><br/><a href="tviewsachievements.jsp"><button type="button">Back</button></a></div></td>
    </center>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>
</body>

</html>