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
						<div class="well col-sm-3 col-xs-12">
							<div class="left-side-nav">
				     			<ul class="main-category">
				     			    <li class="bg-cates">
					     			     <span><i class="fa fa-tags" aria-hidden="true"></i>
			  	   						 </span>ប្រភេទ
		  	   						</li>
		  	   						<li>
			  	   						<span><i class="fa fa-flask"></i>
			  	   						</span>បច្ចេកវិទ្យា

			  	   						 <ul class="sub-menus-cates">
			  	   					      		<li>ជឿជាក់</li>
			  	   					      		<li>ជឿជាក់</li>
			  	   					      		<li>ជឿជាក់</li>
			  	   					      		<li>ជឿជាក់</li>
			  	   					      </ul>
		  	   						</li>

		  	   						<li>
			  	   						<span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
			  	   						</span>ចំណេះដឹងទូទៅ
		  	   						</li>
		  	   						<li>
			  	   						<span><i class="fa fa-book" aria-hidden="true"></i></span>
			  	   						អក្សរសាស្រត្ត
		  	   						</li>
								   <li>
									   <span><i class="fa fa-cubes" aria-hidden="true"></i>
									   </span>អក្សរសាស្រត្ត
								   </li>
				     			</ul>
				     		</div>
						</div>

						<div class="well col-sm-9 col-xs-12">
							<div ng-repeat="slide in slides" class="col-lg-3 col-sm-4 col-xs-6">
								<a href="/detail?url={{escapeUrl(slide.url)}}" class="thumbnail">
								<span class="img">
								<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt=""> 
								
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