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
        <script>alert('Success..!');</script> 
        <%}%>
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Failed..!');</script> 
        <%}%>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="adminhome.jsp">Home</a></li>
            <li><a href="teacherachievements.jsp" class="active">Teacher Achievements</a></li>
            <li><a href="studentachievements.jsp">Student Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2>Add Achievements</h2>
        <form action="addtachievementsact.jsp" method="post">
        <br>
        
        <select name="year" id="" required="">
        <option value="">--Select Year--</option>
        <option value="2005">2005</option>
        <option value="2006">2006</option>
        <option value="2007">2007</option>
        <option value="2008">2008</option>
        <option value="2009">2009</option>
        <option value="2010">2010</option>
        <option value="2011">2011</option>
        <option value="2012">2012</option>
        <option value="2013">2013</option>
        <option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
        <option value="2018">2018</option>
        <option value="2019">2019</option>
        <option value="2020">2020</option>
        </select>
        <br>
        <input type="text" placeholder="Name" name="username" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Designation" name="designation" required="" autocomplete="off">
        <br>
        
        <select name="branch" id="" required="">
        <option value="">--Select Branch--</option>
        <option value="CSE">CSE</option>
        <option value="IT">IT</option>
        <option value="Automobile">Automobile</option>
        <option value="Civil">Civil</option>
        <option value="Mech">Mech</option>
        <option value="ECE">ECE</option>
        <option value="EEE">EEE</option>
        </select>
        <br>
        <input type="text" name="dob" required="" autocomplete="off" placeholder="DOB DD/MM/YYYY">
        <br>
        <input type="text" placeholder="Qualificaion" name="qualificaion" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Email ID" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Mobile No" name="mobile" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Work Experience" name="exp" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Specialization" name="specialization" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Subjects Taught" name="subjects" required="" autocomplete="off">
        <br><br/>
        <input type="file" name="image" required="" autocomplete="off">
        <br>
        
        <br>
        <input type="submit" value="ADD">
        <br>
        <br>
        </form>
    </div>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>
</body>

</html>