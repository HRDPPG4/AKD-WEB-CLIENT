<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>	

<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
   <sec:authentication  property="principal.email" var="userEmail"/> 
   <sec:authentication  property="principal.profile" var="userProfile"/>         
</sec:authorize>

<html>
<head>

<script>
window.userID = "${userID}"; 
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Slide</title>
<%@include file="include/admin-link.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/jQuery/css/jquery.filer.css" type="text/css" >
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/jQuery/css/jquery.filer-dragdropbox-theme.css" type="text/css" >

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
<body​​ ng-app="MainApp" ng-cloak class="skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="include/admin-header.jsp"%>
		<%-- <%@include file="../include/navigation.jsp" %> --%>
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img alt="" src="${userProfile}" class="userProfile">
			</div>
			<div class="pull-left info">
				<p>ADMIN</p>
				<p>${userName}</p>

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
								data-target="#upload-document" ng-click="getAllCategory()">Upload More
							</button>
							<br><br>


							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>#</th>
										<th>Title</th>
										<th>Posted By</th>
										<th>Posted Date</th>
										<th>View</th>
										<th>Share</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="d in document" ng-init="rowNumber= 10">
										<td>{{($index + ((filter.page - 1) * rowNumber)) + 1}}</td>
										<td>{{d.TITLE | strLimit: 22}}</td>
										<td>{{d.USERS[0].USER_NAME | strLimit: 22}}</td>
										<td>{{d.CREATED_DATE}}</td>
										<td>{{d.VIEW}}</td>
										<td>{{d.SHARE}}</td>
										<td><span class="label label-success">{{d.STATUS}}</span></td>
										<td>
											<button type="button" class="btn btn-primary btn-sm"
												ng-click="getDataForUpdate(this)"
												data-toggle="modal"	data-target="#updateDocument">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm"
												ng-click="alertDelete(d.DOC_ID)">
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
					<%@include file="include/update-document.jsp"%>
					<%@include file="include/upload-document.jsp"%>

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
<%@include file="include/admin-script.jsp"%> 
</body>
</html>