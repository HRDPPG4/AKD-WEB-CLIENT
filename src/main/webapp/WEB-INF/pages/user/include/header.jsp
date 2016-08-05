<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--  FOOTER HEADER -->
	
	<!-- link -->
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/details.css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/responsive.css">
	<link href="${pageContext.request.contextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/right-nav.css">
	
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/path/to/font-awesome/css/font-awesome.min.css"> --%>

	
    <!-- script -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	<script src="${pageContext.request.contextPath}/resources/user/js/jquery.min.js"></script>
	
	<title>AllKhmerDocs</title>
	
	
	<!--  FOOTER RESOURCE -->
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/footer.css">
	
	
	<!-- 
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
  
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/login.css">
	  <script src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>

</head>
<body>
  <!-- Modal -->
				  <div class="modal fade" id="ModalLogin" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header" style="padding:35px 50px;">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
				          
				          
					         
						    <div class="imgcontainer">
						      <!-- <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span> -->
						      <img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="Avatar" class="avatar">
						    </div>
									          
				          
				        </div>
				        <div class="modal-body" style="padding:40px 50px;">
				          <form role="form">
				            <div class="form-group">
				              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
				              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
				            </div>
				            <div class="form-group">
				              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
				              <input type="text" class="form-control" id="psw" placeholder="Enter password">
				            </div>
				            <div class="checkbox">
				              <label><input type="checkbox" value="" checked>Remember me</label>
				            </div>
				              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
				          </form>
				        </div>
				        <div class="modal-footer">
				          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
				          <p>Not a member? <a href="#">Sign Up</a></p>
				          <p>Forgot <a href="#">Password?</a></p>
				        </div>
				      </div>
				      
				    </div>
				  </div>
	<header id="header">
<!-- top menu -->
	<div class="top-menu">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg">
			<span  class="navbar-logo">
					<a href="/" class="navbar-brand brand-logo">AllKhmerDocs</a>
			</span>
			
					<div id="LoginForm" class="col-lg-1" style="float:right;margin-right:30px;style="overflow: scroll;">
				  <!-- Trigger the modal with a button -->
				  <button type="button" class="btn btn-primary btn-lg" style="font-size:14px;" id="btnLogin">ចូរប្រើប្រាស់</button>
	</div>
			
			
		</nav>
	</div>
<!-- main menu -->
<div class="main-menu-contain">
<nav class="navbar navbar-default navbar-sticky navbar-main-menu">
	<div class="container">
		<div class="main-menu">
			<ul class="menu-basic" id="myTopnav">

			  <li class="active"><a href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  <li><a href="/technology">
			  		<span><i class="fa fa-flask"></i></span>បច្ចេកវិទ្យា</a>
			  </li>
			  <li><a href="/general-knowledge">
				   <span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
				   </span>ចំណេះដឹងទូទៅ</a>
			  </li>
			  <li><a href="/literal">
				   <span><i class="fa fa-book" aria-hidden="true">
				   </i>
				   </span>អក្សរសាស្រ្ត</a>
			  </li>
			  
			  <li><a href="/business">
				   <span><i class="fa fa-cubes" aria-hidden="true"></i>
				   </span>មុខជំនួញ</a>
			  </li>
			  <li><a href="/other">
			  	   <span><i class="fa fa-tags" aria-hidden="true"></i>
			  	   </span>ផ្សេងៗ</a>
			  </li>
			  <li class="icon">
			   <span><i class="fa fa-bars" aria-hidden="true"></i></span>
			  </li>
			</ul>
		</div>
	</div>
</nav>
</div>
</header>