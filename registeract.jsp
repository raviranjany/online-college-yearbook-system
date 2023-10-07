
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String id = request.getParameter("id");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    String utype = request.getParameter("utype");
    
    try{
       
    String sql = "select * from reg where username = '"+username+"'";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);
    if(rs.next()){
     response.sendRedirect("register.jsp?msg1=UserName_Already_Existed");   
    }
    else{ 
    PreparedStatement ps = connection.prepareStatement("insert into reg(id,username,password,email,address,mobile,utype) values(?,?,?,?,?,?,?)");

    ps.setString(1,id);
    ps.setString(2,username);    
    ps.setString(3,password);
    ps.setString(4,email);
    ps.setString(5,address);
    ps.setString(6,mobile);
    ps.setString(7,utype);
    ps.executeUpdate();

    PreparedStatement ps1 = connection.prepareStatement("insert into login(username,password,utype) values(?,?,?)");

    ps1.setString(1,username);    
    ps1.setString(2,password);
    ps1.setString(3,utype);
    ps1.executeUpdate();
    
    response.sendRedirect("login.jsp?msg=success");
    
    }
    }
    catch(Exception e1)
    {
        response.sendRedirect("register.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   