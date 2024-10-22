<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
	<title>Login</title>
	<style type="text/css">
   body {
			  color: black;
			  font-family: 'Circular Std', sans-serif;
			  text-align: center;
			  margin: 0;
			  padding: 10px;
			  border: 1px solid #ffffff;
			  background: rgb(255, 255, 255);

			  background-image:url(image/woocommerce-online-music-store.jpg);
			  background-size:cover;
			  }
		
			
			.header-text {
			  margin-bottom: 2px;
			}
			
			.header-text h1 {
			  text-align: center;
			  color: #efed40;
			}
			
			.container {
			  display: flex;
			  justify-content: center;
			  align-items: center;
			  height: 150vh;
			}
			.user{
			 width:11px;
			 height:100px;
			 border-radius:50%;
			 overflow:hidden;
			 position:absolute;
			 top:calc(-100px/2);
			 left:calc(50%-50px);
			
			}
			
			.left-side {
			  background-color: #f4f4f4;
			  padding: 75px;
			  border-radius: 5px;
			  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			  width: 300px;
			}
			
			.title {
			  text-align: center;
			  text-color:#000000;
			}
			
			form {
			  display: flex;
			  flex-direction: column;
			  text-color:#000000;
			}
			
			form input[type="text"] {
			  margin-bottom: 10px;
			  padding: 10px;
			  border: 1px solid #ccc;
			  border-radius: 4px;
			}
			
			form input[type="text"]:focus {
			  border-color: #80bdff;
			  outline: 0;
			}
			
			.forgot {
			  text-align: center;
			  margin-top: 10px;
			}
			
			.botton {
			  text-align: center;
			  margin-top: 15px;
			}
			
			.botton input[type="submit"] {
			  background-color: #4CAF50;
			  color: white;
			  padding: 10px 20px;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer;
			  transition: background-color 0.3s;
			}
			
			.botton input[type="submit"]:hover {
			  background-color: #45a049;
			}
			
			a {
			  text-decoration: none;
			  color: #007bff;
			}
			
			a:hover {
			  text-decoration: underline;
			}
					
					@charset "utf-8";
		/* CSS Document */
		
					/***********
			1. Fonts
			***********/
			
			@font-face
			{
				font-family: 'Futura';
				src: url('../fonts/FuturaLT-Book.ttf')  format('truetype');
			}
			@font-face
			{
				font-family: 'Futura_Bold';
				src: url('../fonts/FuturaLT-Bold.ttf')  format('truetype');
			}
					
			/*********************************
			3. Header
			*********************************/
			
			.header
			{
				position: fixed;
				left: 0;
				top: 0;
				width: 100%;
				background: #000000;
				z-index: 100;
				-webkit-transition: all 400ms ease;
				-moz-transition: all 400ms ease;
				-ms-transition: all 400ms ease;
				-o-transition: all 400ms ease;
				transition: all 400ms ease;
			}
			.header.scrolled
			{
				background: rgba(0,0,0,0.85);
			}
			.header_content
			{
				width: 100%;
				height: 101px;
				padding-left: 51px;
				padding-right: 52px;
				-webkit-transition: all 400ms ease;
				-moz-transition: all 400ms ease;
				-ms-transition: all 400ms ease;
				-o-transition: all 400ms ease;
				transition: all 400ms ease;
			}
			.header.scrolled .header_content
			{
				height: 70px;
			}
			.logo
			{
				position: absolute;
				top: 50%;
				-webkit-transform: translateY(-50%);
				-moz-transform: translateY(-50%);
				-ms-transform: translateY(-50%);
				-o-transform: translateY(-50%);
				transform: translateY(-50%);
				left: 51px;
			}
			.logo a
			{
				font-family: 'Futura', sans-serif;
				font-size: 30px;
				color: #FFFFFF;
			}
			.log_reg
			{
				position: absolute;
				top: 50%;
				-webkit-transform: translateY(-50%);
				-moz-transform: translateY(-50%);
				-ms-transform: translateY(-50%);
				-o-transform: translateY(-50%);
				transform: translateY(-50%);
				right: 52px;
			}
			.log_reg ul li
			{
				position: relative;
			}
			.log_reg ul li:not(:last-child)::after
			{
				display: inline-block;
				content: '/';
				font-size: 14px;
				color: #FFFFFF;
				margin-left: 6px;
				margin-right: 6px;
			}
			.log_reg ul li a
			{
				font-size: 14px;
				color: #FFFFFF;
			}
			.log_reg ul li a:hover
			{
				color: #de4f33;
			}
			.main_nav ul li:not(:last-child)
			{
				margin-right: 24px;
			}
			.main_nav ul li
			{
				position: relative;
			}
			.main_nav ul li a
			{
				position: relative;
				font-size: 16px;
				color: #FFFFFF;
				padding-left: 26px;
				padding-right: 23px;
				z-index: 1;
			}
			.main_nav ul li a::after
			{
				display: block;
				position: absolute;
				left: 0;
				bottom: -20px;
				width: 100%;
				height: 17px;
				background: #525252;
				content: '';
				z-index: -1;
				visibility: hidden;
				opacity: 0;
				-webkit-transition: all 400ms ease;
				-moz-transition: all 400ms ease;
				-ms-transition: all 400ms ease;
				-o-transition: all 400ms ease;
				transition: all 400ms ease;
			}
			.main_nav ul li.active a::after,
			.main_nav ul li a:hover::after
			{
				bottom: -5px;
				visibility: visible;
				opacity: 1;
			}
			.hamburger
			{
				display: none;
				width: 50px;
				height: 24px;
				cursor: pointer;
				padding: 5px;
				right: -5px;
			}
			.hamburger > div
			{
				width: 100%;
				height: 100%;
			}
			.hamburger > div > div
			{
				height: 2px;
				background: #FFFFFF;
				-webkit-transition: all 400ms ease;
				-moz-transition: all 400ms ease;
				-ms-transition: all 400ms ease;
				-o-transition: all 400ms ease;
				transition: all 400ms ease;
			}
			.hamburger > div > div:first-child
			{
				width: 90%;
			}
			.hamburger > div > div:nth-child(2)
			{
				width: 50%;
			}
			.hamburger > div > div:nth-child(3)
			{
				width: 70%;
			}
			.hamburger:hover > div > div
			{
				width: 100%;
			}
			
			/*********************************
			4. Menu
			*********************************/
			
			.menu
			{
				position: fixed;
				top: 0;
				left: 0;
				width: 100vw;
				height: 100vh;
				z-index: 101;
				visibility: hidden;
				opacity: 0;
				-webkit-transition: all 800ms ease;
				-moz-transition: all 800ms ease;
				-ms-transition: all 800ms ease;
				-o-transition: all 800ms ease;
				transition: all 800ms ease;
			}
			.menu_overlay
			{
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.45);
			}
			.menu.active
			{
				visibility: visible;
				opacity: 1;
			}
			.menu > div
			{
				width: 100%;
				height: 100%;
			}
			.menu_container
			{
				position: absolute;
				top: 50%;
				-webkit-transform: translateY(-50%);
				-moz-transform: translateY(-50%);
				-ms-transform: translateY(-50%);
				-o-transform: translateY(-50%);
				transform: translateY(-50%);
				right: -300px;
				width: 300px;
				-webkit-transition: all 1000ms 600ms ease;
				-moz-transition: all 1000ms 600ms ease;
				-ms-transition: all 1000ms 600ms ease;
				-o-transition: all 1000ms 600ms ease;
				transition: all 1000ms 600ms ease;
			}
			.menu.active .menu_container
			{
				right: 0;
			}
			.menu_log_reg
			{
				display: none;
				width: 100%;
				background: #000000;
				padding-left: 40px;
				padding-right: 40px;
				padding-top: 8px;
				padding-bottom: 8px;
				margin-bottom: 5px;
				border-bottom: solid 2px #de4f32;
			}
			.menu_log_reg a
			{
				font-size: 14px;
				color: #FFFFFF;
			}
			.menu_log_reg a:hover
			{
				color: #de4f32;
			}
			.menu_log_reg ul li
			{
				position: relative;
			}
			.menu_log_reg ul li:not(:last-child)::after
			{
				display: inline-block;
				content: '/';
				font-size: 14px;
				color: #FFFFFF;
				margin-left: 6px;
				margin-right: 6px;
			}
			.menu_nav
			{
				width: 100%;
				background: #000000;
				padding-left: 40px;
				padding-right: 40px;
				padding-top: 50px;
				padding-bottom: 50px;
				border-bottom: solid 5px #de4f32;
			}
			.menu_nav ul li
			{
				position: relative;
			}
			.menu_nav ul li a:hover::before
			{
				left: 100%;
			}
			.menu_nav ul li:not(:last-of-type)
			{
				margin-bottom: 5px;
			}
			.menu_nav ul li a
			{
				display: block;
				position: relative;
				font-size: 20px;
				color: #FFFFFF;
				overflow: hidden;
			}
			.menu_nav ul li a::before
			{
				display: block;
				position: absolute;
				top: 50%;
				left: -100%;
				width: 100%;
				height: 2px;
				background: #FFFFFF;
				content: '';
				-webkit-transition: all 400ms 200ms ease;
				-moz-transition: all 400ms 200ms ease;
				-ms-transition: all 400ms 200ms ease;
				-o-transition: all 400ms 200ms ease;
				transition: all 400ms 200ms ease;
			}
			.menu_nav ul li a:hover
			{
				color: #de4f32;
			}
			
			/*********************************
			5. Home
			*********************************/
			
			.home
			{
				width: 100%;
				height: 384px;
				padding-left: 51px;
				padding-right: 52px;
			}
			.home_inner
			{
				width: 100%;
				height: 100%;
			}
			.home_container
			{
				position: absolute;
				left: 50%;
				-webkit-transform: translateX(-50%);
				-moz-transform: translateX(-50%);
				-ms-transform: translateX(-50%);
				-o-transform: translateX(-50%);
				transform: translateX(-50%);
				bottom: 89px;
			}
			.home_subtitle
			{
				font-size: 18px;
				line-height: 0.75;
				font-color:#000000;
			}
			.home_title
			{
				font-size: 82px;
				line-height: 0.75;
				margin-top: 14px;
			}
			
			/*********************************
					9. Footer
		*********************************/
		
		.footer
		{
			background: #000000;
			padding-left: 50px;
			padding-right: 51px;
		}
		.newsletter_container
		{
			width: 604px;
			padding-top: 103px;
		}
		.newsletter_title
		{
		
		}
		.newsletter_form
		{
			display: block;
			position: relative;
			width: 100%;
			margin-top: 30px;
		}
		.newsletter_input
		{
			width: 100%;
			height: 50px;
			background: #545454;
			border: none;
			outline: none;
			padding-left: 23px;
		}
		.newsletter_input::-webkit-input-placeholder
		{
			font-size: 12px !important;
			font-style: italic;
			color: #FFFFFF !important;
		}
		.newsletter_input:-moz-placeholder
		{
			font-size: 12px !important;
			font-style: italic;
			color: #FFFFFF !important;
		}
		.newsletter_input::-moz-placeholder
		{
			font-size: 12px !important;
			font-style: italic;
			color: #FFFFFF !important;
		} 
		.newsletter_input:-ms-input-placeholder
		{ 
			font-size: 12px !important;
			font-style: italic;
			color: #FFFFFF !important;
		}
		.newsletter_input::input-placeholder
		{
			font-size: 12px !important;
			font-style: italic;
			color: #FFFFFF !important;
		}
		.newsletter_button
		{
			position: absolute;
			top: 0;
			right: 0;
			width: 139px;
			height: 50px;
			background: #de4f32;
			border: none;
			outline: none;
			cursor: pointer;
			color: #FFFFFF;
			font-size: 14px;
		}
		.footer_lists
		{
			width: 575px;
			padding-top: 83px;
			padding-bottom: 5px;
		}
		.footer_list
		{
			width: calc(100% / 3);
		}
		.footer_list_title
		{
			font-size: 24px;
		}
		.footer_list ul
		{
			margin-top: 23px;
		}
		.footer_list ul li:not(:last-of-type)
		{
			margin-bottom: 9px;
		}
		.footer_list ul li a
		{
			font-size: 14px;
			color: #6d6d6d;
		}
		.footer_list ul li a:hover
		{
			color: #FFFFFF;
		}
		.copyright_bar
		{
			width: 100%;
			height: 67px;
			background: #000000;
		}
		.copyright_bar span
		{
			font-size: 14px;
			color: #6d6d6d;
			line-height: 67px;
		}

</style>

	
	
</head>
<body>

	<div class="super_container">
		
		<!-- Header -->
		<header class="header">
			<div class="header_content d-flex flex-row align-items-center justify-content-center">
				<div class="logo"><a href="index.jsp">HarmonyHub</a></div>
				<div class="log_reg">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li><a href="#">Login</a></li>
						<li><a href="#">Register</a></li>
					</ul>
				</div>
				<nav class="main_nav">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="about.jsp">About us</a></li>
						<li><a href="#">Music</a></li>
						<li><a href="blog.jsp">News</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</nav>
				<div class="hamburger ml-auto">
					<div class="d-flex flex-column align-items-end justify-content-between">
						<div></div>
						<div></div>
						<div></div>
					</div>
				</div>
			</div>
		</header>
	
	
		<!-- Menu -->
	
		<div class="menu">
			<div>
				<div class="menu_overlay"></div>
				<div class="menu_container d-flex flex-column align-items-start justify-content-center">
					<div class="menu_log_reg">
						<ul class="d-flex flex-row align-items-start justify-content-start">
							<li><a href="#">Login</a></li>
							<li><a href="#">Register</a></li>
						</ul>
					</div>
					<nav class="menu_nav">
						<ul class="d-flex flex-column align-items-start justify-content-start">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About us</a></li>
							<li><a href="music.jsp">Music</a></li>
							<li><a href="blog.jsp">News</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	
		<!-- Home -->
	   
			<div class="home">
				<div class="home_inner">
					<!-- Image artist: https://unsplash.com/@yoannboyer -->
					<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg" data-speed="0.8"></div>
					<div class="home_container">
						<div class="home_content text-center">
							<div class="home_subtitle">Just us</div>
							<div class="home_title">Discography</div>
						</div>
					</div>
				</div>
			</div>
		
		
			<div class="header-text mb-4">
		        <h1 style=text-align:center>WELCOME To HarmonyHub</h1>
		        
		    </div> 
		    <div class="container">
		    	<img src="images.jpg" class="user">
		            <div class="both-rows">
		                <div class="column left-side" style="background-color:aliceblue">
		                    <div class="title"><h2 style=text-align:center>Log In</h2></div>
		
					<form action ="login" method="post">
						UserName <input type="text" name="uid" placeholder="Username" required autocomplete="off"><br>
						Password <input type="text" name="pwd" placeholder="Password" required autocomplete="off"><br>
						
						<div class="forgot">
			                 <small><a href="#">Forgot Password ?</a></small>
			            </div>
						<div class="botton">
							<input type="submit" name="submit" value="Login">
						</div>
					</form>
				</div>
				</div>	
				</div>
				
		
			
				
			<footer class="footer">
			<div class="footer_container d-flex flex-xl-row flex-column align-items-start justify-content-start">
				<div class="newsletter_container">
					<div class="newsletter_title"><h2>Subscribe to our newsletter</h2></div>
					<form action="#" id="newsletter_form" class="newsletter_form">
						<input type="email" class="newsletter_input" placeholder="Your E-mail" required="required">
						<button class="newsletter_button">Subscribe</button>
					</form>
				</div>
				<div class="footer_lists d-flex flex-sm-row  flex-column align-items-start justify-content-start ml-xl-auto">
	
					<!-- Useful Links -->
					<div class="footer_list">
						<div class="footer_list_title">Useful Links</div>
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About us</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Music</a></li>
							<li><a href="blog.jsp">News</a></li>
						</ul>
					</div>
	
					<!-- Mixtape -->
					<div class="footer_list">
						<div class="footer_list_title">Mixtape</div>
						<ul>
							<li><a href="#">Music</a></li>
							<li><a href="#">PR and Marketing</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">About us</a></li>
							<li><a href="#">Testimonials</a></li>
						</ul>
					</div>
	
					<!-- Connect -->
					<div class="footer_list">
						<div class="footer_list_title">Connect</div>
						<ul>
							<li><a href="#">Returns</a></li>
							<li><a href="#">Shippings</a></li>
							<li><a href="#">Jobs</a></li>
							<li><a href="#">Social Media</a></li>
							<li><a href="#">Soundcloud</a></li>
						</ul>
					</div>
	
				</div>
			</div>
			<div class="copyright_bar">
				<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	</span>
			</div>
		</footer>
</div>			
		
		

</body>
</html>