<title>បច្ចេកវិទ្យា | AKD</title>
<jsp:include page="include/header.jsp"></jsp:include>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<content>
<div id="page-content-wrapper">
	<div class="container" id="container-cate">
		<section id="cates-view">
				<div class="row section nav-left topspace-cates">
				<div class="row-nav-left-content">
				
				
					<div class="row" ng-app="indexApp" ng-controller="indexCtrl">
						<div class="col-sm-3 col-xs-12 " >
							<div class="left-side-nav">
				     			<ul class="main-category">
				     			    <li class="bg-cates">
				     			    <span><i class="fa fa-flask"></i>
			  	   						</span>
					     			  បច្ចេកវិទ្យា
		  	   						</li>

		  	   						<li>
			  	   						<a class= " active">Design</a>
			  	   						<ul class="sub-menus-cates">
			  	   						   <li><a>Photoshop</a></li>
			  	   						   <li><a>Illustrator</a></li>
			  	   						</ul>
		  	   						</li>
		  	   						<li>
			  	   						<a>Network</a>
		  	   						</li>
		  	   						<li>
			  	   						<a>Mobile</a>
		  	   						</li>
		  	   						<li>
			  	   						<a>Programming</a>
			  	   						<ul class="sub-menus-cates">
			  	   						   <li><a>Java</a></li>
			  	   						   <li><a>C++</a></li>
			  	   						   <li><a>VB.NET</a></li>
			  	   						   <li><a>PHP</a></li>
			  	   						</ul>
		  	   						</li>
		  	   						<li>
			  	   						<a>Web</a>
			  	   						<ul class="sub-menus-cates">
			  	   						   <li><a>HTML</a></li>
			  	   						   <li><a>CSS</a></li>
			  	   						   <li><a>Javascript</a></li>
			  	   						   <li><a>Bootstrap</a></li>
			  	   						</ul>
		  	   						</li>
		  	   						
				     			</ul>
				     		</div>
						</div>

						<div class="col-sm-9 col-xs-12">
							<div ng-repeat="slide in slides" class="col-lg-4 col-sm-6 col-xs-12">
								<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
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
					
					</div>
			         
				</div>
	  </section>
  </div>
		<!-- end container -->
</div>
	     <!-- end page-content-wrapper -->
</content>

 <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script> --%>

 <jsp:include page="include/footer.jsp"></jsp:include> 