<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New user for water supply</title>
<script>
    function validate() {
        var fname =document.forms.RegForm.fname.value;
        var lname =document.forms.RegForm.lname.value;
        var email =document.forms.RegForm.email.value;
        var contact =document.forms.RegForm.contact.value;
        var address =document.forms.RegForm.address.value;
        var regEmail=/^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/g; 
        var regPhone=/^\d{10}$/;									 
        var regName = /\d+$/g;						

        if (fname== "" || regName.test(fname)) {
            window.alert("Please enter your name properly.");
            fname.focus();
            return false;
        }
        if (lname== "" || regName.test(lname)) {
            window.alert("Please enter your name properly.");
            lname.focus();
            return false;
        }
        if (address == "") {
            window.alert("Please enter your address.");
            address.focus();
            return false;
        }
        
        if (email == "" || !regEmail.test(email)) {
            window.alert("Please enter a valid e-mail address.");
            email.focus();
            return false;
        }
        
       
        if (contact == "" || !regPhone.test(contact)) {
            alert("Please enter valid phone number.");
            contact.focus();
            return false;
        }
       alert("Your request has been submitted successfully");
        

        return true;
    }
</script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/img/imgtry/logo.png" type="image/icon">
    <title>Parjayna</title>
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
  background-image: url("assets/img/imgtry/p2.jpg");
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
  height:70%;
  padding: 50px;
  text-align: center;
}
  </style>

</head>
<body>
    <header>
        <div class="gradient">
          <div class="container">
            <h2 id="logo"><a href="Home.jsp"> parjanya </a></h2>	
            <nav>
              <a href="Home.jsp" class="menu_link active"> Welcome </a>
              <a href="Home.jsp" class="menu_link"> About </a>
              <a href="User_Login.jsp" class="menu_link">User Login</a>
              <a href="Admin_Login.jsp" class="menu_link">Employee Login </a>
              <a href="Home.jsp" class="menu_link"> Contact </a>
            </nav>
          </div>
        </div>
        </header>
<div class="bg-text">
<form name="RegForm" onsubmit="return validate()" action="Request to db.jsp">
    <table align="center" cellpadding="10%" cellspacing="20%" width="50%",height="50%">
<th style="text-align:center" colspan="2"><h1  style="color:white">REQUEST FOR WATER SUPPLY</h1></th>
<tr>
    <td ><label for="fname" style="color: white;">First&nbspName</label></td>

<td> <input type="text" name="fname" required></td>
</tr>
<tr>
    <td ><label for=lname" style="color: white;">Last Name</label></td>
<td> <input type="text" name="lname" required></td>
</tr>
<tr>
    <td ><label for="email"style="color: white;">Email</label></td>
<td><input type="text" name="email" required></td>
</tr>
<tr>
    <td ><label for="contact"style="color: white;">Contact</label></td>
<td><input type="text" name="contact" required></td>
</tr>
<tr>
    <td ><label for="area"style="color: white;">Area</label></td>
<td><select name="area" id="area" required>
    <option>Select</option>
    <option value="narayanaguda">Narayanaguda</option>
    <option value="koti">Koti</option>
    <option value="himayatnagar">Himayatnagar</option>
    <option value="chikadpally">Chikadpally</option>
    <option value="ashoknagar">Ashoknagar</option>
    <option value="dilshuknagar">Dilshuknagar</option>
   </select></td>
</tr>
<tr>
    <td ><label for="address"style="color: white;" required>Address</label></td>
<td><textarea  name="address"></textarea></td>
</tr>
<tr>
<td style="text-align:center" colspan="2"><input type="submit" name="request" value="Request"></td>
</tr>
</table>
</form>
</body>
</html>