<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<c:set var="ContextPath" value="http://localhost:2222" />
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
   <sec:authentication  property="principal.email" var="userEmail"/> 
   <sec:authentication  property="principal.profile" var="userProfile"/>         
   <div ng-init="getUserByID()"></div>
</sec:authorize>


<script>
window.userID = "${userID}"; 
/* window.userName="${userName}"; */
window.fileName="";

</script>




<!-- top menu -->
	<div class="top-menu" ng-init="getUserID(memIdAngular)">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg">
			<span class="navbar-logo">
					<a href="/" class="navbar-brand# brand-logo"> <img alt="Logo" src="${pageContext.request.contextPath}/resources/user/img/logo-4.png"/>					 
					 </a>					
			</span>
	<div class="container">
	<div class="row">
        <div class="col-sm-4 col-sm-offset-2">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <!-- <input myEnter="searchPage()" type="text" class="form-control form-search"  placeholder="ស្វែងរក"  ng-model="selected" uib-typeahead="allDocTitle.TITLE for allDocTitle in allDocTitle | filter:$viewValue | limitTo:8"> -->
                    <input myEnter="searchPage()" type="text" class="form-control form-search"  placeholder="ស្វែងរក"  ng-model="selected" uib-typeahead="title for title in allDocTitle | filter:$viewValue | limitTo:8">
                    <span class="input-group-addon">
                        <button type="submit" ng-click="searchPage()">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
            </div>
        </div>
	</div>
	<!-- search form -->
		<!-- <form class="navbar-form navbar-left form-contain" role="search">
        <div class="form-group typeahead-demo">          
          <input myEnter="searchPage()" placeholder="ស្វែងរក" type="text" ng-model="selected" uib-typeahead="title.TITLE for title.TITLE in allDocTitle.TITLEdsd | filter:$viewValue | limitTo:8" class="form-control form-search">        
        </div>
      </form> -->
	</div>
	<div class="upload-signup-signin" >
     	<ul>            
            <!-- <li id="upload"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#upload" ng-click="showCategory()">ចែកចាយឯកសារ</a> -->
             <li id="upload"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#upload" ng-click="getAllCategory()">ចែកចាយឯកសារ</a>
            </li>
			
			<!-- If not yet login -->
			<sec:authorize access="isAnonymous()">
            <li id="signin">
            	<!-- <a href="#features" class="btn btn-default" data-toggle="modal" data-target="#login">ចូលប្រើប្រាស់</a> -->
            	<a href="http://120.136.24.174:13300/login?continue-site=${pageContext.request.contextPath}" class="btn btn-default" data-toggle="modal" data-target="#login">ចូលប្រើប្រាស់</a>
            </li>
            <li id="signup"><a href="#stories" class="btn btn-default" data-toggle="modal" data-target="#register">ចុះឈ្មោះ</a>
            </li>
            </sec:authorize>
            
            <!-- If login already-->
            <sec:authorize access="isAuthenticated()">
            <li class="col-sm-1" id="avatar-user"><a href="/profile">
            	<img alt="" src="${userProfile}">
                <ul class="tooltiptext">
                	<li><a href="/profile" target="_self">${userName}</a></li>
                	<li><a href="/logout?logout"> ចាកចេញ </a></li>
                </ul>
            </a>
            </li>
            </sec:authorize>
          
        </ul>
     </div>
</nav>
</div>
<!-- main menu -->
<div class="main-menu-contain">
<nav class="navbar navbar-default navbar-sticky navbar-main-menu">
	<div class="container">
	<!--  <div class="navbar-logo-main"> -->
			  
	<!-- </div> -->
	
		 <div class="main-menu">
		 <div style="float:left;position:relative;top:5px;padding-right:20px;padding-bottom:8px;"><a href="/" class="logo-main-menu" style="background-color:transparent !important;"><img alt="Logo" style="width:40px;" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/></a>
		</div>
			<ul class="menu-basic" id="myTopnav">
			<li class="icon">
			   <span><i class="fa fa-bars" aria-hidden="true"></i></span>
			 </li>
			
			  <li><a class="menu" href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  
			  <li ng-repeat="mainCat in getAllCategoryAndSubcategory" ng-cloak>
			  		<a class="menu" href="/view/{{mainCat.CAT_ID}}">
					   <span><i class="{{mainCat.ICON}}" aria-hidden="true"></i>
					   </span>{{mainCat.CAT_NAME}}
				 	</a>
			  </li>
			</ul>
</div> 
		

</nav>
	</div>
<!-- </div> -->