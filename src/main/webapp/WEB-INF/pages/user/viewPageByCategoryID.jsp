<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
	
	
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
	
	
	<!-- START SEARCH BLOCK-->
	 <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-animate.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-sanitize.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.1.2/ui-bootstrap-tpls.js"></script>
   <!--   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   -->
	
	<!-- END SEARCH BLOCK -->
	
	
<script>
	PATH_UI = "http://192.168.178.202:2222";
</script>
<style>
.footer{
	background-color: #374458;
	width: 100% !important;
	height:50% !important;
	color:  white;
	margin-top: 30px;
	text-align:left;
	word-wrap:break-word !important;
}
a.thumbnail {
    text-decoration: none;
    border: 1px solid #fff;
    border-top-color: rgb(229, 230, 233);
    border-right-color: rgb(223, 224, 228);
    border-bottom-color: rgb(208, 209, 213);
    border-left-color: rgb(223, 224, 228);
    min-height: 338.79px;
}

/*  SEARCH BLOCK	*/

.typeahead-demo .custom-popup-wrapper {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    background-color: #f9f9f9;
  }

  .typeahead-demo .custom-popup-wrapper > .message {
    padding: 10px 20px;
    border-bottom: 1px solid #ddd;
    color: #868686;
  }

  .typeahead-demo .custom-popup-wrapper > .dropdown-menu {
    position: static;
    float: none;
    display: block;
    min-width: 160px;
    background-color: transparent;
    border: none;
    border-radius: 0;
    box-shadow: none;
  }

</style>

</head>
<body ng-cloak ng-app="UserApp" ng-controller="UserCtrl" data-ng-init="getCategoryByParentID('${ParentID}')">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>

				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>

<style>
.tab-content #documentBox div.col-lg-4.col-sm-6.col-xs-12
{
	/* min-width:289.98px;
	min-height:264px; */
	
	/* max-width:273.98px;
	max-height:264px; */
}

</style>
</header>
<jsp:include page="include/toolbar-right.jsp"></jsp:include>
<content>
<div id="page-content-wrapper">
	<div class="container" id="container-cate">
		<section id="cates-view">
				<div class="row section nav-left topspace-cates">
				
				<div class="row-nav-left-content" ng-cloak>
					<div class="row">
					   <div class="col-sm-3" id="left-side-nav" >
					   	   <ul class="category-menu nav nav-pills nav-stacked" >
					   	   		 <li class="bg-cate">
					   	   		 <span><i class="{{getCategoryByID.ICON}}"></i>
			  	   					</span>{{getCategoryByID.CAT_NAME}}
			  	   				</li>
			  	   				<li  class="cates-main " ng-repeat="parentCat in parentCategory" ng-click="getAllDocumentByCatID(parentCat.CAT_ID)">
			  	   				<a data-toggle="pill" >{{parentCat.CAT_NAME}}</a> 
			  	   				</li>			  	   				
					   	   </ul>
					   </div>
						
						
					
						
					  	<div class="col-sm-9" ng-if="parentCategory[0]">	
							<div class="body-cates tab-content">							
								<div id="documentBox" class="tab-pane fade in active" ng-init="getAllDocumentByCatID(parentCategory[0].CAT_ID)">
						
							<div ng-repeat="slide in documentByCatID track by $index" class="col-lg-4 col-sm-6 col-xs-12">
							    
							     <!-- for Track user log -->	
					      		<input   type="hidden" class="form-control" value="{{slide.USER_ID}}" id="slide_user_id">
					      		
								<a href="/detail/{{slide.DOC_ID}}" class="thumbnail"  ng-click="countView(slide.DOC_ID)">
								
								<span class="img">
								<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail"> 
								</span>
								<span class="title">{{slide.TITLE | strLimit: 22}}</span>
								<span class="user-name">{{slide.USERS[0].USER_NAME | strLimit: 22}}</span>
								<span class="descript">{{slide.DES | strLimit: 22}}</span>
								<span class="view-count"><span>{{slide.VIEW}}</span> បានមើល</span>
								<span class="socials">
									<a href="#" alt="like" class="like">
										<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
									</a>
									<a href="#" alt="download" class="download">
										<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span>
										</a>
									<a href="#" alt="share" class="share">
										<span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
									</a>
								</span>
								</a>
							</div>
							
							</div>
							
							</div>
						</div>  
						
						
						
						
						
						
						
						
						<!-- WE CAN USE THIS CODE ALSO BUT IF WE USE THIS WE NEED TO CLICK ON SUB_CATEGORY FIRST TO SHOW DOCUMENTS THAT IN A SUB_CATEGORY -->
						<!--  IF WE WANT TO USE WANT OF THEM WE NEED TO REMOVE ONE OR DISABLE BLOCK OF CODE.-->
						
						<!--  <div class="col-sm-9" ng-if(documentByCatID)>	
							<div class="body-cates tab-content">							
								<div id="documentBox" class="tab-pane fade in active">
						
							<div ng-repeat="slide in documentByCatID" class="col-lg-4 col-sm-6 col-xs-12">
								<a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail"> 
								</span>
								<span class="title">{{slide.TITLE | strLimit: 22}}</span>
								<span class="user-name">{{slide.USER_ID}}</span>
								<span class="descript">{{slide.DES}}</span>
								<span class="view-count"><span>{{slide.VIEW}}</span> បានមើល</span>
								<span class="socials">
									<a href="#" alt="like" class="like">
										<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
									</a>
									<a href="#" alt="download" class="download">
										<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span>
										</a>
									<a href="#" alt="share" class="share">
										<span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
									</a>
								</span>
								</a>
							</div>
							
							</div>
							
							</div>
							</div>  -->
							
							
						</div>
						
					</div>		
					</div>
			         
			
	  </section>
  </div> 
		<!-- end container -->
 </div>  
	     <!-- end page-content-wrapper -->
</content>

  <footer>
<%-- 	<jsp:include page="include/footer.jsp"></jsp:include> --%>
   </footer>
    <a href="#0" class="cd-top">Top</a>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/back-to-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/angular/UserApp.js"></script>

	
	<!-- library jquery for file upload -->
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script>
	<!-- Online Link -->
	
	
</body>
</html>
