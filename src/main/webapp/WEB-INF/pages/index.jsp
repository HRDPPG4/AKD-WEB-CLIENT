<jsp:include page="user/include/header.jsp"></jsp:include>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- //////////////////////////////////////////////////////// -->
<div ng-app="indexApp" ng-controller="indexCtrl">

<content>
<div class="container">
	<section id="technology">
		<!-- section-title -->
		<div class="row section technology topspace-second">
				<div class="section-title">
						  <span​ class="col-xs-12 col-lg-12" id="left-title">
						  <span><i class="fa fa-flask"></i></span>
						  បច្ចេកវិទ្យា
						  </span>
						  <span class="col-xs-6 col-lg-4 col-lg-offset-2" id="right-title"><a href="#">មើលលំអិត</a>
						  </span>	
				</div>
				<!-- end section-title -->
				   <ul class="nav nav-tabs">
						    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
						    <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
						    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
						    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
						   <li><a data-toggle="tab" href="#menu4">Menu 4</a></li>
					</ul>

				<div class="tab-content">

					<div id="home" class="tab-pane fade in active">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
								
								
								
								<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
								</span>
								<span class="title">គណិតវិទ្យាថ្នាក់ទី១០</span>
								<span class="user-name">ជឹម មិនា</span>
								<span class="descript">សៀវភៅដែលចេញដោយក្រសួងអប់រំ មានទៅដោយច</span>
								<span class="view-count">១០០០ បានមើល</span>
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
					
					<!-- end home hab -->
				</div>
			</div>
		</section>
	</div>
</content>


<jsp:include page="user/include/footer.jsp"></jsp:include>
</div>