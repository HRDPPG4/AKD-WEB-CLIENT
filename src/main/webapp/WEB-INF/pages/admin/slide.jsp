<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	
	 <%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
</sec:authorize>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MainApp">
<head>

<script>
window.userID = "${userID}"; 
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Slide</title>
<%@include file="include/admin-link.jsp"%>

<script	src="${pageContext.request.contextPath}/resources/admin/angular/angular.min.js"></script>
<script	src="${pageContext.request.contextPath}/resources/admin/angular/AdminApp.js"></script>
<script	src="${pageContext.request.contextPath}/resources/admin/js/jquery.filer.js"></script>
<script	src="${pageContext.request.contextPath}/resources/admin/js/jquery-upload-file.js"></script>
<script	src="${pageContext.request.contextPath}/resources/admin/js/jquery-latest.js"></script>
<link href="${pageContext.request.contextPath}/resources/admin/css/jquery.filer.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/admin/css/jquery.filer-dragdropbox-theme.css" rel="stylesheet" />

<!-- Sweet Alert -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<style>
.form-horizontal .form-group {
	margin-right: 20px;
	margin-left: 20px;
}

.btn-flat {
	border-radius: 0;
	margin-left: 20px;
}
#PAGINATION{
	text-align:center;
}
</style>
</head>
<body ng-cloak class="skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="include/admin-header.jsp"%>
		<%-- <%@include file="../include/navigation.jsp" %> --%>
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img
					src="${pageContext.request.contextPath}/resources/admin/img/avatar.png"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>ADMIN</p>
				<p>BUNHONG KIM</p>

			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview"><a href="dashboard"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span>
			</a></li>

			<li class="active"><a href="slide"><i
					class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li><a href="main-category"> <i class="fa fa-list"></i> <span>Categories</span></a></li>

			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li><a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
					 </a></li>

			<li><a href="savelist"> <i class="fa fa-list"></i> <span>Savelist</span>
					
			</a></li>

			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feeds
						Back</span> 
			</a></li>
			<li><a href="report"> <i class="fa fa-exclamation-circle"></i>
					<span>Report</span> 
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>





		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Slide Information <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active"><a href="#">Slide</a></li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content" ng-controller="DocumentCtrl">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Slide Data</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">

							<button class="btn btn-flat btn-primary" data-toggle="modal"
								data-target="#addDocument" ng-click="getAllCategory()">Add Slide</button>


							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Title</th>
										<th>Desciption</th>
										<th>Post Date</th>
										<th>View</th>
										<th>Share</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="d in document">
										<td>{{d.TITLE}}</td>
										<td>{{d.DES}}</td>
										<td>{{d.CREATED_DATE}}</td>
										<td>{{d.VIEW}}</td>
										<td>{{d.SHARE}}</td>
										<td><span class="label label-success">{{d.STATUS}}</span></td>
										<td>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>

								</tbody>
								
							</table>
							<div id="PAGINATION"></div>
						</div>
						<!-- /.box-body -->
					</div>

					<!-- Modal Start -->

					<%@include file="include/add-document.jsp"%>

					<!-- Modal End -->
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> 
			</section>
			<!-- /.content -->
		</div>
	</div>
	</div>

	</div>
	<script src="/resources/admin/js/jquery.bootpage.min.js"></script>
</body>
</html>