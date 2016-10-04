 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
   <sec:authentication  property="principal.email" var="userEmail"/> 
   <sec:authentication  property="principal.profile" var="userProfile"/>
</sec:authorize>

<script>
	window.userID = "${userID}"; 
</script>
    
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
<body ng-cloak ng-app="UserApp" ng-controller="UserCtrl" ng-init="getUserByID()" class="hold-transition skin-blue sidebar-mini">
	<jsp:include page="include/register.jsp"></jsp:include>
	<jsp:include page="include/login.jsp"></jsp:include>
	<jsp:include page="include/upload.jsp"></jsp:include>		
	<%@include file="include/updateDocument.jsp"%>	
				  
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
					 <div class="tab-content">
					 	<%@include file="include/user-update/user-info.jsp"%>
					 	<%-- <%@include file="include/user-update/user-dashboard.jsp"%> --%>				 		
						<%@include file="include/user-update/user-doc.jsp"%>	
				      	<%@include file="include/user-update/user-savelist.jsp"%>	
				 		<%@include file="include/user-update/user-history.jsp"%>
				 		<%@include file="include/user-update/modal-insert-update-savelist.jsp"%>				 							 		
					  </div>						
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