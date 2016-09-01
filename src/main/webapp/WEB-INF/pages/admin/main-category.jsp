<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Main Categories</title>
<%@include file="include/admin-link.jsp"%>
<script	src="${pageContext.request.contextPath}/resources/admin/angular/angular.min.js"></script>
<script	src="${pageContext.request.contextPath}/resources/admin/js/sweetalert-dev.js"></script>
<link href="${pageContext.request.contextPath}/resources/admin/css/sweetalert.css" rel="stylesheet" />
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
<body ng-cloak class="skin-blue sidebar-mini" ng-app="MainApp"
	ng-controller="MainCtrl">
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

			<li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li class="active"><a href="main-category"> <i class="fa fa-list"></i> <span>Categories</span></a></li>
			
			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li><a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
					</a></li>

			<li><a href="savelist"> <i class="fa fa-list"></i> <span>Savelist</span>
					
			</a></li>

			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feeds
						Back</span> 
			</a></li>
			<li><a href="report"> <i class="fa fa-exclamation-circle"></i>
					<span>Report</span> 			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Data Tables <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="dashboard"><i class="fa fa-dashboard"></i>Home</a></li>
				<li><a href="#">Categories</a></li>
				<li class="active">Main Categories</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Data Table With Full Features</h3>
							<br>
							<br>

							<button class="btn btn-flat btn-primary" data-toggle="modal"
								data-target="#addMainModal" ng-click="showCatBox=false">Add
								Categories</button>


							<button class="btn btn-flat btn-primary" data-toggle="modal"
								data-target="#addMainModal" ng-click="showCatBox=true">Add
								Sub Categories</button>

						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
									<th>#</th>
										<th>Name</th>
										<th>Date</th>
										
										<!-- <th>Type</th> -->
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="c in category" ng-init="rowNumber= 10">
										<td>{{($index + ((filter.page - 1) * rowNumber)) + 1}}</td>
										<td>{{c.CAT_NAME}}</td>
										<td>{{c.CREATED_DATE}}</td>
										
										<!-- <td>{{c.PARENT_ID}}</td> -->
										<td>{{c.STATUS}}</td>
										<td>
											<button type="button" class="btn btn-primary btn-sm" ng-click="getDataForUpdate(this)"
													data-toggle="modal"	data-target="#updateCategory">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm" ng-click="remove(c.CAT_ID)">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>




								</tbody>
								<tfoot>
									<!-- <tr>									
										<th>
											<button class="btn btn-flat btn-primary" data-toggle="modal"
												data-target="#addMainModal" ng-click="showCatBox=false">Add Categories</button>
										</th>
										<th>
											<button class="btn btn-flat btn-primary" data-toggle="modal"
												data-target="#addMainModal" ng-click="showCatBox=true">Add Sub Categories</button>
										</th>
									</tr> -->

									<!-- Modal -->
									<div class="modal fade" id="addMainModal" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Add Category</h4>
												</div>
												<div class="modal-body">
													<form role="form">
														<div class="box-body">
															<div class="form-group">
																<label for="categoryTitle">Category Title</label> <input
																	type="text" class="form-control"
																	placeholder="Category title " name="folderName"
																	ng-model="folderName">
															</div>

															<div class="form-group" ng-show="showCatBox">
																<label>Category:</label> <select class="form-control"
																	ng-model="ParentID">
																	<option ng-repeat="x in category" value="{{x.CAT_ID}}">{{x.CAT_NAME}}</option>
																</select>
															</div>


															<div class="form-group">
																<label for="description">Description</label>
																<textarea class="form-control"
																	placeholder="Description..." rows="4" ng-model="des"></textarea>
															</div>

															<div class="form-group">
																<div class="radio">
																	<label> Status </label><br /> <label> <input
																		ng-model="sta" type="radio" name="rdoResult"
																		ng-value="'1'"> Enable
																	</label> <label> <input ng-model="sta" type="radio"
																		name="rdoResult" ng-value="'0'"> Disable
																	</label>
																</div>
															</div>
													</form>
												</div>
												<div class="modal-footer">
													<!--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
													<input type="submit" class="btn btn-primary btn-flat"
														value="Submit" ng-click="uploadFolder($event)">
												</div>
											</div>

										</div>

									</div>

									<!-- End Modal -->

								</tfoot>
							</table>
							<div id="PAGINATION"></div>
						</div>
						<!-- /.box-body -->
					</div>
					
					<!-- =======================update modal ========================= -->
				
					<%@include file="include/update-category.jsp"%>
					
					<!-- =======================end update modal ========================= -->
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section>
			<!-- /.content -->
		</div>

	</div>
<body>

	<script type="text/javascript"	src="${pageContext.request.contextPath}/resources/admin/angular/AdminApp.js"></script>
<script src="/resources/admin/js/jquery.bootpage.min.js"></script>
<script src="/resources/admin/angular/angular.min.js"></script>
</body>
</html>