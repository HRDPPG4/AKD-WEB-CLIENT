 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
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


</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.min.css">	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/feature.css">
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
<body ng-app="UserApp" ng-controller="UserCtrl" data-ng-init="getAllDocument()">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>
				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>

<content>
<div class="container">
	<section id="feature">
		<!-- section-title -->
		<div class="row section feature topspace-second">
				<div id="content-feature">
					<ul class="feature-header"​>
						<li>បានណែនាំ</li>
						<li>ពេញនិយម</li>
						<li>ឯកសារថ្មីៗ</li>
					</ul>
				 </div>
				<div class="row" style="padding:15px;">
				<div style="clear:both;">
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				
				<div style="clear:both;">
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
				<div class="col-md-3" style="margin-bottom:10px;">
					 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/literal.jpg" alt=""> 
								<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span>
								</span>
								<span class="title">គណិតវិទ្យា</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">ពិពណ៌នានានា</span>
								<span class="view-count">២០០ បានមើល</span>
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
	</section>
	
	
</div>
</content>


<footer>
<jsp:include page="include/footer.jsp"></jsp:include>
</footer>
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/angular/UserApp.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script>


<!-- library jquery for file upload -->
<script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script>
<!-- Online Link -->
	
	
</body>
</html>