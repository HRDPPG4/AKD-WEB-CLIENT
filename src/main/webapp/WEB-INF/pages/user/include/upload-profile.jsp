<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!-- Modal -->
  <div class="modal fade" id="myProfileImage" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">រូបភាពព័ត៌មានផ្ទាល់ខ្លួន</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
			<input type="file" style="padding:50px;" name="fileInput" id="fileInput" onchange="angular.element(this).scope().fileChanged(event)" />
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> --%>
  
  
  

 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="modal fade" id="myProfileImage" role="dialog" ng-controller="UserCtrl">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal" >&times;</button>
     <h4 class="modal-title">រូបភាពព័ត៌មានផ្ទាល់ខ្លួន</h4>               
      </div>
      <div class="modal-body" style="padding:40px 50px;">
   		 <form method="post" enctype="multipart/form-data">     			
	 		<input type="file" name="user" id="user" multiple="multiple" >		  		  				 		  					
		</form>  	     					       
	      </div>
      <div class="modal-footer">
        <button class="btn-upload"​ alignt="center"​​ id="btnSave" ng-click="uploadFile($event)">រក្សាទុក</button>   
      </div>
    </div>
    
  </div>
</div>
<!-- <script>
 
	 $('#upload').on('hidden.bs.modal', function () {
		  // do something…
		 /*  alert("close")
		  angular.element(document).find('#upload').scope().myfun();
		  angular.element(document).find('#upload').scope().$apply()  */
		
		}) 
 
</script> -->
  