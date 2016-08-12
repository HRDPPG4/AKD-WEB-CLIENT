<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
	 <!-- The Problem is How to Change title when we click to another page. So cannot use this title as Static Page. -->
	<!-- Now I can fix it by javascript. but I'm not sure that is good or not. Because it related to search engine. Maybe google can't search our website. because title very important for search engine -->
<jsp:include page="link-header.jsp"></jsp:include>
<script>
	PATH_UI = "http://192.168.178.202:2222";
</script>
</head>
<body ng-app="UploadFileApp" ng-controller="UploadFileCtrl">
<jsp:include page="register.jsp"></jsp:include>
<jsp:include page="login.jsp"></jsp:include>
<jsp:include page="upload.jsp"></jsp:include>
<jsp:include page="save-list.jsp"></jsp:include>
<jsp:include page="update-slide.jsp"></jsp:include>
				  
	<header id="header">
<!-- top menu -->
	<div class="top-menu">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg">
			<span class="navbar-logo">
					<a href="/" class="navbar-brand# brand-logo"> <img alt="Logo" style="width:80px;" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					 <span>All Khmer Docs</span>
					 </a>
			</span>
	<div class="container">
		<form class="navbar-form navbar-left form-contain" role="search">
        <div class="form-group">
          <input type="text" class="form-control form-search"  placeholder="ស្វែងរក">
        </div>
        <button type="submit">
        	 <i class="fa fa-search" aria-hidden="true"></i>
        </button>
      </form>
	</div>
	<div class="upload-signup-signin">
     	<ul>
            <li id="upload"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#upload">ចែកចាយឯកសារ</a>
            </li>

            <li id="signin"><a href="#features" class="btn btn-default" data-toggle="modal" data-target="#login">ចូលប្រើប្រាស់</a>
            </li>

            <li id="signup"><a href="#stories" class="btn btn-default" data-toggle="modal" data-target="#register">ចុះឈ្មោះ</a>
            </li>
            <li class="col-sm-1" id="avatar-user"><a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/user/img/avatar.png">
                <ul  class="tooltiptext">
                	<li><a href="#"> ជឹម មិនា</a></li>
                	<li><a href="#"> ស្លាយរបស់ខ្ញុំ</a></li>
                	<li><a href="#"> ចាកចេញ</a></li>
                </ul>
            </a>
            </li>
          
        </ul>
     </div>
</nav>
</div>
<!-- main menu -->

<div class="main-menu-contain">
<nav class="navbar navbar-default navbar-sticky navbar-main-menu">
	<div class="container">
	 <span class="navbar-logo-main">
			   	<a href="#" class="navbar-brand logo-main-menu">All Khmer Docs</a>
	</span>
		<div class="main-menu">
			<ul class="menu-basic" id="myTopnav">
			  <li><a class="menu actives-main" href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  <li><a class="menu" href="/technology">
			  		<span><i class="fa fa-flask"></i></span>បច្ចេកវិទ្យា</a>
			  </li>
			  <li><a class="menu" href="/general-knowledge">
				   <span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
				   </span>ចំណេះដឹងទូទៅ</a>
			  </li>
			  <li><a class="menu" href="/literal">
				   <span><i class="fa fa-book" aria-hidden="true">
				   </i>
				   </span>អក្សរសាស្ត្រ</a>
			  </li>
			  
			  <li><a class="menu" href="/business">
				   <span><i class="fa fa-cubes" aria-hidden="true"></i>
				   </span>មុខជំនួញ</a>
			  </li>
			  <li><a class="menu" href="/other">
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