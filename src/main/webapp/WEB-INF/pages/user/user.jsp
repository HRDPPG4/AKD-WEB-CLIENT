 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<%@include file="include/link/link.jsp"%>

	<!--  New Code -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/ionicons/ionicons.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/AdminLTE/css/AdminLTE.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/AdminLTE/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/userAccount.css">
</head>
<body ng-cloak ng-app="UserApp" ng-controller="UserCtrl" class="hold-transition skin-blue sidebar-mini">

<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>
<jsp:include page="include/toolbar-right.jsp"></jsp:include>

<section>
	<div style="margin-top:15px;">					 						
		<div class="wrapper">
		  	<%@include file="include/user/left-side-bar.jsp"%>	
		  		  	
			<div class="content-wrapper">
			  <%@include file="include/user/content-header.jsp"%>
			  <section class="content">				
				sdsdsd				
			  </section>
			</div>
		
		  <%@include file="include/user/footer.jsp"%>
		  <%@include file="include/user/right-control-side-bar.jsp"%>
		</div>				
	</div>
</section>

 <%@include file="include/script/script.jsp"%>
<!-- New code here -->
<script src="${pageContext.request.contextPath}/resources/plugins/fastclick/fastclick.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/plugins/AdminLTE/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/AdminLTE/js/demo.js"></script>
</body>
</html>