<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="Img/logo.png" type="image/icon">
		<title> Parjanya</title>
		<link rel="stylesheet" href="css styles.css">
		<script>
			function vision()
			{
				alert('To meet the increasing demands of water\nTo supplement groundwater supplies during lean seasons\nTo raise the water table by recharging groundwate\nrReducing groundwater contamination\nReduce flooding and erosion\nAvoiding flooding of roads.') ;
			}
			function scope()
			{
                alert('Water storage for usage\nRecharging aquifers\nBore well recharging\nRecharge pits\nRecharge shafts or Soakway\nDug wells recharge\nRecharging Trenches');
			}
			function appreciations()
			{
				alert('This initiative was recognized by keshav memorial educational society');
			}
			function highlights()
			{
                alert('surface run off harvesting\nroof top rainwater harvesting');
			}
			
		</script>
	</head>
	<body>
		<header id="go_to_top">
			<div class="gradient">
				<div class="container">
					<h2 id="logo"><a href="prac.jsp"> Parjanya </a></h2>	
					<nav>
						<a href="#go_to_top" class="menu_link active"> Welcome </a>
						<a href="#about" class="menu_link"> About </a>
						<a href="User_Login.jsp" class="menu_link"> User Login </a>
						<a href="Admin_Login.jsp" class="menu_link">Employee Login </a>
						<a href="#info" class="menu_link"> Contact </a>
					</nav>
				</div>
			</div>

            <div class="welcome_container">
				<h1 class="highlight">Welcome to</h1><br>
				<h1 class="brand">parjanya</h1>
				<span class="symbol"> &#10059; </span>
				<h2> Get ready for a new journey </h2>
			</div>
            </header>

			<main>
				<section id="about" >
					<div class="content">
						<h1 class="highlight"> Discover </h1><br>
						<h1 class="topic"> a new initiative </h1>
						<p class="symbol"> &#10059; </p>
						<p> Rainwater Harvesting is one of the most commonly used methods to save water.Parjanya is here to not waste the rainwater and prevent it from running off. In other words,we collect rainwater using simple mechanisms, treat them accordingly and supply to various people. This method is very useful considering the water scarcity that is happening in India.  </p>
						<h2><a> About us </a></h2>
					</div>
					<div class="img_container">
						<img src="assets/img/small1.jpg" title="bookgirl" alt="bookgirl"> 
					</div>
				</section>

				<section class="divider"> 
					<h1 class="highlight"> HARVEST THE RAIN</h1><br>
					<h1 class="topic"> reap the gains </h1>
				</section>

			<section id="categories" > 
				<div id="id1">
					<table style="margin: auto;" id="here" cellspacing="50" >
					  <tr >
						<td>
						<a><button onclick=vision() style="border-radius: 60%;border: none;background-color: transparent;"> <img src="assets/img/vision.png" width="200px" height="200px" style="border-radius: 60%;"></button></a><br>
						 <a href="#"> <p>vision</p></a>
						 
						</td>
						<td>
							<button onclick=scope() style="border-radius: 60%;border: none;background-color: transparent;"> <img src="assets/img/scope.png" width="200px" height="200px" style="border-radius: 60%;"></button><br>
							<a href="#" > <p>Scope</p></a>
						</td>
						<td>
							<button onclick=appreciations() style="border-radius: 60%;border: none;background-color: transparent;"><img src="assets/img/appreciation.jpg" width="200px" height="200px" style="border-radius: 100%;"></button><br>
							<a href="#" > <p>Appreciations</p></a>
					  </tr>
					  <tr>
						<td>
							<button onclick=highlights() style="border-radius: 60%;border: none;background-color: transparent;"><img src="assets/img/highlights.jpg" width="200px" height="200px" style="border-radius: 20%;"></button><br>
							<a href="#" > <p>project Highlights</p></a>
						</td>
						<td>
							<button onclick=vision() style="border-radius: 60%;border: none;background-color: transparent;"><img src="assets/img/geography.jpg" width="200px" height="200px" style="border-radius: 60%;"></button><br>
						  <a href="#" > <p>Geography</p></a>
						</td>
						<td>
							<button onclick=vision() style="border-radius: 60%;border: none;background-color: transparent;"><img src="assets/img/new.jpg" width="200px" height="200px" style="border-radius: 60%;"></button><br>
						  <a href="#" > <p>present system</p></a>
					  </tr>
					</table>
				  </div>	
			</section>

			</main>
			<footer>
				
				<div id="info" >
					<div id="terms">
						
						<div  class="address_container">
							<div class="address1">
								<h2><a href="#"> Terms & Conditions </a></h2>
							</div>
							<div class="address2">
								<h2><a href="#"> Privacy </a></h2>
							</div>
							<div class="address2"><h2><a href="#">Email:parjanya@gmail.com </a></h2></div>
						</div>
					</div>
					<div id="helpline">
						<div class="open_container">
							<div>
							<h2><a href="#"> Help </a></h2>
						</div>
					</div>
				</div>
				</div>
				<div class="copyright_container">
				<div id="copyright">
						<div> 
							<p> Copyright 2021 &copy; All rights reserved <a href="#">Book world</a> Team </p>
							<p> Reproduction or retransmission of materials without our consent is violation of copyright law &copy; </p>
						</div>
						<div>
							<p> Permissions and Copyright <span class="dot"> &middot; </span> Contact The Team </p>
						</div>			
				</div>
			</div>	
		</footer>
		
</body>
</html>