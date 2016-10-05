<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
   <sec:authentication  property="principal.userID" var="userID"/>
   <sec:authentication  property="principal.name" var="userName"/>
   <sec:authentication  property="principal.email" var="userEmail"/> 
   <sec:authentication  property="principal.profile" var="userProfile"/>         
</sec:authorize>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MainApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Savelist</title>
<%@include file="include/admin-link.jsp"%>
<style>
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

			<li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li><a href="main-category"> <i class="fa fa-list"></i> <span>Categories</span></a></li>
			
			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li><a href="comment"><i
					class="fa fa-comment"></i> <span>Comments</span></a></li>

			<li class="active"><a href="savelist"> <i class="fa fa-list"></i>
					<span>Savelist</span> 
			</a></li>
		
			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feeds
						Back</span> 
			</a></li>
			<li><a href="report"> <i class="fa fa-exclamation-circle"></i>
					<span>Report</span> 
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Savelist Tables <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active"><a href="#">Savelist</a></li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content" ng-controller="SavelistCtrl">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Savelist Table</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>#</th>
										<th>List Name</th>
										<th>User</th>
										<th>Document</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="s in savelist" ng-init="rowNumber= 10">
										<td>{{($index + ((filter.page - 1) * rowNumber)) + 1}}</td>
										<td>{{s.LIST_NAME | strLimit: 32}}</td>
										<td>{{s.USERS[0].USER_NAME}}</td>
										<td>{{s.DOC_ID}}</td>
										<td><span class="label label-success">{{s.STATUS}}</span></td>
										<td>
											<button type="button" class="btn btn-primary btn-sm"
												ng-click="getDataForUpdate(this)"
												data-toggle="modal"	data-target="#updateSavelist">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm"
											  		ng-click="alertDelete(s.LIST_ID)">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>

								</tbody>

							</table>
							<div id="PAGINATION"></div>
						</div>
					</div>
					<!-- ============ Modal Start ================= -->
						<%@include file="include/update-savelist.jsp"%>
					<!-- ============ Modal End   ================= -->	
					
				</div>
			</div>
		</div>
	</div>
	<%@include file="include/admin-script.jsp"%>
</body>
</html>