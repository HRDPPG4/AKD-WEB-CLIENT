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
							<div class="col-md-6 content-slide-view">
								<div class="row col-md-12">
									<div class="slide-container">																											 
									<%--  <iframe src="${url}" id="pptx"></iframe>  --%>
										<a href="" data-toggle="modal" data-target="#ViewByGoogleDrive">
											<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt="">  
										</a> 											
																										
									</div>

									<div>
											<button class="btn btn-primary">ថែមប៊ូតុង Share , Savelist,... ទីនេះ</button>
									</div>



									<div id="related-slide">
										<h3>ឯកសារដែលមានទំនាក់ទំនងនឹងគ្នា</h3>
										 <div class="col-sm-4" ng-repeat="slide in slides">
										 		<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
										 			<span class="img " >
										 			<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
										 			</span>
										 		</a>
										 </div> 
									</div>

									<!-- <div>
										 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#ViewByGoogleDrive"> <span><i class="fa fa-upload" aria-hidden="true"></i></span> មើលទំហំពេញ</button>
									</div> -->
									
									<!-- <div class="detail-slide">
									     <div class="watch-titles">
											<span>Title-slide</span>
											<span>Framewor</span>
										  </div>
									</div>
									
									<div class="commend-visitor">
											<jsp:include page="include/comment.jsp"></jsp:include>
									</div> -->
									
								</div>
							</div>
						</div> 




	
							 <div class="show-slides-cates">
								<div class="col-md-6  content-cates">
								<div class="row col-lg-12" >
									<div class="cates-container">
										<div class="row">
											<!-- <div class="col-sm-6" ng-repeat="slide in slides">
												<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
													<span class="img " >
													<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
													</span>
												</a>
											</div> -->



									<div class="detail-slide">
									     <div class="Slide-Owner">
											<div id="title">វិធីសាស្ត្រក្នុងការពន្យារកំណើត</div>

											<div id="owner">
											<span id="img-user">
												<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
											</span>
												ហ៊ុំ ជីវ័ន
											</div>

											<div id="read">ចំនួនអ្នកអានៈ100</div>

											
											<div id="share">ចំនួនអ្នកចែកចាយៈ80</div>
											<div id="publish">Publish on Aug 13 2016</div>
											<div id="category">Category: Technology</div>


											<div id="description">Description: 
												<div>
													ការពន្យាកំណើតជួយកាត់បន្ថយនូវបន្ទុកក្នុងគ្រួសារ។
												</div>
											</div>
												
											
											
										 </div>
									</div>
									
									<div class="commend-visitor">
											<jsp:include page="include/comment.jsp"></jsp:include>
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
