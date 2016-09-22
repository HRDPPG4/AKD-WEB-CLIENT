
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Feature</title>
<link rel="shortcut icon" href="${ContextPath}/resources/user/img/AKD.png">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
	
	
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/bootstrap.min.css">	
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/details.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/responsive.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/feature.css">
	<link href="${ContextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/footer.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/header.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/search.css" />
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/font-server/font.css" />
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/slide-detail.css" />
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/user_view.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/comment.css" />
	<!-- Register -->
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/register.css">
	<!-- style for file upload -->
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/jquery.filer.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/themes/jquery.filer-dragdropbox-theme.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/save-list.css">
	
	 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --> 
	<script src="${ContextPath}/resources/user/js/jquery.min.js"></script>
	<script src="${ContextPath}/resources/user/js/jquery.bootpage.min.js"></script>	
	<script src="${ContextPath}/resources/user/js/bootstrap.min.js"></script>
	
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
	
    <!-- Loading -->
    <link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/Main_Style_For_All_Page.css" />
	
	
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

#PAGINATION{
	text-align:center;
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

<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/Main_Style_For_All_Page.css" />

</head>
<body ng-cloak ng-app="UserApp" ng-controller="UserCtrl" data-ng-init="checkLocation()" data-ng-init="getAllDocument()">
<%-- <jsp:include page="include/loading.jsp"></jsp:include> --%>
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>
				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>
<jsp:include page="include/toolbar-right.jsp"></jsp:include>
<content>
<div class="container">

	<section id="feature">

		<!-- section-title -->
		<div class="row section feature topspace-second">
			<div id="content-feature">
				
				<ul class="feature-header"​>
					<!-- <li class="view-feature" ng-if="UserID!='' ||UserID!=0"><a ng-click="getDocumentByRecommended()" href="/feature/recommend">ឯកសារណែនាំ</a></li>
					<li  class="view-feature"><a ng-click="getDocumentByPopular()" href="/feature/popular">ឯកសារពេញនិយម</a></li>
					<li class="view-feature"><a ng-click="getDocumentByNewPost()" href="/feature/new">ឯកសារថ្មីៗ</a></li>
					 -->
					
					<li class="view-feature" ng-if="UserID!='' ||UserID!=0"><a href="/feature/recommend">ឯកសារណែនាំ</a></li>
					<li  class="view-feature"><a  href="/feature/popular">ឯកសារពេញនិយម</a></li>
					<li class="view-feature"><a  href="/feature/new">ឯកសារថ្មីៗ</a></li>
				</ul>
			 </div>
			<div class="row" style="padding:12px;">
					<div class="col-md-12" ng-if="showRecomment">
					<div  ng-repeat="slide in recommend" class="col-md-3" style="margin-bottom:10px;">
					
							
						 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail" ng-click="countView(slide.DOC_ID)">
							<span class="img">
							<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail">  
							<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
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
					<div id="PAGINATION"></div>
				</div>	 
				
				<div class="col-md-12" ng-if="showPopular">
					<div  ng-repeat="slide in popular" class="col-md-3" style="margin-bottom:10px;">
						 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail" ng-click="countView(slide.DOC_ID)">
							<span class="img">
							<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail">  
							<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
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
					<div id="PAGINATION"></div>
				</div>
				
				<div class="col-md-12" ng-if="showNewPost">
					<div  ng-repeat="slide in newDocument" class="col-md-3" style="margin-bottom:10px;">
						 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail" ng-click="countView(slide.DOC_ID)">
							<span class="img">
							<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail">  
							<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
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
					<div id="PAGINATION"></div>
				</div>
				<!-- <div id="PAGINATION"></div> -->
			</div> 
		</div>
	</section>
</div>
</content>


<footer>
<jsp:include page="include/footer.jsp"></jsp:include>
</footer>
 <a href="#0" class="cd-top">Top</a>
<script type="text/javascript" src="${ContextPath}/resources/user/js/back-to-top.js"></script>
<script type="text/javascript" src="${ContextPath}/resources/user/js/allkhmerslide.js"></script>	                        
<script type="text/javascript" src="${ContextPath}/resources/user/js/login.js"></script>
<script type="text/javascript" src="${ContextPath}/resources/user/angular/UserApp.js"></script>
<script type="text/javascript" src="${ContextPath}/resources/user/js/save-list.js"></script>



<!-- library jquery for file upload -->
<script src="${ContextPath}/resources/user/js/jquery-latest.min.js"></script>
<script src="${ContextPath}/resources/user/js/jquery.filer.min.js"></script>
<script src="${ContextPath}/resources/user/js/jquery-upload-file.js"></script>
<!-- Online Link -->

	<!-- <script>
	$(window).bind("load", function(){
		 var preloader = document.querySelector(".preloader");
		  preloader.style.opacity = 0;
		 preloader.style.display ="none";
		 
		}) ;
	</script> -->
</body>
</html>