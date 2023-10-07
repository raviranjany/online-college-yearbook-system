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
            <li><a href="studenthome.jsp">Home</a></li>
            <li><a href="supdateprofile.jsp">Update Profile</a></li>
            <li><a href="sviewachievements.jsp" class="active">View Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2>Student Achievements</h2>
        <form action="sviewachievements2.jsp" method="post">
        <br>
        
        <select name="year" id="" required="">
        <option value="">--Select Year--</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
        <option value="2018">2018</option>
        <option value="2019">2019</option>
        <option value="2020">2020</option>
        <option value="2021">2021</option>
        <option value="2022">2022</option>
        <option value="2023">2023</option>
        <option value="2024">2024</option>
        <option value="2025">2025</option>
        <option value="2026">2026</option>
        <option value="2027">2027</option>
        <option value="2028">2028</option>
        <option value="2029">2029</option>
        <option value="2030">2030</option>
        </select>
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
        
        <br>
        <input type="submit" value="VIEW">
        <br>
        <br>
        </form>
    </div>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>
</body>

</html>