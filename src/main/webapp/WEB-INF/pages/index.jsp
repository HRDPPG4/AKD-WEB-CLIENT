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
						<!-- end href -->
					</div>
<<<<<<< HEAD
					<!-- end home tab -->
			 </div>
=======
				</div>
				<!-- end tab-layouts -->
		 </div>
		 <!-- end main-tab-eucation -->
		</div>
		<!-- end technology -->
	</section​>
<!-- ///////////////////////////////////// -->
<section id="technology">
		<!-- section-title -->
		<div class="row section technology topspace-second">
				<div class="section-title">
				  <span​ class="col-xs-12 col-lg-12" id="left-title">
				  <span><i class="fa fa-book" aria-hidden="true">
				   </i></span>
				  អក្សរសាស្ត្រ
				  </span>
				  <span class="col-xs-6 col-lg-4 col-lg-offset-2" id="right-title"><a href="#">មើលលំអិត</a>
				  </span>	
				</div>
				<!-- main-tab-eucation -->
			<div class="main-tab-content">	
					<ul class="tabs">
						<li class="tab-link current" data-tab="tab-1">ថ្មី</li>
						<li class="tab-link" data-tab="tab-2">គណិតវិទ្យា</li>
						<li class="tab-link" data-tab="tab-3">គីមីវិទ្យា</li>
						<li class="tab-link" data-tab="tab-4">ជីវិទ្យា</li>
						<li class="tab-link" data-tab="tab-5">រូបវិទ្យា</li>
					</ul>

					<div id="tab-1" class="tab-content current">
					<!-- row first -->
					<div class="row">
					<!-- //////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- /////////////////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- ///////////////////////////////////////////// -->

						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
						<!-- /////////////////////////////////// -->
												<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
						<!--row second  -->
					<div class="row">
					<!-- ////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- //////////////////////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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

<!-- ////////////////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- ......//////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
						<!-- ////////////////////////////////////////// -->
						
					</div>
					<!-- ///end row second -->
					<div id="tab-2" class="tab-content">
						 Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</div>
					<div id="tab-3" class="tab-content">
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
					</div>
					<div id="tab-4" class="tab-content">
						Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
					</div>
				</div>
				<!-- end tab-layouts -->
		 </div>
		 <!-- end main-tab-eucation -->
		</div>
		<!-- end technology -->
	</section​>
<!-- ///////////////////////////////////// -->
<section id="technology">
		<!-- section-title -->
		<div class="row section technology topspace-second">
				<div class="section-title">
				  <span​ class="col-xs-12 col-lg-12" id="left-title">
				  <span><i class="fa fa-tags" aria-hidden="true"></i></span>
				  មុខជំនួញ
				  </span>
				  <span class="col-xs-6 col-lg-4 col-lg-offset-2" id="right-title"><a href="#">មើលលំអិត</a>
				  </span>	
				</div>
				<!-- main-tab-eucation -->
			<div class="main-tab-content">	
					<ul class="tabs">
						<li class="tab-link current" data-tab="tab-1">ថ្មី</li>
						<li class="tab-link" data-tab="tab-2">គណិតវិទ្យា</li>
						<li class="tab-link" data-tab="tab-3">គីមីវិទ្យា</li>
						<li class="tab-link" data-tab="tab-4">ជីវិទ្យា</li>
						<li class="tab-link" data-tab="tab-5">រូបវិទ្យា</li>
					</ul>

					<div id="tab-1" class="tab-content current">
					<!-- row first -->
					<div class="row">
					<!-- //////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- /////////////////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- ///////////////////////////////////////////// -->

						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
						<!-- /////////////////////////////////// -->
												<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
						<!--row second  -->
					<div class="row">
					<!-- ////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- //////////////////////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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

<!-- ////////////////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
<!-- ......//////////////////////////////////// -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<a href="#" class="thumbnail">
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
						<!-- ////////////////////////////////////////// -->
						
					</div>
					<!-- ///end row second -->
					<div id="tab-2" class="tab-content">
						 Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</div>
					<div id="tab-3" class="tab-content">
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
					</div>
					<div id="tab-4" class="tab-content">
						Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
					</div>
				</div>
				<!-- end tab-layouts -->
		 </div>
		 <!-- end main-tab-eucation -->
>>>>>>> 0688100893f3025cdc9514d7a46c9e55f1f870b4
		</div>
	</section​>
</div>
</content>


<jsp:include page="user/include/footer.jsp"></jsp:include>
</div>