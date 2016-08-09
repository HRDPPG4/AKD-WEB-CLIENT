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
							<div class="col-md-9 content-slide-view">
								<div class="row col-md-12">
															

									<div class="slide-container">	
									<%--  <iframe src="${url}" id="pptx"></iframe>  --%>
										<!-- <a href="" data-toggle="modal" data-target="#ViewByGoogleDrive">
											<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt="">  
										</a>  -->	

										<iframe src="https://docs.google.com/presentation/d/1xmbyX56yEEEkfE-SEKR5rLbqrsntFMqlUyrEoXKG050/embed?start=false&loop=false&delayms=3000"  allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe> 

										


										<!-- <iframe src="https://drive.google.com/file/d/0BwxmFmAg8DYKU2hHdzRkX2RFZEk/preview" width="640" height="480"></iframe> -->


									</div>
									<div>
											<button class="btn btn-primary" data-toggle="modal" data-target="#ViewByGoogleDrive">ថែមប៊ូតុង Share , Savelist,... ទីនេះ</button>
									</div>
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

	
							 <div class="related-slide">
								<div class="col-md-3">
									<div class="row col-sm-12" >
										<div class="related-container">
											<div class="row#">
												<div>
													<h4>ឯកសារដែលមានទំនាក់ទំនងនឹងគ្នា</h4>
													 <div class="col-xs-6 col-sm-4 col-md-12" ng-repeat="slide in slides">
													 		<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
													 			<span class="img " >
													 			<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
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
						
					</div>
		</section>
	  </div> 
			<!-- end container -->
	</div>
		     <!-- end page-content-wrapper -->
	</content>
		
	
	<jsp:include page="include/footer.jsp"></jsp:include>
	

</div>    
