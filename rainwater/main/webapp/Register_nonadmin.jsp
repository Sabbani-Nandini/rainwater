<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Parjanya</title>
<link rel="stylesheet" href="css styles.css">
  <style>
body, html {
  height: 100%;
  margin: 0;
}

* {
  box-sizing: border-box;
}

.bg-image {
  background-image: url("assets/img/p2.jpg");
  filter: blur(4px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.bg-text {
 
  background-color: #002a77;
  opacity: 0.9;
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top:50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 29%;
  height:80%;
  padding: 50px;
  text-align: center;
}
  </style>
<script>
    function validate() {
        var fname =document.forms.RegForm.fname.value;
        var lname =document.forms.RegForm.lname.value;
        var email =document.forms.RegForm.email.value;
        var password =document.forms.RegForm.password.value;
        var cpassword =document.forms.RegForm.cpassword.value;
        var regEmail=/^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/g; 							 
        var regName = /\d+$/g;								

        if (fname == "" || regName.test(fname)) {
            window.alert("Please enter your first name properly.");
            fname.focus();
            return false;
        }
        if (lname == "" || regName.test(lname)) {
            window.alert("Please enter your last name properly.");
            lname.focus();
            return false;
        }
        
        
        if (email == "" || !regEmail.test(email)) {
            window.alert("Please enter a valid e-mail address.");
            email.focus();
            return false;
        }
        
        if (password == "") {
            alert("Please enter your password");
            password.focus();
            return false;
        }

        if(password.length <6){
            alert("Password should be atleast 6 character long");
            password.focus();
            return false;

        }
       if(password!=cpassword){
        alert("mismatch between password and confirm password");
            password.focus();
            cpassword.focus();
            return false;
       }

        return true;
    }
</script>

</head>
<body>
<header>
        <div class="gradient">
          <div class="container">
            <h2 id="logo"><a href="Home.jsp"> parjanya </a></h2>	
            <nav>
              <a href="prac.html" class="menu_link active"> Welcome </a>
              <a href="prac.html" class="menu_link"> About </a>
              <a href="User_Login.jsp" class="menu_link">User Login</a>
              <a href="Admin_Login.jsp" class="menu_link">Employee Login </a>
              <a href="Home.jsp" class="menu_link"> Contact </a>
            </nav>
          </div>
        </div>
        </header>
<div class="bg-text">
<form name="RegForm" onsubmit="return validate()" action="user reg db.jsp" method="post">
<table align="center" cellpadding="20%" cellspacing="40%" width="50%",height="50%">
    <p style="text-align: center;font-size: larger;">Register</p>
<tr>
    <br>
    <td ><label for="fname"style="color: white;">First&nbspName</label></td>
<td><input type="text" name="fname"></td>
</tr>
<tr>
    <td ><label for="lname"style="color: white;">Last Name</label></td>
<td><input type="text" name="lname"></td>
</tr>
<tr>
    <td ><label for="email"style="color: white;">Email</label></td>
<td><input type="text" name="email"></td>
</tr>

<tr>
    <td ><label for="password"style="color: white;">Password</label></td>
<td><input type="password" name="password"></td>
</tr>
<tr>
    <td ><label for="Confirm Password"style="color: white;">Confirm Password</label></td>
<td><input type="password"name="cpassword"></td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Register Now"></td>
</tr>
</table>
</form>
</div>
</body>
</html>