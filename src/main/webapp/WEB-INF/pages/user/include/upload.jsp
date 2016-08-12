<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<div class="modal fade" id="upload" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4><span class="glyphicon glyphicon-lock"></span>បញ្ជូលឯកសារនៅទីនេះ</h4>
        
        
    <div class="imgcontainer">						     
    
    </div>
    
    <div ng-controller="test">
    </div>
    
    <div ng-controller="test1">
    </div>
			          
        
      </div>
      <div class="modal-body" style="padding:40px 50px;">
   		<form ng-submit ="uploadFile($event)" method="post" enctype="multipart/form-data">     			
	 		<input type="file" name="file" id="filer_input" multiple="multiple">	<!-- id="filer_input"   -->
		  <button type="submit" class="btn btn-primary"​ alignt="center">រក្សាទុក</button>
			<!-- <input type="button" value="Upload" ng-click="uploadFile($event)"> -->
     					
		</form>        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
    
  </div>
</div>
