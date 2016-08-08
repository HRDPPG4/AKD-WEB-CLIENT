<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
	<title>AllKhmerDocs</title> <!-- The Problem is How to Change title when we click to another page. So cannot use this title as Static Page. -->
	<!-- Now I can fix it by javascript. but I'm not sure that is good or not. Because it related to search engine. Maybe google can't search our website. because title very important for search engine -->
<jsp:include page="link-header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="register.jsp"></jsp:include>
<jsp:include page="login.jsp"></jsp:include>
<jsp:include page="upload.jsp"></jsp:include>
				  
	<header id="header">
<!-- top menu -->
	<div class="top-menu">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg container">
		
			<span class="navbar-logo">
					<a href="/" class="navbar-brand## brand-logo"> <img alt="Logo" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>All Khmer Docs</a>
			</span>
			
			<span id="searchBox">
  					<form>
					  <input type="text" name="search" placeholder="&#xF002; ស្វែងរកឯកសារ..." >
					</form>				   
			</span>
				
			<span id="SignUpForm">
			  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#register"><span><i class="fa fa-user-plus" aria-hidden="true"></i></span> ចុះឈ្មោះ</button>
			</span>
		
			<span id="LoginForm">
			  <button type="button" class="btn btn-primary btn-lg" id="btnLogin"><span><i class="fa fa-user" aria-hidden="true"></i></span> ចូលប្រើប្រាស់</button>
			</span>
			
			
			<span id="UploadForm">
			  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#upload"><span><i class="fa fa-upload" aria-hidden="true"></i></span> ចែកចាយឯកសារ</button>
			</span> 
		</nav>
	</div>
<!-- main menu -->

<div class="main-menu-contain">
<nav class="navbar navbar-default navbar-sticky navbar-main-menu">
	<div class="container">
		<div class="main-menu">
			<ul class="menu-basic" id="myTopnav">
			  <li><a href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  <li><a href="/technology">
			  		<span><i class="fa fa-flask"></i></span>បច្ចេកវិទ្យា</a>
			  </li>
			  <li><a  href="/general-knowledge">
				   <span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
				   </span>ចំណេះដឹងទូទៅ</a>
			  </li>
			  <li><a  href="/literal">
				   <span><i class="fa fa-book" aria-hidden="true">
				   </i>
				   </span>អក្សរសាស្រ្ត</a>
			  </li>
			  
			  <li><a  href="/business">
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