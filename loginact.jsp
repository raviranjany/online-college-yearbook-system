<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
           
    <%
        String username = request.getParameter("username");
       String password = request.getParameter("password");
       String utype = request.getParameter("utype");
       
       if(utype.endsWith("Admin")){
       
       String query = "select *from login where username='"+username+"' and password='"+password+"' and utype = '"+utype+"'";
       Statement st = connection.createStatement();
       ResultSet rs = st.executeQuery(query);
       if(rs.next()){
        
        response.sendRedirect("adminhome.jsp?msg=success");   
       }
       else{
           response.sendRedirect("login.jsp?m1=Failed");
       }
       }
       
       if(utype.endsWith("Student")){
       
       String query = "select *from login where username='"+username+"' and password='"+password+"' and utype = '"+utype+"'";
       Statement st = connection.createStatement();
       ResultSet rs = st.executeQuery(query);
       if(rs.next()){    
       
       session.setAttribute("user", username);
       response.sendRedirect("studenthome.jsp?msg=success");
       }
       else{
           response.sendRedirect("login.jsp?m1=Failed");
       }
       }
       
       if(utype.endsWith("Teacher")){
       
       String query = "select *from login where username='"+username+"' and password='"+password+"' and utype = '"+utype+"'";
       Statement st = connection.createStatement();
       ResultSet rs = st.executeQuery(query);
       if(rs.next()){    
       session.setAttribute("user", username);
       response.sendRedirect("teacherhome.jsp?msg=success");
       }
       else{
           response.sendRedirect("login.jsp?m1=Failed");
       }
    }
       
       
       %>


                               

                            

                        %>
