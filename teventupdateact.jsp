
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
   String username = request.getParameter("username");
    String year = request.getParameter("year");
    String designation = request.getParameter("designation");
    String branch = request.getParameter("branch");
    String dob = request.getParameter("dob");
    String qualificaion = request.getParameter("qualificaion");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String exp = request.getParameter("exp");
    String specialization = request.getParameter("specialization");
    String subjects = request.getParameter("subjects");
    String image = request.getParameter("image");
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("update teacherevents set designation='"+designation+"',dob='"+dob+"',qualificaion='"+qualificaion+"',email='"+email+"',mobile='"+mobile+"',exp1='"+exp+"',specialization='"+specialization+"',subjects='"+subjects+"' where username = '"+username+"'");
    ps.executeUpdate();

    response.sendRedirect("viewtachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
     //   response.sendRedirect("viewtachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   