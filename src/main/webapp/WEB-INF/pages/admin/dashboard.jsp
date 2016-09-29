<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MainApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AKD | Dashboard</title>
<%@include file="include/admin-link.jsp"%>
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
			<li class="treeview active"><a href="dashboard"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span>
			</a></li>

			<li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li><a href="main-category"> <i class="fa fa-list"></i> <span>Categories</span></a></li>
			
			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li><a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
					</a></li>

			<li><a href="savelist"> <i class="fa fa-list"></i> <span>Savelist</span>
					
			</a></li>

			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feed
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
				Dashboard <small>Control panel</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-lg-4 col-xs-6" ng-controller="DocumentCtrl">
					<!-- small box -->
					<div class="small-box bg-aqua">
						<div class="inner">
							<h3>{{documentCount}}</h3>

							<p>Slides</p>
						</div>
						<div class="icon">
							<i class="ion ion-ios-book"></i>
						</div>
						<a href="pages/slides.html" class="small-box-footer">More info
							<i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>

				<!-- ./col -->
				<div class="col-lg-4 col-xs-6" ng-controller="MainCtrl">
					<!-- small box -->
					<div class="small-box bg-green">
						<div class="inner">
							<h3>{{CategoryCount}}</h3>

							<p>Categories</p>
						</div>
						<div class="icon">
							<i class="ion ion-stats-bars"></i>
						</div>
						<a href="pages/main-categories.html" class="small-box-footer">More
							info <i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-lg-4 col-xs-6" ng-controller="UserCtrl">
					<!-- small box -->
					<div class="small-box bg-yellow">
						<div class="inner">
							<h3>{{UserCount}}</h3>

							<p>User Registrations</p>
						</div>
						<div class="icon">
							<i class="ion ion-person-add"></i>
						</div>
						<a href="pages/users.html" class="small-box-footer">More info
							<i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->
				
				<!-- ./col -->
			</div>
			<!-- /.row --> <!-- Main row -->
			<div class="row">
				<section class="content" ng-controller="UserCtrl">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">User Data</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">

								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>ID</th>
											<th>Name</th>
											<th>Email</th>
											<th>Date</th>
											<th>Remark</th>
											<th>Role</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<tr ng-repeat="u in user">
											<td>{{u.USER_ID}}</td>
											<td>{{u.USER_NAME}}</td>
											<td>{{u.EMAIL}}</td>
											<td>{{u.CREATED_DATE}}</td>
											<td>{{u.REMARK}}</td>
											<td>{{u.USER_ROLE}}</td>
											<td>
												<button type="button" class="btn btn-primary btn-sm"
													ng-click="getDataForUpdate(this)" data-toggle="modal"
													data-target="#updateUser">
													<i class="fa fa-edit"></i>
												</button>

												<button type="button" class="btn btn-danger btn-sm"
													ng-click="alertDelete(u.USER_ID)">
													<i class="fa fa-eraser"></i>
												</button>
											</td>
										</tr>
									</tbody>
									<tfoot>
										<!-- <button class="btn btn-flat btn-primary"
											ng-click="updateUser()">Update</button>
										</tr> -->
									</tfoot>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<%@include file="include/admin-script.jsp"%>
</body>
</html>