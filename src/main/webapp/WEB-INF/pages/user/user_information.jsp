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
</div>

<div class="container ">
	<div class="row">
	
		<div class="panel-heading-user">ការកំណត់ព័ត៌មានរបស់ខ្ញុំ</div>
			<div class="panel-body panel-user">
 				<form class="form-horizontal  " enctype="multipart/form-data" id="myformvalidator1" method="post">	
					<div class="col-xs-8 col-md-8">
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ឈ្មោះអ្នកប្រើប្រាស់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="text" class="form-control" id="username" name="username" value="សុភី ណារី" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ភេទ<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<label class="radio-inline"><input type="radio" name="optradio">ប្រុស</label>
								<label class="radio-inline"><input type="radio" name="optradio">ស្រី</label>
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">លេខសំងាត់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="password" class="form-control" id="username" name="username"​ value="12345" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">អីម៉េល<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="email" class="form-control" id="username" name="username" value="pha@gmail.com" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     
					     
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">លេខទូរស័ព្ឬ<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="tex" class="form-control" id="username" name="username" value="012 944 494" data-bv-field="username">
								
					     	</div>
					     	
					     </div>
					     
					     <div class="form-group">
					     	<label class="col-lg-3 control-label"><span class="required"></span></label>
					     	<div class="col-lg-5">
					     		<button type="button" class="btn btn-info">កែប្រែ</button>
								
					     	</div>
					     	
					     </div>
					
					</div>
					<div class=" col-xs-4 col-md-4 ">
					
						 <img src="resources/user/img/001.png" class="thumbnail" alt="Image" width="200px" height="200px">
    
    						
					  	
					</div>
					
					
				</form> 
	       </div>	
	      												
														
																									
							
	</div>
														
	
</div>





<jsp:include page="include/footer.jsp"></jsp:include>