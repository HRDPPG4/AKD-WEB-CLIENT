<title>ទំព័រដើម | AKD</title>
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
						     <li class="active"><a data-toggle="tab" href="#design">Design</a></li>
						    <li><a data-toggle="tab" href="#network">Network</a></li>
						    <li><a data-toggle="tab" href="#mobile">Mobile</a></li>
						    <li><a data-toggle="tab" href="#programming">Programming</a></li>
						   <li><a data-toggle="tab" href="#web">Web</a></li>
					</ul>

				<div class="tab-content">

					<div id="design" class="tab-pane fade in active">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides  | limitTo : 4">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Agriculture/005.png" alt=""> 
								
								
								
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
					
					<div id="network" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides  | limitTo : 4">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/002.png" alt="">
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
				
				<div id="mobile" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides  | limitTo : 4">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/003.png" alt=""> 
								
								
								
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
				
				<div id="programming" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides  | limitTo : 4">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/004.png" alt=""> 
								
								
								
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
				
				<div id="web" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides  | limitTo : 4">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/006.png" alt=""> 
								
								
								
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
			</div>
		</section>
		
		<!-- //////////////////////// -->
		
	<section id="knowledge">
		<!-- section-title -->
		<div class="row section knowledge topspace-second">
				<div class="section-title">
						  <span​ class="col-xs-12 col-lg-12" id="left-title">
						  <span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
				   </span>
						 ចំណេះដឹងទូទៅ
						  </span>
						  <span class="col-xs-6 col-lg-4 col-lg-offset-2" id="right-title"><a href="#">មើលលំអិត</a>
						  </span>	
				</div>
				<!-- end section-title -->
				   <ul class="nav nav-tabs">
						    <li class="active"><a data-toggle="tab" href="#chemical">គីមីវិទ្យា</a></li>
						    <li><a data-toggle="tab" href="#historical">ប្រវត្តិសាស្ត្រ</a></li>
						    <li><a data-toggle="tab" href="#inter-nation">ទំនាក់ទំនងអត្តរជាតិ</a></li>
						    <li><a data-toggle="tab" href="#religion">សាសនា</a></li>
						   <li><a data-toggle="tab" href="#proverb">សុភាសិត</a></li>
					</ul>

				<div class="tab-content">

					<div id="chemical" class="tab-pane fade in active">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Agriculture/002.png" alt=""> 
								
								
								
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
					
					<div id="historical" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Agriculture/006.png" alt=""> 
								
								
								
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
				
				<div id="inter-nation" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Business/006.png" alt=""> 
								
								
								
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
				
				<div id="religion" class="tab-pane fade">
						
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" 
						ng-repeat="slide in slides">
							
							<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Business/011.png" alt=""> 
								
								
								
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
				
				<div id="proverb" class="tab-pane fade">
						
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
			</div>
		</section>
		
		<section id="literal">
		<!-- section-title -->
		<div class="row section literal topspace-second">
				<div class="section-title">
						  <span​ class="col-xs-12 col-lg-12" id="left-title">
						  <span><i class="fa fa-book" aria-hidden="true">
				   </i>
				   </span>
						អក្សរសាស្ត្រ
						  </span>
						  <span class="col-xs-6 col-lg-4 col-lg-offset-2" id="right-title"><a href="#">មើលលំអិត</a>
						  </span>	
				</div>
				<!-- end section-title -->
				   <ul class="nav nav-tabs">
						    <li class="active"><a data-toggle="tab" href="#khmer">ភាសាខ្មែរ</a></li>
						    <li><a data-toggle="tab" href="#culture">វប្បធម៌ទូទៅ</a></li>
						    <li><a data-toggle="tab" href="#poem">កំណាព្យ</a></li>
						    <li><a data-toggle="tab" href="#history">ប្រវត្តិវិទ្យា</a></li>
						   <li><a data-toggle="tab" href="#geography">ភូមិវិទ្យា</a></li>
					</ul>

				<div class="tab-content">

					<div id="khmer" class="tab-pane fade in active">
						
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
					
					<div id="culture" class="tab-pane fade">
						
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
				
				<div id="poem" class="tab-pane fade">
						
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
				
				<div id="history" class="tab-pane fade">
						
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
				
				<div id="hgeography" class="tab-pane fade">
						
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
			</div>
		</section>
		
		<section id="business">
		<!-- section-title -->
		<div class="row section business topspace-second">
				<div class="section-title">
						  <span​ class="col-xs-12 col-lg-12" id="left-title">
						  <span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
				   </span>
						 ចំណេះដឹងទូទៅ
						  </span>
						  <span class="col-xs-6 col-lg-4 col-lg-offset-2" id="right-title"><a href="#">មើលលំអិត</a>
						  </span>	
				</div>
				<!-- end section-title -->
				   <ul class="nav nav-tabs">
						    <li class="active"><a data-toggle="tab" href="#account">គណនី</a></li>
						    <li><a data-toggle="tab" href="#admin">រដ្ឋបាល</a></li>
						   
					</ul>

				<div class="tab-content">

					<div id="account" class="tab-pane fade in active">
						
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
					
					<div id="admin" class="tab-pane fade">
						
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
				
				
			</div>
		</section>
	</div>
</content>




<jsp:include page="user/include/footer.jsp"></jsp:include>
</div>