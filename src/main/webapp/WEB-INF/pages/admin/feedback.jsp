<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin | Feedback</title>
	<%@include file="include/admin-link.jsp" %>
	 
</head>
<body class="skin-blue sidebar-mini">
		<div class="wrapper">
			<%@include file="include/admin-header.jsp" %>
			<%-- <%@include file="../include/navigation.jsp" %> --%>
					<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${pageContext.request.contextPath}/resources/admin/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>ADMIN</p>
          <p>BUNHONG KIM</p>
          
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="dashboard">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>

        <li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Categories</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="main-category"><i class="fa fa-circle-o"></i> Main Categories</a></li>
            <li><a href="sub-category"><i class="fa fa-circle-o"></i> Sub Categories</a></li>
          </ul>
        </li>

        <li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>
        
        <li>
          <a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
            <span class="label label-primary pull-right">4</span>
            </a>
        </li>

        <li  class="active">
          <a href="feedback">
            <i class="fa fa-th"></i> <span>Feeds Back</span>
            <span class="label label-primary pull-right">8</span>
          </a>
        </li>
      </ul>
      </section>
    <!-- /.sidebar -->
  </aside>
		<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Feedback Data
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"><a href="#">Feedback</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Feedbacks Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>User</th>
                  <th>Desciption</th>
                  <th>Post Date</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>F1001</td>
                  <td>Rany</td>
                  <td>I think you should add video or file for download.</td>
                  <td>12/12/2014</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></button>
                      <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-eraser"></i></button>
                  </td>
                </tr>
                <tr>
                  <td>F1002</td>
                  <td>Rany</td>
                  <td>I think you should add video or file for download.</td>
                  <td>12/12/2014</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></button>
                      <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-eraser"></i></button>
                  </td>
                </tr>
                <tr>
                  <td>F1003</td>
                  <td>Rany</td>
                  <td>I think you should add video or file for download.</td>
                  <td>12/12/2014</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></button>
                      <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-eraser"></i></button>
                  </td>
                </tr>
                <tr>
                  <td>F1004</td>
                  <td>Rany</td>
                  <td>I think you should add video or file for download.</td>
                  <td>12/12/2014</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></button>
                      <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-eraser"></i></button>
                  </td>
                </tr>
                <tr>
                  <td>F1005</td>
                  <td>Rany</td>
                  <td>I think you should add video or file for download.</td>
                  <td>12/12/2014</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></button>
                      <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-eraser"></i></button>
                  </td>
                </tr>
                <tr>
                  <td>F1006</td>
                  <td>Rany</td>
                  <td>I think you should add video or file for download.</td>
                  <td>12/12/2014</td>
                  <td>
                      <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></button>
                      <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-eraser"></i></button>
                  </td>
                </tr>
                
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  
		
		</div>
</body>
</html>