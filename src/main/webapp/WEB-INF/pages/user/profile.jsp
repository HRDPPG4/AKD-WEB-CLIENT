<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.min.css">	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/details.css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/responsive.css">
	<link href="${pageContext.request.contextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/search.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/font-server/font.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/slide-detail.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/profile.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/user_view.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/comment.css" />
	<!-- Register -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/register.css">
	<!-- style for file upload -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/jquery.filer.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/themes/jquery.filer-dragdropbox-theme.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/save-list.css">
	
	 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --> 
	<script src="${pageContext.request.contextPath}/resources/user/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>
     <!--  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->
	
	
	
	
	<!-- Font -->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	 <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
	

	
	<!--  Cannot use because Minea overwrite it-->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --> 
<script>
	PATH_UI = "http://192.168.178.202:2222";
</script>
</head>
<body ng-app="UserApp" ng-controller="UserCtrl">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>

				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>

<content>
<div id="page-content-wrapper">
	<section id="profile">
		<div class="container">
			<div class="row section profile topspace-profile">
								
						<div class="left-profile">
						<div class="img-pro"><a href="/profile"><img alt="" src="${pageContext.request.contextPath}/resources/user/img/minea.jpg"></a>
						</div>
						<div class="user-name">ជឹម មិនា</div>
							<ul class="title-profile nav nav-pills nav-stacked">
								<li class="about"><a data-toggle="tab" href="#aboutme">អំពីខ្ញុំ </a></li>
								<li class="about"><a data-toggle="tab" href="#mydoc">បញ្ជីររក្សាឯកសាររបស់ខ្ញុំ</a></li>
								<li class="about"><a data-toggle="tab" href="#viewed">ឯកសារដែលបានមើល</a></li>
							</ul>
						</div>
						<!-- right side -->
				<div class="dashboard-content tab-content">
					 <div id="#" class="tab-pane fade in active">
							<div class="preview-all">
								<ul id="dashboard-header">
									<li>
										<div class="view-value">25</div>
										<div class="view-name">មើល</div>
									</li>
									<li>
										<div class="view-value">25</div>
										<div class="view-name">មើល</div>
									</li>
									<li>
										<div class="view-value">25</div>
										<div class="view-name">មើល</div>
									</li>
								</ul>
							</div>	
						
						<div id="content-pdf-ppt-doc">
								<ul class="nav nav-tabs">
									    <li class="active"><a data-toggle="tab" href="#pdf">PDF</a></li>
									    <li><a data-toggle="tab" href="#ppt">PPT</a></li>
									    <li><a data-toggle="tab" href="#doc">DOC</a></li>
									    
									  </ul>
									
									  <div class="tab-content">
									    <div id="pdf" class="tab-pane fade in active">
									      <h3>PDF</h3>
									      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									    </div>
									    <div id="ppt" class="tab-pane fade">
									      <h3>PPT</h3>
									      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
									    </div>
									    <div id="doc" class="tab-pane fade">
									      <h3>DOC</h3>
									      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
									    </div>
									    
									  </div>
						</div>		
						
			      </div>
			      
			      <div id="aboutme" class="tab-pane fade aboutme">
					<form class="form-style-4" action="" method="post">
							<label for="field1">
							<span>ឈ្មោះអ្នកប្រើប្រាស់</span><input type="text" name="field1" value="ជឹម មិនា"​ required="true"/>
							</label>
							<label for="field2">
							<span>អ៊ីម៉ែល</span><input type="email" name="field2" value="minea.chem@gmail.com"​ required="true"/>
							</label>
							<label for="field3">
							<span>អាស័យដ្ឋាន</span><input type="text" name="field3" value="ភ្នំពេញ" required="true"/>
							</label>
							<label for="field4">
							<span>វាចារ</span><textarea name="field4" onkeyup="adjust_textarea(this)" required="true"​> ពេញចិត្ត</textarea>
							</label>
				
							<span>&nbsp;</span><input type="submit" value="កែប្រែ" />
							
					</form> 
			      </div>
			      
			      <div id="mydoc" class="tab-pane fade" style="width:800px; background-color: white;">
			          testing 1
			      </div>
			       <div id="viewed" class="tab-pane fade" style="width:800px; background-color: white;">
			          testing 2
			      </div>
			    </div>
		</div>
		
	</section>
</div>
</content>

 <footer>
	<jsp:include page="include/footer.jsp"></jsp:include>
   </footer>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/slide-detail.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/index.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/angular/UserApp.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script>

	
	<!-- library jquery for file upload -->
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script>
	<!-- Online Link -->
	
	
</body>
</html>
