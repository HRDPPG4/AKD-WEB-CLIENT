<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.css">	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/details.css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/responsive.css">
	<link href="${pageContext.request.contextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/right-nav.css">	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/search.css" />
	
	<title>AllKhmerDocs</title>
	

</head>
<body>
  <!-- Modal -->
				  <div class="modal fade" id="ModalLogin" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header"  >
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <h4><span class="glyphicon glyphicon-lock"></span> ចូលប្រើប្រាស់</h4>
				          
				          <span>
				          
				          
				          </span>
					         
						    <div class="imgcontainer">						     
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
					<a href="/" class="navbar-brand## brand-logo"> <img alt="Logo" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>All Khmer Docs</a>
			</span>
			
				<span id="LoginForm">
				  <button type="button" class="btn btn-primary btn-lg" id="btnLogin">ចូលប្រើប្រាស់</button>
				</span>
				
				<span id="SignUpForm">
				  <button type="button" class="btn btn-primary btn-lg" id="btnSignUp">ចុះឈ្មោះ</button>
				</span>
				
					<span id="UploadForm">
				  <button type="button" class="btn btn-primary btn-lg"  id="btnUpload">ចែកចាយឯកសារ</button>
				</span> 
				
				<div id="searchBox">
  					<form>
					  <input type="text" name="search" placeholder="Search..">
					</form>				   
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