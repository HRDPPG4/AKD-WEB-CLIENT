<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
   <sec:authentication  property="principal.email" var="userEmail"/> 
   <sec:authentication  property="principal.profile" var="userProfile"/>
</sec:authorize>

<script>
window.userID = "${userID}"; 
/* window.userName="${userName}"; */
</script>	
    
    <!DOCTYPE html>
<html>
<head>
<title>User Profile</title>

 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/user/img/AKD.png">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css">	
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/jQuery/css/jquery.filer.css" type="text/css" >
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/jQuery/css/jquery.filer-dragdropbox-theme.css" type="text/css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/save-list.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/search.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/font-server/font.css" />
<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/plugins/googleFont/font.css' >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/slide-detail.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/profile.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/user_view.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/comment.css" />
<!-- Register -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/register.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/categories.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/details.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/responsive.css">


<style>
.nav li ul li a:hover {
    background-color: white !important;
    color: black !important;
        width: 188px;
}

</style>	
</head>
<body ng-cloak ng-app="UserApp" ng-controller="UserCtrl" ng-init="getUserByID()">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/updateDocument.jsp"></jsp:include>
  			  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>
<jsp:include page="include/toolbar-right.jsp"></jsp:include>
<content>
	<!-- <div id="page-content-wrapper"> -->
		<%-- <section id="profile"> --%>
			<!-- <div class="container" > -->
				<!-- <div class="row section profile topspace-profile">	 -->
					<%@include file="include/user/user-left-side-bar.jsp"%>						
					 <div class="tab-content">
						<%@include file="include/user/user-info.jsp"%>	
						<%@include file="include/user/user-doc.jsp"%>	
				      	<%@include file="include/user/user-savelist.jsp"%>	
				 		<%@include file="include/user/user-history.jsp"%>
				 		<%@include file="include/user/user-create-new-savelist.jsp"%>					 		
					  </div>
				<!-- </div> -->	
			<!-- </div>	 -->		
		<%-- </section> --%>
	<!-- </div> -->
</content>

<a href="#0" class="cd-top">Top</a>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery-latest.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.filer.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery-upload-file.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/angular/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/angular/angular-animate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/angular/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/angular/ui-bootstrap-tpls.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/angular/UserApp.js"></script>
</body>
</html>
