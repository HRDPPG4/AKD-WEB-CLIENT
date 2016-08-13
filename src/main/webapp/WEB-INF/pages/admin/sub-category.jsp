<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Sub Categories</title>
<%@include file="include/admin-link.jsp"%>

</head>
<body class="skin-blue sidebar-mini">
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

			<li class="treeview active"><a href="#"> <i
					class="fa fa-files-o"></i> <span>Categories</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="main-category"><i class="fa fa-circle-o"></i>
							Main Categories</a></li>
					<li class="active"><a href="sub-category"><i
							class="fa fa-circle-o"></i> Sub Categories</a></li>
				</ul></li>

			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li><a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
					<span class="label label-primary pull-right">4</span> </a></li>

			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feeds
						Back</span> <span class="label label-primary pull-right">8</span>
			</a></li>
			<li>
        	<a href="report">
        		<i class="fa fa-exclamation-circle"></i>
				<span>Report</span> <span class="label label-primary pull-right">8</span>
			</a>
		</li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Sub Categories Data <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="dashboard"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li><a href="#">Categories</a></li>
				<li class="active">Sub Categories</li>
			</ol>
			</section>

			<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Data Table With Full Features</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Title</th>
										<th>Parent</th>
										<th>Post Date</th>
										<th>Number</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1101</td>
										<td>Programming</td>
										<td>Technology</td>
										<td>12/12/2014</td>
										<td>5</td>
										<td><span class="label label-success">Active</span></td>
										<td>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>1102</td>
										<td>Web Development</td>
										<td>Technology</td>
										<td>12/12/2015</td>
										<td>9</td>
										<td><span class="label label-success">Active</span></td>
										<td>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>1201</td>
										<td>Leadership</td>
										<td>Management</td>
										<td>12/12/2014</td>
										<td>3</td>
										<td><span class="label label-success">Active</span></td>
										<td>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>1302</td>
										<td>Economic</td>
										<td>Business</td>
										<td>12/12/2014</td>
										<td>5</td>
										<td><span class="label label-danger">Pending</span></td>
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
								<tfoot>
									<tr>
										<!--   <th><a href="add-sub-category.html"><button class="btn btn-flat btn-primary">Add Sub Categories</button></a></th> -->
										<th>
											<button class="btn btn-flat btn-primary" data-toggle="modal"
												data-target="#addSubModal">Add Sub Categories</button>
										</th>
									</tr>


									<!-- Modal -->
									<div class="modal fade" id="addSubModal" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content modalConner">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Add Category</h4>
												</div>
												<div class="modal-body">
													<form role="form">
														<div class="box-body">
															<div class="form-group">
																<label for="exampleInputEmail1">Sub Category
																	Title</label> <input type="text" class="form-control"
																	placeholder="Sub Category title ">
															</div>

															<label>Categories</label> <select
																class="form-control select2" style="width: 50%;">
																<option>Business</option>
																<option>Social</option>
																<option>Science</option>
																<option>Economic</option>
																<option>Management</option>
																<option>Technology</option>
															</select>
															
															<div class="form-group">
																<label for="description">Description</label> 
																<textarea class="form-control"
																	placeholder="Description..."
																	rows="4"></textarea>
																	
															</div>
															
															<div class="form-group">
																<label> Status </label><br /> <label
																	class="radio-inline"> <input type="radio"
																	name="optionsRadios" id="optionsRadios2"
																	value="option2"> Enable
																</label> <label class="radio-inline"> <input
																	type="radio" name="optionsRadios" id="optionsRadios3"
																	value="option3"> Disable
																</label>
															</div>
														</div>
													</form>
												</div>
												<div class="modal-footer">
													<!--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
													<button class="btn btn-primary btn-flat">Save</button>
												</div>
											</div>

										</div>

									</div>

									<!-- End Modal -->

								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section>

			<!-- /.content -->
		</div>

	</div>
<body>

</body>
</html>