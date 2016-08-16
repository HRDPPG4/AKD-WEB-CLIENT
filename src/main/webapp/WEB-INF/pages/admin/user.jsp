<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MainApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | User</title>
<%@include file="include/admin-link.jsp"%>
<style>
.form-horizontal .form-group {
    margin-right: 20px;
    margin-left: 20px;
}
</style>
<script
	src="${pageContext.request.contextPath}/resources/admin/angular/angular.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/admin/angular/AdminApp.js"></script>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="include/admin-header.jsp"%>
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

			<li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
					<span>Categories</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="main-category"><i class="fa fa-circle-o"></i>
							Main Categories</a></li>
					<li><a href="sub-category"><i class="fa fa-circle-o"></i>
							Sub Categories</a></li>
				</ul></li>

			<li class="active"><a href="user"><i class="fa fa-user"></i>
					<span>Users</span></a></li>

			<li><a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
					<span class="label label-primary pull-right">4</span> </a></li>

			<li><a href="savelist"> <i class="fa fa-list"></i>
					<span>Savelist</span> <span class="label label-primary pull-right">8</span>
			</a></li>
			
			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feeds
						Back</span> <span class="label label-primary pull-right">8</span>
			</a></li>

			<li><a href="report"> <i class="fa fa-exclamation-circle"></i>
					<span>Report</span> <span class="label label-primary pull-right">8</span>
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>




		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Users Tables <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="dashboard"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li class="active"><a href="#">User</a></li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content" ng-controller="MainCtrl">
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
											    ng-click="myTest()">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm"
												ng-click="removeUser(u.USER_ID)">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th><button class="btn btn-flat btn-primary" 
												data-toggle="modal" data-target="#addUser"
												>Add User</button></th>
									</tr>
									<!-- <tr>
										ID
										<input type="text" name="id" ng-model="gid" />
										<br /> name
										<input type="text" name="name" ng-model="gname" />
										<br /> pass
										<input type="text" name="pass" ng-model="gpass" />
										<br /> email
										<input type="text" name="email" ng-model="gemail" />
										<br /> phone
										<input type="text" name="phone" ng-model="gphone" />
										<br /> date
										<input type="text" name="date" ng-model="gdate" />
										<br /> remark
										<input type="text" name="remark" ng-model="gremark" />
										<br /> status
										<input type="text" name="status" ng-model="gstatus" />
										<br /> role
										<input type="text" name="role" ng-model="grole" />
										<br />

									</tr> -->
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					
					</div>


					<!-- Modal Start-->

						<%@include file="include/add-user.jsp"%>
					<!-- Modal End -->

					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section>
			<!-- /.content -->
		</div>
	</div>

</body>
</html>