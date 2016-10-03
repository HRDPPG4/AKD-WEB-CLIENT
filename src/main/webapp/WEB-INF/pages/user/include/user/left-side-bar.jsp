<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <span class="pull-left# image profile" >
      	<img src="${userProfile}" class="img-circle" alt="User Image">
        <%-- <img src="${pageContext.request.contextPath}/resources/admin/img/user2-160x160.jpg" class="img-circle" alt="User Image"> --%>
      </span>
      <!-- <div class="pull-left info">
        <p>Alexander Pierce</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div> -->
    </div>
    <!-- search form -->
    <!-- <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
      </div>
    </form> -->
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">USER CONTROL</li>  
      
      <li>
        <a data-toggle="tab" href="#infor">
          <i class="fa fa-dashboard"></i> <span>About</span>          
        </a>
      </li>        
      
      <!-- <li>
        <a href="#user-dashboard" data-toggle="tab">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>          
        </a>
      </li> -->
      
      <li>
        <a data-toggle="tab" ng-click="getDocumentByUser()" href="#mydoc">
          <i class="fa fa-dashboard"></i> <span>My Documents</span> 
          <span class="pull-right-container">
            <small class="label pull-right bg-green">20</small>
          </span>         
        </a>
      </li>
      
      <li class="treeview">
         <a  ng-click="getSavelistMenuUser()" href="#savelist" data-toggle="tab#">
          <i class="fa fa-dashboard"></i> 
          <span>My Savelist</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
           <li ng-repeat ="savelistmenu in getSavelistMenu" class="savelistData">
          	<a data-toggle="tab"  ng-click="getDocumentByEachSavelist(savelistmenu.LIST_ID)" href="#mysavelist"><i class="fa fa-circle-o"></i> 
          		{{savelistmenu.LIST_NAME}}
	          	<span class="pull-right-container">
	            	<small class="label pull-right bg-green">27</small>
	            </span>
          	</a>          	
          </li>  
        </ul>
      </li>
      
      <li>
        <a data-toggle="tab" ng-click="getLogByUser()" href="#viewed">
          <i class="fa fa-dashboard"></i> <span>History</span>          
        </a>
      </li>            
    
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>   