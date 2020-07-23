<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<jsp:include page="header.jsp"></jsp:include>
		<link href="css/jquery-ui.css" rel="stylesheet">
<title id="title">Login</title>
</head>
<body id="page-top" style="background-image: url('img/test.jpg');">
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: darkred" id="mainNav">
			<div class="container">
				<a class="navbar-brand js-scroll-trigger" href="index.jsp" style="color: white;">Descfilm</a>
		        	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" style="background-color: firebrick; color: white;">
		            	<span class="navbar-toggler-icon my-toggler"></span>
					</button>
		            <div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
		                	
				    	<li class="nav-item">
				        	<a class="nav-link" href="about.jsp">About Us</a>
				        </li>
					</ul>
				</div>
			</div>
		</nav>
    	<br/><br/><br/>
    	<div class="container" id="login">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header text-center" style="background-color: darkred; color: white;">Login</div>
                <div class="card-body">
					<div class="form-group">
						<div class="form-group">
							Email
							<input id="inputEmails" class="form-control" label="Email" required="true"/>
							<p for="inputEmail" style="color:red"></p>
                        </div>
                    </div>
                    <div class="form-group">
                    	<div class="form-group">
                    		Password
							<input id="inputPasswords" class="form-control" label="Password" required="true" type="password" redisplay="true"/>
                            <p for="inputPassword" style="color:red"></p>
                        </div>
                    </div>
                    <p id="text" value="" style="color: red; text-transform: uppercase; align-content: center"></p>
                    <button id="logins" class="btn btn-block btn-warning" style="color: white;" value="Login" action="">Login</button>
                    <button onclick="regis()" class="btn btn-block btn-info" style="color: white;" value="register" action="">register</button>
                </div>
            </div>
        </div>
        <form>
    	<div class="container" id="regist" style="display:none">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header text-center" style="background-color: darkred; color: white;">Register</div>
                <div class="card-body">
					<div class="form-group">
						<div class="form-group">
							Email
							<input id="inputEmail" class="form-control" label="Email" required="true"/>
							<p for="inputEmail" style="color:red"></p>
                        </div>
                    </div>
                    <div class="form-group">
                    	<div class="form-group">
                    		Username
							<input id="inputUsername" class="form-control" label="Password" required="true"  />
                            <p for="inputUsername" style="color:red"></p>
                        </div>
                    </div>
                    <div class="form-group">
                    	<div class="form-group">
                    		Password
							<input id="inputPassword" class="form-control" label="Password" required="true" type="password" redisplay="true"/>
                            <p for="inputPassword" style="color:red"></p>
                        </div>
                    </div>
                    <p id="text" value="" style="color: red; text-transform: uppercase; align-content: center"></p>
                    <button id="registers" class="btn btn-block btn-info" style="color: white;" value="registers" action="">register</button>
                    <button onclick="cancel()" class="btn btn-block btn-warning" style="color: white;" value="cancel" action="">Cancel</button>
                    
                </div>
            </div>
        </div>
        </form>
        <div class="container" id="profil" style="display:none">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header text-center" style="background-color: darkred; color: white;">My Profil</div>
                <div class="card-body">
					<div class="form-group">
						<div class="form-group" id="em">
							Email
                        </div>
                    </div>
                    <div class="form-group">
                    	<div class="form-group" id="us">
                    		Username
                        </div>
                    </div>
                    <button id="edits" class="btn btn-block btn-info" style="color: white;" value="edit" action="">Edit</button>
                    <button onclick="logout()" class="btn btn-block btn-warning" style="color: white;" value="Logout" action="">Logout</button>
                    
                </div>
            </div>
        </div>
        <br><br><br>
		<jsp:include page="footer.jsp"></jsp:include>
		<a id="scroll" style="display: none;"><span></span></a>
		<jsp:include page="scripts.jsp"></jsp:include>
		<script src="js/slideupdown.js"></script>
		<script src="js/loginscript.js"></script>
</body>
</html>