<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
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
<body ng-app="MainApp">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>

				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>

<div class="container">
  	<div class="main-tab">
  		<ul class="tab">
    		<li class="current"><a href="/user_view">ឯកសារដែលបានបញ្ជូល</a></li>
    		<li><a href="/user_view_history">ឯកសារដែលបានមើល</a></li>
    		<li><a href="/user_information">អំពីខ្ញុំ</a></li>
   
  		</ul>
  		
  	</div>
</div>

<div class="container ">
	<div class="row">
	
		<div class="panel-heading-user">ការកំណត់ព័ត៌មានរបស់ខ្ញុំ</div>
			<div class="panel-body panel-user">
 				<form class="form-horizontal  " enctype="multipart/form-data" id="myformvalidator1" method="post">	
					<div class="col-xs-8 col-md-8">
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ឈ្មោះអ្នកប្រើប្រាស់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="text" class="form-control" id="username" name="username" value="សុភី ណារី" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ភេទ<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<label class="radio-inline"><input type="radio" name="optradio">ប្រុស</label>
								<label class="radio-inline"><input type="radio" name="optradio">ស្រី</label>
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">លេខសំងាត់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="password" class="form-control" id="username" name="username"​ value="12345" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">អីម៉េល<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="email" class="form-control" id="username" name="username" value="pha@gmail.com" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     
					     
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">លេខទូរស័ព្ឬ<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="tex" class="form-control" id="username" name="username" value="012 944 494" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     
					     <div class="form-group">
					     	<label class="col-lg-3 control-label"><span class="required"></span></label>
					     	<div class="col-lg-5">
					     		<button type="button" class="btn btn-info">កែប្រែ</button>
								
					     	</div>
					     	
					     </div>
					
					</div>
					<div class=" col-xs-4 col-md-4 ">
					
						 <img src="resources/user/img/001.png" class="thumbnail" alt="Image" width="200px" height="200px">
    
    						
					  	
					</div>
					
					
				</form> 
	       </div>	
	      												
														
																									
							
	</div>
														
	
</div>


<footer>
	<jsp:include page="include/footer.jsp"></jsp:include>
 </footer>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/slide-detail.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/index.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/requestAPI/MainApp.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script>

	
	<!-- library jquery for file upload -->
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script>
	<!-- Online Link -->
	
	
</body>