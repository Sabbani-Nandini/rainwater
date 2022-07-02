<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/img/imgtry/logo.png" type="image/icon">
    <title>Parjanya</title>
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
  width: 45%;
  height:40%;
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
        <form action="checkAdminLogin.jsp">
            <fieldset>
                <p style="text-align: center;font-size: larger;">Login</p>
                <table align="center" cellpadding="5%" cellspacing="20%" width="50%",height="50%">
                    <tr>
                        <td><label for="uname">Username</label></td>
                        <td><input type="text" value="" name="email" required></td>
                    </tr>
                    <tr>
                       <td><label for="pass">Password</label></td>
                       <td><input type="password" value="" name="password" required></td>
                   </tr>
                   <tr>
                       <td colspan="2" align="center"><input type="submit" value="Login" name="submit" ></td>
                   </tr>
                   <tr>
                    <td colspan="2"style="text-align:center;color: white;"><b>New Employee?</b>&nbsp&nbsp<a href="Register_Admin.jsp"><input type="button" value="Register"></a></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </div>
</body>
</html>