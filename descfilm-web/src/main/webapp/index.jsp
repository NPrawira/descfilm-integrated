<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="header.jsp"></jsp:include>
		<title>Home | Descfilm</title>
	</head>
	<body id="page-top" style="background-image: url('img/test.jpg');" onload="prefent()">
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: darkred" id="mainNav">
			<div class="container">
				<a class="navbar-brand js-scroll-trigger" href="index.jsp" style="color: white;">Descfilm</a>
		        	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" style="background-color: firebrick; color: white;">
		            	<span class="navbar-toggler-icon my-toggler"></span>
					</button>
		            <div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
		                	<li class="nav-item dropdown">
		                    	<a href="#" class="nav-link dropdown-toggle" id="genre" data-toggle="dropdown">Choose Genre...<b class="caret"></b></a>
		                        <ul class="dropdown-menu multi-column columns-3" style="background: darkred">
									<li>
										<div>
											<ul style="list-style-type: none; padding: 0px;" id="tests">
				                            	<li class="nav-item">
				                                	<a class="nav-link js-scroll-trigger" onclick="comedy()" href="index.jsp#comedy">Comedy</a>
				                                </li>
				                                <li class="nav-item">
				                                	<a class="nav-link js-scroll-trigger" onclick="adventure()" href="index.jsp#adventure">Adventure</a>
												</li>
						                        <li class="nav-item">
						                        	<a class="nav-link js-scroll-trigger" onclick="action()" href="index.jsp#action">Action</a>
						                        </li>
				                            </ul>
										</div>
									</li>
								</ul>
			    			</li>
				    	<li class="nav-item">
				        	<a class="nav-link" href="about.jsp">About Us</a>
				        </li>
					</ul>
				</div>
			</div>
		</nav>
    	<br/><br/><br/>
    	<div class="slideshow-container" id="home" onmouseover="other()">
	        <img class="mySlides" src="img/b.jpg" style="width:100%">
	        <img class="mySlides" src="img/a.jpg" style="width:100%">
	        <img class="mySlides" src="img/c.jpg" style="width:100%">
	        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	        <a class="next" onclick="plusSlides(1)">&#10095;</a>
	        <div style="text-align:center">
	            <span class="dot" onclick="currentSlide(1)"></span> 
	            <span class="dot" onclick="currentSlide(2)"></span>
	            <span class="dot" onclick="currentSlide(3)"></span>
        	</div>
    	</div>
    	<br/><br/><br/>
	    <header class="bg-transparent" onmouseover="other()">
	        <div class="container text-center">
	            <h1 style="color: white">Source on Most of Movie Details</h1>
	            <p class="lead" style="color: white">Getting detail of many popular movies made easier with Descfilm</p>
	        </div>
		</header>
		<br/><br/>
		<div class="container">
			<div class="row">
				<div class='col-md-10'>
					<input class="form-control" type="text" placeholder="Search movie..." aria-label="Search" id="search">    
				</div>    
				<div class='col-md-2'>
					<button class="btn btn-outline-white btn-block"  style="background-color: orange; color: white;" onclick="searchs()">Search</button>
				</div>
			</div>
		</div>
		<br/><br/>
		<section onmouseover="other()" id="sears" style="display: none;">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-8">
	                    <h2 class="section-heading" style="color: white" id="namasearch">Search</h2>
	                </div>
	            </div>
	            <div class="row" id="searsi"></div>
			</div>
		</section>
		<br/><br/>
		<section onmouseover="comedy()" id="comedy">
			<div class="container">
	            <div class="row">
	                <div class="col-md-8">
	                    <h2 class="section-heading" style="color: white">Comedy</h2>
	                </div>
	            </div>
	            <div class="row" id="comedi"></div>
			</div>
		</section>
		<br/><br/>
		<section id="adventure" onmouseover="adventure()">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h2 class="section-heading" style="color: white">Adventure</h2>
					</div>
				</div>
				<div class="row" id="aventure"></div>
			</div>
		</section>
		<br/><br/>
		<section id="action" onmouseover="action()">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h2 class="section-heading" style="color: white">Action</h2>
					</div>
				</div>
				<div class="row" id="acion"></div>
			</div>
		</section>
		<br/><br/>
		<a id="scroll" style="display: none;"><span></span></a>
		<jsp:include page="scripts.jsp"></jsp:include>
		<script src="js/slideshow.js"></script>
		<script src="js/indexscript.js"></script>
		<script src="js/prefent.js"></script>
	</body>
</html>