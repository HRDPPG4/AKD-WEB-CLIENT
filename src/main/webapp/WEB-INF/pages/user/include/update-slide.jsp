<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<div class="modal fade" id="update-slide" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4><span class="glyphicon glyphicon-lock"></span>បញ្ជូលឯកសារនៅទីនេះ</h4>
        
        
    <div class="imgcontainer">						     
    
    </div>
			          
        
      </div>
      <div class="modal-body" style="padding:40px 50px;">

     		<form action="#" method="post" enctype="multipart/form-data">
     			 <div class="form-group">
      				<label for="sel1">ជ្រើសរើសផ្នែក:</label>
      				<select class="form-control" id="sel1">
      				    <option></option>
        				<option>បច្ចេកវិទ្យា</option>
        				<option>កិសិកម្ម</option>
        				<option>ពានិជ្ជកម្ម</option>
        				<option>ច្បាប់</option>
      				</select>
    
   
    			</div>
    			<div class="form-group">
      				<label for="pwd">ឈ្មោះឯកសារ:</label>
      				<input type="text" class="form-control" id="pwd" placeholder="សូមបញ្ជូលឈ្មោះនៅទីនេះ">
    			</div>
     			 		<input type="file" name="files[]" id="filer_input" multiple="multiple">
     					<button type="button" class="btn btn-primary"​ alignt="center">រក្សាទុក</button>
     					
			</form>
        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
    
  </div>
</div>
