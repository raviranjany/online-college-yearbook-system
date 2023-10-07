
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String id = request.getParameter("id");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    
    try{
       
    PreparedStatement ps = connection.prepareStatement("update reg set email='"+email+"',address='"+address+"',mobile='"+mobile+"' where username = '"+username+"' and id = '"+id+"'");
    ps.executeUpdate();
    response.sendRedirect("supdateprofile.jsp?msg=success");
    
    }
    
    catch(Exception e1)
    {
        response.sendRedirect("supdateprofile.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   