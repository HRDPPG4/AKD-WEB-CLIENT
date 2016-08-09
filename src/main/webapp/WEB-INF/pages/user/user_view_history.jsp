<jsp:include page="include/header.jsp"></jsp:include>


<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="container">
  	<div class="main-tab">
  		<ul class="tab">
    		<li class="current"><a href="/user_view">ឯកសារដែលបានបញ្ជូល</a></li>
    		<li><a href="/user_view_history">ឯកសារដែលបានមើល</a></li>
    		<li><a href="/user_information">អំពីខ្ញុំ</a></li>
   
  		</ul>
  	</div>
  	
  	<div class="row border-slide ">
	
		<div class=" col-sm-12 col-md-12 col-lg-12">
		
			<div class="col-sm-3 col-md-3 col-lg-3">
			 	<a href="#" class="thumbnail">
				<span class="image-slide">
				<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt="">
				<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
				</span>
		
				<span class="view-count">១០០០ បានមើល</span>
				<span class="socials">
				<a href="#" alt="like" class="like">
				<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
				</a>
				<a href="#" alt="download" class="download">
				<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span></a>
				<a href="#" alt="share" class="share">
				<span><i class="fa fa-share-alt" aria-hidden="true"></i></span></a>
				</span></a>
		
			</div>
			
			
			
			
			<div class="col-sm-3 col-md-3 col-lg-3 head-title">
				<span class="title">គណិតវិទ្យាថ្នាក់ទី១០</span><br>
				
				<span class="descript">សៀវភៅដែលចេញដោយក្រសួងអប់រំ មានទៅដោយ</span><br>
				<span class="user-name">12-09-2015</span><br>
				
				
			</div>
			
			<div class=" col-md-3 col-md-offset-3 head-action">
			 	
			 	     <a class="btn btn-success" href="#">
  						<i class="fa fa-pencil fa-fw""></i> Edit
  					</a>
			 	    <a class="btn btn-danger" href="#">
  						<i class="fa fa-trash-o fa-lg"></i> Delete
  					</a>
			 
			 	
			 	
			</div>
		</div>
	
  </div>
   
  
   	<div class="row border-slide">
	
		<div class=" col-sm-12 col-md-12 col-lg-12">
		
			<div class="col-sm-3 col-md-3 col-lg-3">
			 	<a href="#" class="thumbnail">
				<span class="image-slide">
				<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt="">
				<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
				</span>
		
				<span class="view-count">១០០០ បានមើល</span>
				<span class="socials">
				<a href="#" alt="like" class="like">
				<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
				</a>
				<a href="#" alt="download" class="download">
				<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span></a>
				<a href="#" alt="share" class="share">
				<span><i class="fa fa-share-alt" aria-hidden="true"></i></span></a>
				</span></a>
		
			</div>
			
			
			
			
			<div class="col-sm-3 col-md-3 col-lg-3 head-title">
				<span class="title">គណិតវិទ្យាថ្នាក់ទី១០</span><br>
				
				<span class="descript">សៀវភៅដែលចេញដោយក្រសួងអប់រំ មានទៅដោយ</span><br>
				<span class="user-name">12-09-2015</span><br>
				
				
			</div>
			
			<div class=" col-md-3 col-md-offset-3 head-action">
			 	
			 	     <a class="btn btn-success" href="#" data-toggle="modal" data-target="#myModal">
			 	     	
  						<i class="fa fa-pencil fa-fw"></i> Edit
  					</a>
			 	    <a class="btn btn-danger" href="#">
  						<i class="fa fa-trash-o fa-lg"></i> Delete
  					</a>
			 
			 	
			 	
			</div>
		</div>
	
  </div>
</div>






<jsp:include page="include/footer.jsp"></jsp:include>