
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String username = request.getParameter("username");
    String year = request.getParameter("year");
    String rno = request.getParameter("rno");
    String branch = request.getParameter("branch");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String fbid = request.getParameter("fbid");
    String address = request.getParameter("address");
    String about = request.getParameter("about");
    String image = request.getParameter("image");
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("insert into studentevents(username,rno,yr,branch,dob,email,mobile,fbid,address,about,image) values(?,?,?,?,?,?,?,?,?,?,?)");

    ps.setString(1,username);    
    ps.setString(2,rno);
    ps.setString(3,year);
    ps.setString(4,branch);
    ps.setString(5,dob);
    ps.setString(6,email);    
    ps.setString(7,mobile);
    ps.setString(8,fbid);
    ps.setString(9,address);
    ps.setString(10,about);
    ps.setString(11,image);
    ps.executeUpdate();


    response.sendRedirect("addsachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
        response.sendRedirect("addsachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   