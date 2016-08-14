<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<div class="modal fade" id="uploadFolder" role="dialog" ng-controller="UploadCtrl">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4><span class="glyphicon glyphicon-lock"></span>សាកល្បងបង្កើត Folder</h4>
        
        
    <div class="imgcontainer">						     
    
    </div>
                  
      </div>
      <div class="modal-body" style="padding:40px 50px;">
   		 <form ng-submit ="uploadFolder($event)" method="post" enctype="multipart/form-data">     				 			 		
	 		<input type="text" name="folderName" ng-model="folderName"> 	 		
		  <button type="submit" class="btn btn-primary"​ alignt="center"​​ id="btnSave">Up</button>   					
		</form>    				  
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
    
  </div>
</div>
