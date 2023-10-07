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
            <li><a href="index.html" >Home</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp" class="active">Register</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2>Registration Form</h2>
        <form action="registeract.jsp" method="post">
        <input type="text" placeholder="ID" name="id" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="User Name" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" name="password" required="" autocomplete="off">
        <br>
        <input type="email" placeholder="E-mail Id" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Address" name="address" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Contact No" name="mobile" required="" autocomplete="off">
        <br>
        
        <select name="utype" id="" required="">
        <option value="">--Select--</option>
        <option value="Teacher">Teacher</option>
        <option value="Student">Student</option>
        </select>
        <br>
        <br>
        <input type="submit" value="REGISTER">
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