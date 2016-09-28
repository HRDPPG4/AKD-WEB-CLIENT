
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
<!DOCTYPE html>
<html>
<head>
<title>Document Detail</title>
<%@include file="include/link/link.jsp"%>
	
	

    	<!--facebook meta tag--> 
   <meta property="og:url"           content="http://www.your-domain.com/your-page.html" />
	<meta property="og:type"          content="website" />
	<meta property="og:title"         content="Your Website Title" />
	<meta property="og:description"   content="Your description" />
	<meta property="og:image"         content="http://www.your-domain.com/path/image.jpg" />
<style>
	
#SlideBox
{
	position: relative;
}
#btn-fullscreen
{
	position: absolute;
	right: 0px;
	bottom: 0px;
}
#btn-hide
{
	position: absolute;
	right: 15px;
	top: 10px;
	background-color: white;
	height:10%;
	width:25%;
	opacity:0;
	cursor: default;
}
div.drive-viewer-popout-button drive-viewer-dark-button goog-inline-block drive-viewer-button
{
	background-color: #003666 !importants;
	display:none !important;
	opacity:0;
}
.related-slide .related-container #User,.related-slide .related-container #Des,.related-slide .related-container #Title
{
  padding: 3px;
}
.footer{
	background-color: #374458;
	width: 100% !important;
	height:50% !important;
	color:  white;
	margin-top: 30px;
	text-align:left;
	word-wrap:break-word !important;
}
body
{	
	word-wrap:break-word !important;
	font-family:Khmer OS Battambang;	
}
.shareIcon .fa-share-alt:before,.shareIcon .fa-arrow-circle-o-down:before,.shareIcon .fa-thumbs-up:before{
	color:white;
}
#share .fa-share-alt:before,#share .fa-arrow-circle-o-down:before,#share .fa-thumbs-up:before{
	color:black;
}



</style>
</head>
<body ng-cloak ng-app="UserApp"  ng-controller="UserCtrl" data-ng-init="getDocumentAndCategoryAndUserAndCommentByDocID('${id}')">
		
		
		<!-- Facebook Configuration -->			

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1910861819140575', 
      xfbml      : true,
      version    : 'v2.7'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>


 <jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>


		  
<header id="header">
 <jsp:include page="include/header.jsp"></jsp:include> 
</header>
 <jsp:include page="include/view-by-google-drive.jsp"></jsp:include> 

  <jsp:include page="include/toolbar-right.jsp"></jsp:include> 


<div>
	<content>
	<div id="page-content-wrapper">
		 <div class="container-fluid">
			<section id="slide-view">
					<div class="row section nav-left topspace-right-slide">
						<div class="row">
						 <div class="show-slide-view">
							<div class="col-md-8  content-slide-view">
								<div class="row col-md-12 col-md-offset-0">
									<div class="slide-container" id="SlideBox">	
									
									<!--  IFRAME BLOCK TO DISPLAY SLIDE AND PDF -->	
									<button id="btn-hide" class="btn btn-primary">Hide</button>
									 <iframe ng-src='{{trustSrc(docDetail[0].EMBEDED_LINK)}}' allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe> 
									 <div ng-show="docDetail[0].DOC_TYPE_NUM == 2 || docDetail[0].DOC_TYPE_NUM == 3">
									 <button id="btn-fullscreen" class="btn btn-primary" data-toggle="modal" data-target="#ViewByGoogleDrive" ><span> <i class="fa fa-arrows-alt" aria-hidden="true"></i></span></button>
									</div>
									</div>
									
									<div class="detail-slide">
									     <div class="Slide-Owner">											
											<div id="title"><p>{{docDetail[0].TITLE | strLimit: 60}}</p></div>
											<div id="owner">
											<span id="img-user">
												<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
											</span>
											 {{docDetail[0].USERS[0].USER_NAME}}
											
											<input type="text" value={{docDetail[0].THUMBNAIL_URL}} id="thubnail" ng-show="false">
											
											</div>
											<div id="read"><span><i class="fa fa-eye" aria-hidden="true"></i>:  <span ng-bind="docDetail[0].VIEW"></span></span></div>
											<div id="share"><span><i class="fa fa-share-alt" aria-hidden="true"></i>:  <span ng-bind="docDetail[0].SHARE"></span></span></div>
											<div id="line">
												<hr>
											</div>
											<div id="btn" >

												<button class="btn-savelist-detail" id="savelist"  ng-click="getSavelistUser(docDetail[0].USER_ID)"><span><i class="fa fa-plus" aria-hidden="true"  ></i>បន្ថែមទៅ</span></button>

										<!-- <div id="shareBtn" class="btn btn-success clearfix">Share On Facebook</div> -->
												<button class="btn-share-detail" id="shareBtn"><span​ class="shareIcon"><i class="fa fa-share-alt" aria-hidden="true"></i></span>ចែករំលែក</button>

												<button class="btn-report-detail"​ ng-click="checkUserLogin()"><span><i class="fa fa-flag" aria-hidden="true"></i></span>ការវាយតម្លៃ</button>											

											</div>
											
										 </div>										
									</div>
									<!-- savelist -->
									<div class="content-savelist" ng-show="enableList">
										<div class="header-savelist">ការរក្សាឯកសារទុក
										<span><i class="fa fa-times " id="cross" style="font-size:10px;float:right;" aria-hidden="true"></i></span>
										</div>
										<form action="" class=" form-savelist">
											<div class="form-group" id="catsavelist"  >
   			 				 
  							 			<div ng-if="getuserSavelist[0]">
  							 

  								  	
  									
  									<select class="form-control" id ="saveListnames" ng-model="ListName"  ng-change="checkSavelist(ListName)">
  										 <option ng-repeat="c in getuserSavelist" value="{{c.LIST_ID}}"  >{{c.LIST_NAME}} </option>  									

						       		 </select>
						       		 
						       		 
						       	    </div> 
						     
						    <div class="form-group" style="padding-top:10px;padding-top:20px;display:none;" id="newsavelist" >
						    
							   	<input   type="text" class="form-control" ng-model="saveListname">					      
							    <input   type="hidden" class="form-control" value="{{docDetail[0].DOC_ID}}" id="doc_id">
							   
							  ​​	
  								
							</div>
							
							<div class="form-group" style="padding-top:10px;padding-top:20px;"  >
						    
							 <!--   ​<button type="button" class="btn btn-info" id="btn-savelist"​ ng-click="saveList()">រក្សាទុក</button> -->
  								
							</div>
							 </div>
							 			<button type="button" class="btn-create-new"​ >បង្កើតថ្មី</button>
							 			

										<input class=" form-control"  id="comment-savelist" ng-model="saveListname"/>
										<input type="button" id="btnSavelist" value="បញ្ជូន" ng-click="saveList()">

							 			<!-- <input type="button" id="btnSavelist" value="បញ្ជូន" ng-click="saveList()" ng-show="showSave"> -->
							 			
										<!-- <input class=" form-control"  id="comment-savelist" ng-model="saveListname">
										 <input   type="hidden" class="form-control" value="{{docDetail[0].DOC_ID}}" id="doc_id">
										  <input type="button" id="btnSavelist" ng-click="saveList()" ng-show="showSave" value="បញ្ជូនjjj"/>  -->
										


										</form>	
										
									</div>
									<script>
										$(document).ready(function(){
											$('.btn-create-new').click(function(){

												$('#comment-savelist').show();
												$('.btn-create-new').hide();
												$('#btnSavelist').show();
											});

										$('#cross').click(function(){
											$('.content-savelist').hide();
										});
											
									
										});
									</script>
									<!-- report -->
									<div class="content-report">
										<div class="header-report">ការវាយតម្លៃស្លាយនេះ
										<span><i class="fa fa-times" id="cross-report" style="font-size:10px;float:right;" aria-hidden="true"></i></span>
										</div>
										
										<form action="" class=" form-report">
										<textarea class=" form-control" rows="2" id="comment" ng-model="currentReport"></textarea>
											<input type="button" id="btnReport" value="បញ្ជូន" ng-click="insertReport()">
										</form>	
										
									</div>
									
									 
									
									 <div class="slide-detail-more">
									 	<div id="publish">ថ្ងៃចែកចាយ: {{docDetail[0].CREATED_DATE}}</div>
										<div id="category">ប្រភេទកញ្ចប់: {{docDetail[0].CATEGORY[0].CAT_NAME}}</div>
										<hr>
										<div id="description">ការរៀបរាប់បន្ថែម: 
											<div>
												{{docDetail[0].DES}}
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
								<div class="col-md-4">
									<div class="row col-sm-12" >
										<div class="related-container">
																				
												<h4>ឯកសារដែលមានទំនាក់ទំនងនឹងគ្នា</h4>
												<hr>
												
												  <div class="col-xs-12 col-sm-6 col-md-12" ng-repeat="related in documentByCatID | limitTo : 10">  
												       		
												       									 		 
												 		<div style="width:170px;float:left;position: relative;left:-5px;">	
							 								<input   type="hidden" class="form-control" value="{{related.DOC_ID}}" id="slide_id">
							 												 																		
												 		 <a href="/detail/{{related.DOC_ID}}" class="thumbnail-detail" ng-click="getDocumentById(related.DOC_ID)" >
															<div class="img-detail">
															<img id="thumnail" src="{{related.THUMBNAIL_URL}}" alt="Thumbnail" style="">  
															</div>
														</a>
														</div>
														<div style="width:170px;position:relative;float:left;left:10px;top:20px;">
														<div class="title-detail">
															<div id="Title">
												 			{{related.TITLE | strLimit: 30}}
												 			</div>
												 			<div id="View">												 		
												 			{{related.USERS[0].USER_NAME | strLimit: 30}}
												 			</div>
												 			<div id="Des">
												 			{{related.DES | strLimit: 30}}
												 			</div>
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
	</div> 	
	
	

<footer>

	<jsp:include page="include/footer.jsp"></jsp:include>
 </footer>
 <script>				
	  function setHeight() {
	    windowHeight = $(window).innerHeight();
	    $('#SlideBox iframe').css('min-height', windowHeight-180);
	    $('#Slide-Detail iframe').css('min-height', windowHeight-60);
	    $('#Slide-Detail .modal-body').css('min-height', windowHeight-50);
	    $('#ViewByGoogleDrive').css('min-height', windowHeight);
	    
	  };
	  setHeight();
	  
	  $(window).resize(function() {
	    setHeight();
	  }); 
</script>
 	<%@include file="include/script/script.jsp"%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/savelist.js"></script> 		
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script> 
	<!-- Report and Share Linked -->
	<script src="../resources/user/js/report.js"></script>
	<script src="../resources/user/js/countShare.js"></script>
	
	<script>
	
	
document.getElementById('shareBtn').onclick = function() {
	// var thumnail = "https://drive.google.com/thumbnail?&sz=w320&id=" + fbThumbnail;
	 var url = 'http://192.168.178.28:2222/' + window.location.pathname;
	 
	 
	 var image=document.getElementById("thubnail").value;
	// alert(image);
	 
  FB.ui({
    method: 'share',
    display: 'popup',
    caption: 'TESTING',
    href:  url ,
  //  picture: thumnail,
    picture: image,
    
  }, function(response){
	  
  });
}

</script>
</body>

 

