<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<style>
.navbar-nav ul.dropdown-menu {
    width: 335px !important;
    padding: 20px;
    min-height: 196px;
    overflow-y: auto;
    width: 320px;
}
.dropdown-item li {
    padding: 1px;
    margin: 1px;
    display: inline-block;
    vertical-align: top;
    color: black;
    z-index: 999;
    width: 86px;
    height: 98px;
    text-align: center;
} 
.dropdown-item li a {
    position: absolute;
    border-radius: 3px;
    border: 0.01em solid #fff;
}
.dropdown-item li a img {
    width: 48px;
    height: 48px;
}
.dropdown-item li a span {
    display: block;
    font-size: 10pt !important;
}
.navbar-collapse.collapse{
	display: table-cell!important;
}
.nav>li>a {
    padding: 0px 26px;
   	background-color: white;
   	color:black !important;
}
.nav>li>a:hover {
    color:black !important;
}
#partner
{
	font-size: 27px;
}
li#partner
{
	font-size: 25px;
}

.navbar-nav>li>a {
    line-height: 0px;
}
.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus, .navbar-inverse .navbar-nav>.open>a:hover {
    color:black !important;
    background-color: white;
}
</style>
   <div class="navbar-header">
	  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	  </button>
</div>

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">  
  <ul class="nav navbar-nav navbar-right">	
	<li class="dropdown">
	  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-th"></span></a>
	  <ul class="dropdown-menu dropdown-item" style="max-height: 346px; height: 396px;">
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			<li>
				<a href="#">
					<img class="img-rounded" alt="" src="${pageContext.request.contextPath}/resources/user/img/AKD.png"/>
					<span>AKD</span>
				</a>
			</li>
			
			
	  </ul>
	</li>
	<!-- <li>
		<a href="#">
			  <div id="google_translate_element"></div>
			  	<script type="text/javascript">
					function googleTranslateElementInit() {
					  new google.translate.TranslateElement({pageLanguage: 'kh', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
					}
				</script>
				<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
		</a>
	</li> -->
			
  </ul>
</div><!-- /.navbar-collapse -->