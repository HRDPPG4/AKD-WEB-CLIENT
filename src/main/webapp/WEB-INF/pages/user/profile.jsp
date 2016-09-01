<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
</sec:authorize>

<script>
window.userID = "${userID}"; 
/* window.userName="${userName}"; */
</script>	
    
    <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

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
<body ng-cloak ng-app="UserApp" ng-controller="UserCtrl" ng-init="getUserByID()">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>
<jsp:include page="include/upload-profile.jsp"></jsp:include>
<jsp:include page="include/updateDocument.jsp"></jsp:include>
  			  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>
<jsp:include page="include/toolbar-right.jsp"></jsp:include>
<content>
<div id="page-content-wrapper">
	<section id="profile">
		<div class="container" >
			<div class="row section profile topspace-profile">	
						<div class="left-profile" >
						<div class="img-pro"><img alt="" src="http://localhost:1111/resources/img/user-profile/{{getUserByID.PROFILE}}">
						<div class="edit-profileImage">
						<a class="upload-proflie" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myProfileImage"><i class="fa fa-instagram" aria-hidden="true" id="camera"></i><div class="profileImage">រូបភាពព័ត៌មានផ្ទាល់ខ្លួន</div></a>
						</div>
						<script>
						   $(document).ready(function(){
							   var profile ='close';
							   $('.img-pro').hover(function(){
								   if (profile=="close") {
								   $('.edit-profileImage').css({'visibility':'visible'}).slideDown();
								   $('.upload-proflie').css({'visibility':'visible'}).slideDown();
								  /*  $('#camera').css({'font-size':'15px','top':'20px'}).slideDown(); */
								   profile ='open';
								   }else{
									   $('.edit-profileImage').css({'visibility':'hidden'}).slideDown();
									   $('.upload-proflie').css({'visibility':'hidden'}).slideDown();
									   /* $('#camera').css({'font-size':'20px','top':'30px'}).slideDown(); */
									   profile ='close';
								   }
							   });
						   });
						</script>
						</div>
						<!-- <div class="user-name">ជឹម មិនា</div> -->
							<ul class="title-profile nav nav-pills nav-stacked">

							<li class="about"><a data-toggle="tab" href="#infor">អំពីខ្ញុំ </a></li>
								<li class="about"><a data-toggle="tab" ng-click="getDocumentByUser()" href="#mydoc">បញ្ជីរគ្រប់គ្រងឯកសារ</a></li>
								<li class="about" ><a data-toggle="tab" ng-click="getLogByUser()" href="#viewed">ឯកសារដែលបានមើល</a></li>
								<li  class="about" id="toggleSavelist" ><a data-toggle="tab" ng-click="getSavelistMenuUser()" href="#savelist">បញ្ជីររក្សាទុកឯកសារ </a>
		
										<li ng-repeat ="savelistmenu in getSavelistMenu" class="about" ng-show ="showsavelist" ><a data-toggle="tab"  ng-click="getDocumentByEachSavelist(savelistmenu.LIST_ID)" href="#mysavelist">{{savelistmenu.LIST_NAME}}</a></li>
							       
								</li>
							</ul>
							<!-- <li class="about"><a data-toggle="tab" ng-click ="getSavelistUser()" href="#savelist">បញ្ជីររក្សាទុកឯកសារ</a></li>  -->
						 
							<!-- <ul class="title-profile nav nav-pills nav-stacked"  >								

								<li  class="active" id="toggleSavelist" ><a data-toggle="tab" ng-click="getSavelistMenuUser()" href="#infor">បញ្ជីររក្សាទុកឯកសារ </a></li>
								<li ng-repeat ="savelistmenu in getSavelistMenu" class="about" ng-show ="showsavelist" ><a data-toggle="tab"  ng-click="getDocumentByEachSavelist(savelistmenu.LIST_ID)" href="#mysavelist">{{savelistmenu.LIST_NAME}}</a></li>
								
							
							</ul> -->
							
						 
						</div>
						<!-- right side -->
				
					 <div class="tab-content">
							<div id="infor" class="tab-pane fade in active">
								<div class="content-aboutme">
										<div class="header-infor">
											<h1>ព័ត៌មានផ្ទាល់ខ្លួន</h1>
										</div>
										<div class="profile-wrap">
										<form action="">
										<div class="profile-name-content">
										 <span class="profile-name-label" style=""><label>ឈ្មោះ </label></span>
										  <span class="profile-name"><input type="text" value={{getUserByID.USER_NAME}} class="input-name"/></span>
										</div>
										<div class="profile-name-content">
										 <span class="profile-email-label"><label> អីុម៉ែល</label></span>
										  <span class="profile-name"><input type="text" value={{getUserByID.EMAIL}} class="input-name" /></span>
										</div>
										<div class="profile-name-content">
										 <span class="profile-phone-label"><label class="left-phone">លេខទូរស័ព្ទ</label></span>
										  <span class="profile-name"><input type="text" value={{getUserByID.PHONE}} class="input-name"/></span>
										</div>
										<div class="profile-name-content">
										 <span class="profile-psw-label" ><label class="left-psw">លេខសំងាត់</label></span>
										  <span class="profile-name"><input type="password" value={{getUserByID.PASSWORD}} class="input-name"/></span>
										</div>
										<input type="submit" value="កែប្រែ" class="submit-profile"/>
									  </div>
									  </form>
							   </div>
							 </div>
						
							<!-- //////////////////////////////////////////////////////////////////////////////// -->
							<div id="mydoc" class="tab-pane fade">
								<div class="content-mydoc">
					           	<ul class="nav nav-tabs">
									    <li class="active"><a data-toggle="tab" ng-click="getDocumentByUser(2)" href="#pdf-edit">PDF</a></li>
									    <li><a data-toggle="tab" ng-click="getDocumentByUser(1)" href="#ppt-edit">PPT</a></li>
									    <li><a data-toggle="tab" ng-click="getDocumentByUser(3)" href="#doc-edit">DOC</a></li>
								   </ul>
								   <div class="pdf-ppt-doc-edit tab-content">
								   		 <div id="pdf-edit" class="tab-pane fade in active">
								   		 		
								   		 	<div class="list-group" ng-repeat ="slide in DocumentUser  ">

								    			<a href="/detail/{{slide.DOC_ID}}" class="">
								
													<div class="media">
														<!-- <div class="checkbox pull-left" ng-click="deleteDocument(slide.DOC_ID)">
												    		<label>
																<input type="checkbox" >
																<input type="hidden" value="2" id ="typeDoc">				
															</label>
														</div> -->
														
														<div class="pull-left">
															<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body" style="padding-top:20px;">
															<h4 class="media-heading">{{slide.TITLE}}</h4>
															<p>{{slide.DES}}</p>
															<p>{{slide.CREATED_DATE}}</p>
														</div>
								
													</div>					
											        
											    </a>
											    
											    <div id="updateAndDelete">
													<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
													<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
												</div>
											   
								
											</div>
								   		 		
								   		 </div>
								   		 <!--edit pdf  -->
								   		 <div id="ppt-edit" class="tab-pane fade" >
								   		 <div class="list-group" ng-repeat ="slide in DocumentUser  | limitTo :20">

								    			<a href="/detail/{{slide.DOC_ID}}" class="">
								
													<div class="media">
											        
														<!-- <div class="checkbox pull-left" ng-click="deleteDocument(slide.DOC_ID)">
												    		<label>
																
																<input type="hidden" value="1" id ="typeDoc">				
															</label>
														</div> -->
														<div class="pull-left">
															<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body">
														    <h4 class="media-heading">{{slide.TITLE}}</h4>
															<p>{{slide.DES}}</p>
															<p>{{slide.CREATED_DATE}}</p>
														</div>
								
													</div>					
											        
											    </a>
											    
											    <div id="updateAndDelete">
													<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
													<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
												</div>
											   
								
											</div>
								   		 </div>
								   		 <!--edit doc  -->
								   		 <div id="doc-edit" class="tab-pane fade">
								   		 <div class="list-group" ng-repeat ="slide in DocumentUser  | limitTo :20">

								    			<a href="/detail/{{slide.DOC_ID}}" class="list-group-item">
								
													<div class="media">
											        	
														<!-- <div class="checkbox pull-left" ng-click="deleteDocument(slide.DOC_ID)">
												    		<label>
																<input type="checkbox" value="2" id ="userDoc">
																<input type="hidden" value="3" id ="typeDoc">				
															</label>
														</div> -->
														<div class="pull-left">
															<img class="media-object" src="{{slide.THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body"​>
															<h4 class="media-heading">{{slide.TITLE}}</h4>
															<p>{{slide.DES}}</p>
															<p>{{slide.CREATED_DATE}}</p>
														
														</div>
								
													</div>					
											        
											    </a>
											    
											    <div id="updateAndDelete">
													<button ng-click="checkDocID(slide.DOC_ID)" class="btn btn-default" data-toggle="modal" data-target="#updateDocument">កែរប្រែ</button>
													<button ng-click="deleteDocument(slide.DOC_ID)" class="btn btn-default">លុប</button>
												</div>
											   
								
											</div>
								   		 </div>
								   </div>
								   
								   <!-- end sub content -->
					          </div>
					        </div>
					      <!-- tab mydoc -->
					      
					 					      
					      
	                    <div id="mysavelist" class="tab-pane fade">
								<div class="content-mydoc">
					           	
								   <div class="pdf-ppt-doc-edit tab-content">
								   		 <div id="pdf-edit" class="tab-pane fade in active">
								   		 		
								   		 	<div class="list-group" ng-repeat ="slide in getDocumentInSavelist  ">

								    			<a href="/detail/{{slide.DOCUMENT[0].DOC_ID}}" class="list-group-item">
								
													<div class="media">
														<div class="checkbox pull-left" >
												    		<label>
																<input type="checkbox" ng-click="deleteSavelistDetail(slide.DOCUMENT[0].DOC_ID)">
																<input type="hidden" value="{{slide.DOCUMENT[0].USER_ID}}" id ="userID">
																<input type="hidden" value="{{slide.LIST_ID}}" id ="listID">				
															</label>
														</div>
														<div class="pull-left">
															<img class="media-object" src="{{slide.DOCUMENT[0].THUMBNAIL_URL}}" alt="Image">
														</div>
														<div class="media-body" style="padding-top:20px;">
															<h4 class="media-heading">{{slide.DOCUMENT[0].TITLE}}</h4>
															<p>{{slide.DOCUMENT[0].DES}}</p>
															<p>{{slide.DOCUMENT[0].CREATED_DATE}}</p>
														</div>
								
													</div>					
											        
											    </a>
											   
								
											</div>
								   		 		
								   		 </div>
								   	 <!--edit pdf  -->
							
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
							         			<div class="list-group" ng-repeat="log in getLogByUser" >
	
									    			<a href="/detail/{{log.DOCUMENT.DOC_ID}}" class="list-group-item">
									
														<div class="media">
														
														   
												     
															<div class="checkbox pull-right" ng-click="deleteLog(log.LOG_ID)">
													    		<label>
													    	        <input type="hidden" value="{{log.DOCUMENT.USER_ID}}" id="userID">
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
								    		<div class="list-group" ng-repeat="list in getuserSavelist ">
	
									    			<a href="/detail/{{list.SAVELISTDETAIL[0].DOCUMENT[0].DOC_ID}}" class="list-group-item">
									
														<div class="media">
												     
															<div class="checkbox pull-right">
															</div>
															<div class="pull-left">
																<img class="media-object" src="{{list.SAVELISTDETAIL[0].DOCUMENT[0].THUMBNAIL_URL}}" alt="Image">
															</div>
															<div class="media-body">
																<h4 class="media-heading">{{list.SAVELISTDETAIL[0].DOCUMENT[0].TITLE}}</h4>
																<p>{{list.SAVELISTDETAIL[0].DOCUMENT[0].DES}}</p>
																<p>បង្កើតថ្ងៃទីៈ{{list.CREATED_DATE}}</p>
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
						           			 
							           			 <div class="descript-list">
							           				<input type="text" placeholder="បញ្ចូលចំណងជើងបញ្ជីដាក់ឯកសារ" ng-model="saveListname"/>
							           			</div>
							           			<div class="footer-list">
							           					<div class="create-playlist-section">
							           						<button class="btn-content-list">បោះបង់</button>
							           						<button class="btn-create" ng-click="saveList()">បង្កើត</button>
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
    <a href="#0" class="cd-top">Top</a>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/back-to-top.js"></script>
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
