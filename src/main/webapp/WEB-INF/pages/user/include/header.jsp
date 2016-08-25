<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

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
                    <input type="text" class="form-control"  placeholder="ស្វែងរក"  ng-model="selected" uib-typeahead="title.TITLE  for title in allDocTitle | filter:$viewValue | limitTo:8" class="form-control form-search">
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
            </div>
        </div>
	</div>
		<!-- <form class="navbar-form navbar-left form-contain" role="search">
        <div class="form-group typeahead-demo">          
          <input placeholder="ស្វែងរក" type="text" ng-model="selected" uib-typeahead="title.TITLE  for title in allDocTitle | filter:$viewValue | limitTo:8" class="form-control form-search">        
        </div>
        <button type="submit">
        	 <i class="fa fa-search" aria-hidden="true"></i>
        </button>
        
      </form> -->
     <!--  <span>Model: {{selected | json}}</span> -->
	</div>
	<div class="upload-signup-signin" >
     	<ul>            
            <li id="upload"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#upload" ng-click="showCategory()">ចែកចាយឯកសារ</a>
            </li>

            <li id="signin"><a href="#features" class="btn btn-default" data-toggle="modal" data-target="#login">ចូលប្រើប្រាស់</a>
            </li>

            <li id="signup"><a href="#stories" class="btn btn-default" data-toggle="modal" data-target="#register">ចុះឈ្មោះ</a>
            </li>
            <li class="col-sm-1" id="avatar-user"><a href="/profile"><img alt="" src="${pageContext.request.contextPath}/resources/user/img/avatar.png">
                <ul  class="tooltiptext">
                	<li><a href="/profile" target="_self"> ទំព័ររបស់ខ្ញុំ</a></li>
                	<li><a href="#"> ចាកចេញ</a></li>
                </ul>
            </a>
            </li>
          
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
			  
			  <li class="icon">
			   <span><i class="fa fa-bars" aria-hidden="true"></i></span>
			  </li>
			  
			</ul>
		</div> 
		
	</div>
</nav>
</div>






























<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- top menu -->
	<div class="top-menu">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg">
			<span class="navbar-logo">
					<a href="/" class="navbar-brand# brand-logo"> <img alt="Logo" style="width:80px;" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					 <span>All Khmer Docs</span>
					 </a>
			</span>
	<div class="container">
		<form class="navbar-form navbar-left form-contain" role="search">
        <div class="form-group">
          <input type="text" class="form-control form-search"  placeholder="ស្វែងរក">
        </div>
        <button type="submit">
        	 <i class="fa fa-search" aria-hidden="true"></i>
        </button>
      </form>
	</div>
	<div class="upload-signup-signin" >
     	<ul>            
            <li id="upload"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#upload" ng-click="showCategory()">ចែកចាយឯកសារ</a>
            </li>

            <li id="signin"><a href="#features" class="btn btn-default" data-toggle="modal" data-target="#login">ចូលប្រើប្រាស់</a>
            </li>

            <li id="signup"><a href="#stories" class="btn btn-default" data-toggle="modal" data-target="#register">ចុះឈ្មោះ</a>
            </li>
            <li class="col-sm-1" id="avatar-user"><a href="/profile"><img alt="" src="${pageContext.request.contextPath}/resources/user/img/avatar.png">
                <ul  class="tooltiptext">
                	<li><a href="/profile" target="_self"> ទំព័ររបស់ខ្ញុំ</a></li>
                	<li><a href="#"> ចាកចេញ</a></li>
                </ul>
            </a>
            </li>
          
        </ul>
     </div>
</nav>
</div>
<!-- main menu -->
<div class="main-menu-contain">
<nav class="navbar navbar-default navbar-sticky navbar-main-menu">
	<div class="container">
	 <span class="navbar-logo-main">
			   	<a href="#" class="navbar-brand logo-main-menu">All Khmer Docs</a>
	</span>
	
		 <div class="main-menu">
			<ul class="menu-basic" id="myTopnav">
			  <li><a class="menu" href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  
			  <li ng-repeat="mainCat in mainCategory">
			  		<a class="menu" href="/view/{{mainCat.CAT_ID}}">
					   <span><i class="{{mainCat.ICON}}" aria-hidden="true"></i>
					   </span>{{mainCat.CAT_NAME}}
				 	</a>
			  </li>
			  
			  <li class="icon">
			   <span><i class="fa fa-bars" aria-hidden="true"></i></span>
			  </li>
			  
			</ul>
		</div> 
		
	</div>
</nav>
</div>

 --%>