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