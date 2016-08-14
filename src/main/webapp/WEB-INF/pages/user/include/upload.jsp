<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 
<div class="modal fade" id="upload" role="dialog" ng-controller="UploadCtrl">
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
   		<form ng-submit ="uploadFile($event)" method="post" enctype="multipart/form-data">     			
	 		<input type="file" name="file" id="filer_input" multiple="multiple">
		  <button type="submit" class="btn btn-primary"​ alignt="center"​​ id="btnSave">រក្សាទុក</button>   
		  
		 <!--  <div class="progress">
		    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:100%">
		      40% Complete (success)
		    </div>
		
		  </div> -->
		  
		  <div class = "progress progress-striped active">
		   <div class = "progress-bar progress-bar-success" role = "progressbar" id="BBBB"
		      aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style = "width: 40%;">
		      
		      <span class = "sr-only">40% Complete</span>
		   </div>
		</div>
				 
		  						
		</form>        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
    
  </div>
</div>

