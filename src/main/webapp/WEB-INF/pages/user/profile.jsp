<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
	
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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/profile.css">
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
<!-- START SEARCH BLOCK-->
	 <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-animate.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-sanitize.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.1.2/ui-bootstrap-tpls.js"></script>
   <!--   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   -->
	
	<!-- END SEARCH BLOCK -->
</head>
<body ng-app="UserApp" ng-controller="UserCtrl">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>

				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>

<content>
<div id="page-content-wrapper">
	<section id="profile">
		<div class="container">
			<div class="row section profile topspace-profile">
								
						<div class="left-profile">
						<div class="img-pro"><img alt="" src="${pageContext.request.contextPath}/resources/user/img/minea.jpg">
						</div>
						<div class="user-name">ជឹម មិនា</div>
							<ul class="title-profile nav nav-pills nav-stacked">
							<li class="about"><a data-toggle="tab" href="#infor">អំពីខ្ញុំ </a></li>
								<li class="about"><a data-toggle="tab" href="#mydoc">បញ្ជីរគ្រប់គ្រងឯកសារ</a></li>
								<li class="about" ><a data-toggle="tab" ng-click="getLogByUser(2)" href="#viewed">ឯកសារដែលបានមើល</a></li>
								<li class="about"><a data-toggle="tab" href="#savelist">បញ្ជីររក្សាទុកឯកសារ</a></li>
								
							</ul>
						</div>
						<!-- right side -->
				
					<div class="tab-content">
							<div id="infor" class="tab-pane fade in active">
									<div class="content-aboutme">
										<div class="header-infor">
											ព័ត៌មានផ្ទាល់ខ្លួន
										</div>
										<div>
										<div class="span12">
									  		<form action="">
									  		<label></label>
									  		
									  		</form>
									  	</div>
									  	</div>
									</div>
							</div>
						<!--  <div id="dashbord" class="tab-pane fade">
							<div class="dashboard-content">
										<div class="preview-all">
											<ul id="dashboard-header">
												<li>
													<div class="view-value">25</div>
													<div class="view-name">មើល</div>
												</li>
												<li>
													<div class="view-value">25</div>
													<div class="view-name">មើល</div>
												</li>
												<li>
													<div class="view-value">25</div>
													<div class="view-name">មើល</div>
												</li>
											</ul>
										</div>
							</div>
							<div class="content-pdf-ppt-doc">
										<ul class="nav nav-tabs">
									    <li class="active"><a data-toggle="tab" href="#pdf">PDF</a></li>
									    <li><a data-toggle="tab" href="#ppt">PPT</a></li>
									    <li><a data-toggle="tab" href="#doc">DOC</a></li>
								   </ul>
								   <div class="pdf-ppt-doc tab-content">
									  
									    <div id="pdf" class="tab-pane fade in active">
									      <div class="pdf-preview">
									    		<div ng-repeat="slide in document  | limitTo :2">
									    		<a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
													<span class="img">
													<img src="{{slide.THUMBNAIL_URL}}" alt=""> 
													</span>
													<span class="title-pdf-pre">
												    HTML
												   </span>
												   <span class="count-view-pdf">
												    200 មើល
												    </span>
												</a>
												
												</div>	
										 </div>
										</div>	
										pdf
									    <div id="ppt" class="tab-pane fade">
									     	<div class="ppt-preview">
									    		<div ng-repeat="slide in document  | limitTo :4">
									    		<a href="/detail/{{slide.DOC_ID}}" class="thumbnail_ppt">
													<span class="img_ppt">
													<img src="{{slide.THUMBNAIL_URL}}" alt=""> 
													</span>
													<span class="title-ppt-pre">
												    HTML
												   </span>
												   <span class="count-view-ppt">
												    200 មើល
												   </span>
												 
												</a>
												</div>	
										 </div>
									    </div>
									    ppt tab 
									    <div id="doc" class="tab-pane fade">
									      <div class="doc-preview">
									    		<div ng-repeat="slide in document  | limitTo :2">
									    		<a href="/detail/{{slide.DOC_ID}}" class="thumbnail">
													<span class="img">
													<img src="{{slide.THUMBNAIL_URL}}" alt=""> 
													</span>
													<span class="title-doc-pre">
												    HTML
												   </span>
												   <span class="count-view-doc">
												    200 មើល
												   </span>
												 
												</a>
												</div>	
										 </div>
										 doc tab 
									    </div>
									 </div>
							    </div>
							</div> -->
							<!-- tab dashboard -->
							<!-- //////////////////////////////////////////////////////////////////////////////// -->
							<div id="mydoc" class="tab-pane fade">
								<div class="content-mydoc">
					           	<ul class="nav nav-tabs">
									    <li class="active"><a data-toggle="tab" href="#pdf-edit">PDF</a></li>
									    <li><a data-toggle="tab" href="#ppt-edit">PPT</a></li>
									    <li><a data-toggle="tab" href="#doc-edit">DOC</a></li>
								   </ul>
								   <div class="pdf-ppt-doc-edit tab-content">
								   		 <div id="pdf-edit" class="tab-pane fade in active">
								   		 		
								   		 	<div class="list-group" ng-repeat="slide in document  | limitTo :2">

								    			<a href="/detail/{{slide.DOC_ID}}" class="list-group-item">
								
													<div class="media">
														<div class="checkbox pull-left">
												    		<label>
																<input type="checkbox" value="">				
															</label>
														</div>
														<div class="pull-left">
															<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body" style="padding-top:20px;">
															<h4 class="media-heading">គណិតវិទ្យា</h4>
															<p>ជាសៀវភៅដល់ល្អ</p>
														</div>
								
													</div>					
											        
											    </a>
											   
								
											</div>
								   		 		
								   		 </div>
								   		 <!--edit pdf  -->
								   		 <div id="ppt-edit" class="tab-pane fade">
								   		 <div class="list-group" ng-repeat="slide in document  | limitTo :2">

								    			<a href="/detail/{{slide.DOC_ID}}" class="list-group-item">
								
													<div class="media">
											        
														<div class="checkbox pull-left">
												    		<label>
																<input type="checkbox" value="">				
															</label>
														</div>
														<div class="pull-left">
															<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body">
															<h4 class="media-heading">គណិតវិទ្យា</h4>
															<p>ជាសៀវភៅដល់ល្អ</p>
														</div>
								
													</div>					
											        
											    </a>
											   
								
											</div>
								   		 </div>
								   		 <!--edit doc  -->
								   		 <div id="doc-edit" class="tab-pane fade">
								   		 <div class="list-group" ng-repeat="slide in document  | limitTo :2">

								    			<a href="/detail/{{slide.DOC_ID}}" class="list-group-item">
								
													<div class="media">
											        	
														<div class="checkbox pull-left">
												    		<label>
																<input type="checkbox" value="">				
															</label>
														</div>
														<div class="pull-left">
															<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body"​>
															<h4 class="media-heading">គណិតវិទ្យា</h4>
															<p>ជាសៀវភៅដល់ល្អ</p>
														</div>
								
													</div>					
											        
											    </a>
											   
								
											</div>
								   		 </div>
								   </div>
								   
								   <!-- end sub content -->
					          </div>
					        </div>
					      <!-- tab mydoc -->
					       <div id="viewed" class="tab-pane fade" >
						         <div class="content-viewed-all">
						         		<div id="header-view-history">
						         			<ul>
						         				<li class="history-title">ប្រវត្តិការមើល</li>
						         			</ul>
						         		</div>
						         		<div id="content-view-history">
								         		<div class="btn-clear-history">
								         			<button class="clear-history">សំអាតប្រវត្តិមើលទាំងអស់</button>
								         		</div>
							         		
							         		<div class="history-view">
							         			<div class="list-group" ng-repeat="log in getLogByUser" | limitTo :5">
	
									    			<a href="/detail/{{log.DOCUMENT.DOC_ID}}" class="list-group-item">
									
														<div class="media">
												     
															<div class="checkbox pull-right">
													    		<label>
																	<span><i class="fa fa-times" aria-hidden="true"></i></span>				
																</label>
															</div>
															<div class="pull-left">
																<img class="media-object" src="{{log.DOCUMENT.THUMBNAIL_URL}}" alt="Image">
															</div>
															<div class="media-body">
																<h4 class="media-heading">{{log.DOCUMENT.TITLE}}</h4>
																<p>{{log.DOCUMENT.DES}}</p>
															</div>
									
														</div>					
												        
												    </a>
												 </div>
							         		</div>
						         		</div>
						         </div>
					      </div>
			      				<!-- tab viewed -->
			      			<div id="savelist" class="tab-pane fade">
			      				 <div class="content-savelist-all">
								 	<div id="header-view-savelist">
								 		<ul class="view-savelist">
										  <li class="savelist"> បញ្ជី​បទ​ដែល​បាន​បង្កើត</li>
										  <li class="btn-add">
										  <button>
										  <i class="fa fa-plus-circle" aria-hidden="true"></i>បញ្ជីបង្កើតឯកសារថ្មី
										  </button>
										  </li>
										</ul>
								    </div>
								    <div>
								    		<div class="list-group" ng-repeat="slide in document  | limitTo :2">
	
									    			<a href="/detail/{{slide.DOC_ID}}" class="list-group-item">
									
														<div class="media">
												     
															<div class="checkbox pull-right">
															</div>
															<div class="pull-left">
																<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
															</div>
															<div class="media-body">
																<h4 class="media-heading">HTML</h4>
																<p>HTML ជាភាសាមួយក្នុងការចាប់ផ្តើម</p>
															</div>
									
														</div>					
												        
												    </a>
												 </div>
								    </div>
								</div>
								
								<div class="createlist-tooltip">
						           		<div class="tooltip-header-list"></div>
						           		<div class="body-list">
						           			<div​​​​​ class="header-list">
						           			 ចំណង​ជើង​បញ្ជី​ដាក់ឯកសារ
							           			 <div class="descript-list">
							           				<input type="text" placeholder="បញ្ចូលចំណងជើងបញ្ជីដាក់ឯកសារ"/>
							           			</div>
							           			<div class="footer-list">
							           					<div class="create-playlist-section">
							           						<button class="btn-content-list">បោះបង់</button>
							           						<button class="btn-create">បង្កើត</button>
							           					</div>
							           			</div>
						           			</div>
						           			
						           		</div>
						           </div>
						          <!--  <script type="text/javascript">
										
									</script> -->
						      <!--  -->
						    </div>
						    
							<!-- tab about me -->
						         	
						      
					  </div>
						<!-- end tab content left nav -->	
		       </div>
		
	</section>
</div>
</content>

 <footer>
	<%-- <jsp:include page="include/footer.jsp"></jsp:include> --%>
   </footer>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/slide-detail.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/index.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/angular/UserApp.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script>

	
	<!-- library jquery for file upload -->
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script>
	<!-- Online Link -->
	
	
</body>
</html>
