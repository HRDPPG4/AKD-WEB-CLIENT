<jsp:include page="include/header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
  

<jsp:include page="include/view-by-google-drive.jsp"></jsp:include>
<div ng-app="indexApp" ng-controller="indexCtrl">

	<content>
	<div id="page-content-wrapper">
	
		 <div class="container">
			<section id="slide-view" style="width:100%;" >
					
					<div class="row section nav-left topspace-right-slide">
						<div class="row">
						 <div class="show-slide-view">
							<div class="col-lg-7 content-slide-view">
								<div class="row col-lg-12">
									<div class="slide-container">	
									
																		 
										  <iframe src="${url}" id="pptx"></iframe> 
										 
										<!--  <iframe src="https://drive.google.com/file/d/0BwxmFmAg8DYKYTZwUWdqUU1aNFE/preview"></iframe> -->
										 																			
									</div>

									<div>
										 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#ViewByGoogleDrive"> <!--  <span><i class="fa fa-upload" aria-hidden="true"></i></span> --> មើលទំហំពេញ</button>
									</div>
									
									<div class="detail-slide">
									     <div class="watch-titles">
											<span>Title-slide</span>
											<span>Framewor</span>
										  </div>
									</div>
									
									<div class="commend-visitor">
											<jsp:include page="include/comment.jsp"></jsp:include>
									</div>
									
								</div>
							</div>
						</div> 
	
							 <div class="show-slides-cates">
								<div class="col-lg-5  content-cates">
								<div class="row col-lg-12" >
									<div class="cates-container">
										
										
										
										
										<div class="row">
											<div class="col-sm-6" ng-repeat="slide in slides">
												
												<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
													
													<span class="img " >
													<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
													</span>
													
													<span class="socials" >
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
								</div>
							</div> 
						</div>
						
					</div>
		</section>
	  </div> 
			<!-- end container -->
	</div>
		     <!-- end page-content-wrapper -->
	</content>
		
	
	<jsp:include page="include/footer.jsp"></jsp:include>
	

</div>    
