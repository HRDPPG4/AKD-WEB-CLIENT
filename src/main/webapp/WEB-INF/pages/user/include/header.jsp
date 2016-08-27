<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
</sec:authorize>

<script>
userID = "${userID}";
userName = "${userName}";

	//alert("Username: "+userName+ "And UserID: "+userID);

</script>




<!-- top menu -->
	<div class="top-menu">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg">
			<span class="navbar-logo">
					<a href="/" class="navbar-brand# brand-logo"> <img alt="Logo" style="width:80px;" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					 <span>All Khmer Docs</span>
					 </a>
			</span>
	<div class="container">
	<div class="row">
        <div class="col-sm-4 col-sm-offset-2">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <input myEnter="searchPage()" type="text" class="form-control form-search"  placeholder="ស្វែងរក"  ng-model="selected" uib-typeahead="title.TITLE  for title in allDocTitle | filter:$viewValue | limitTo:8">
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
          <input myEnter="searchPage()" placeholder="ស្វែងរក" type="text" ng-model="selected" uib-typeahead="title.TITLE  for title in allDocTitle | filter:$viewValue | limitTo:8" class="form-control form-search">        
        </div>
      </form> -->
	</div>
	<div class="upload-signup-signin" >
     	<ul>            
            <li id="upload"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#upload" ng-click="showCategory()">ចែកចាយឯកសារ</a>
            </li>
			
			<!-- If not yet login -->
			<sec:authorize access="isAnonymous()">
            <li id="signin"><a href="#features" class="btn btn-default" data-toggle="modal" data-target="#login">ចូលប្រើប្រាស់</a>
            </li>

            <li id="signup"><a href="#stories" class="btn btn-default" data-toggle="modal" data-target="#register">ចុះឈ្មោះ</a>
            </li>
            </sec:authorize>
            
            <!-- If login already-->
            <sec:authorize access="isAuthenticated()">
            <%-- <li><sec:authentication property="principal.name"/></li> --%>
            <li class="col-sm-1" id="avatar-user"><a href="/profile"><img alt="" src="${pageContext.request.contextPath}/resources/user/img/avatar.png">
                <ul  class="tooltiptext">
                	<li><a href="/profile" target="_self">${userName}</a></li>
                	<li><a href="/login"> ចាកចេញ</a></li>
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
		<%--  <div style="float:left;position:relative;top:5px;padding-right:20px;padding-bottom:8px;"><a href="/" class="logo-main-menu" style="background-color:transparent !important;"><img alt="Logo" style="width:40px;" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/></a> --%>
		</div>
			<ul class="menu-basic" id="myTopnav">
			<li class="icon">
			   <span><i class="fa fa-bars" aria-hidden="true"></i></span>
			  </li>
			
			  <li><a class="menu" href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  
			  <li ng-repeat="mainCat in getAllCategoryAndSubcategory">
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