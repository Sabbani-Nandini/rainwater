<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >ADD TANK</title>

<link rel="stylesheet" href="css styles.css">
<script>
    function validate() {
        var tankID=document.forms.RegForm.tankID.value;
        var capacity=document.forms.RegForm.capacity.value;
        var area=document.forms.RegForm.area.value;
        var plantID=document.forms.RegForm.plantID.value;
        var Water_level=document.forms.RegForm.Water_level.value;
        var plantName=document.forms.RegForm.plantName.value;
        var impurity=document.forms.RegForm.impurity.value; 
        var reg1=/^\d$/;						

        if (tankID== "" || reg1.test(tankID)) {
            window.alert("Please enter tankID properly.");
            tankID.focus();
            return false;
        }
        if (plantID== "" || reg1.test(plantID)) {
            window.alert("Please enter plantID properly.");
            plantID.focus();
            return false;
        }
        if (capacity== "" || reg1.test(capacity)) {
            window.alert("Please enter capacity properly.");
            capacity.focus();
            return false;
        }
        
       alert("Tank has been added successfully");
        

        return true;
    }
</script>

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
<form name="RegForm" action="add tank db.jsp" method="post">
<table align="center" cellpadding="10%" cellspacing="20%" width="50%",height="50%">
    <p style="text-align: center;font-size: larger;">ADD TANK</p>
<tr>
    <br>
    <td ><label for="tankID"style="color: white;">Tank Id</label></td>
<td><input type="text" name="tankID" required></td>
</tr>
<tr>
    <td ><label for="capacity"style="color: white;">Capacity</label></td>
<td><input type="text" name="capacity"required></td>
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
    <td ><label for="plantID"style="color: white;">Plant Id</label></td>
<td><input type="text" name="plantID"required></td>
</tr>
<tr>
    <td ><label for="Water_Level"style="color: white;">Water&nbspLevel</label></td>
<td><input type="text"name="Water_Level"required></td>
</tr>
<tr>
    <td ><label for="impurity"style="color: white;">Impurity</label></td>
<td><select name="impurity" id="impurityChikki#@987
" required>
    <option>Select</option>
    <option value="bacteria">Bacteria</option>
    <option value="inorganic ions">Inorganic Ions</option>
    <option value="sugars">Sugars</option>
    <option value="virus">Virus</option>
    <option value="yeast">Yeast</option>
    <option value="yeast cell">Yeast cell</option>
   </select></td>
</tr>
<tr>
    <td ><label for="plantName"style="color: white;">Plant Name</label></td>
<td><input type="text"name="plantName"required></td>
</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</div>
</body>
</html>