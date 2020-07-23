<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="header.jsp"></jsp:include>
        <title id="title"></title>
	</head>
	<body onload="prefent()" id="page-top" style="background-image: url('img/test.jpg');">
		<jsp:include page="navbar.jsp"></jsp:include>
		<br/><br/><br/><br/><br/>
		<div class="container">
			<table class="table table-responsive table-borderless table-sm" style="color: white;" id="tabel"></table>
		</div>
		<div class="container">
			<div class="flip-container">
				<button id="flip" class="btn btn-block btn-dark rounded-1" style="background-color: orange; color: white;">Open trailer video</button>
				<button id="btn" class="btn btn-block btn-dark rounded-1" style="display: none; background-color: orange; color: white;">Close trailer video</button>
				<div id="panel">
					<div class="video-container" id="yutub"></div>
				</div>
			</div>
		</div>
		<br/><br/>
		<div class="container" style="color: white;">
			<h4>Synopsis</h4><hr/>
			<p style="text-align: justify" id="line1"></p>
			<p style="text-align: justify" id="line2"></p>
		</div>
		<br/><br/><br/>
		<jsp:include page="footer.jsp"></jsp:include>
		<a id="scroll" style="display: none;"><span></span></a>
		<jsp:include page="scripts.jsp"></jsp:include>
		<script src="js/slideupdown.js"></script>
		<script src="js/detail.js"></script>
		<script src="js/prefent.js"></script>
	</body>
</html>