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
											commend-visitor
									</div>
								</div>
							</div>
						</div> 
	
							 <div class="show-slides-cates">
								<div class="col-lg-5  content-cates">
								<div class="row col-lg-12" >
									<div class="cates-container">
										slide-01
									</div>
									<div class="cates-container">
										slide-02
									</div>
									<div class="cates-container">
										slide-03
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
