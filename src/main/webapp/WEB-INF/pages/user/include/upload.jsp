<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="modal fade" id="upload" role="dialog" ng-controller="UploadCtrl">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"  >
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      <!--   <h4><span class="glyphicon glyphicon-lock"></span>បញ្ជូលឯកសារនៅទីនេះ</h4> -->                  
      </div>
      <div class="modal-body" style="padding:40px 50px;">
   
   		 <form method="post" enctype="multipart/form-data">     			
	 		<input type="file" name="file" id="filer_input" multiple="multiple">		  		  
		  <div class = "progress progress-striped active">
		   <div class = "progress-bar progress-bar-success" role = "progressbar" id="BBBB"
		      aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style = "width: 0%;">
		      
		      <span class = "sr-only">40% Complete</span>
		   </div>
		</div>				 		  					
		</form>  	
			<form role="form">
			    <div class="form-group">
			      <label>Title:</label>
			      <input type="text" class="form-control" placeholder="Title" ng-model="title" id="title">
			    </div>

			    <div class="form-group">
			    
			    
			      <label>Category:</label>		      
			        <select class="form-control" ng-model="catID">			       
                        <option ng-repeat="x in category" value="{{x.CAT_ID}}">{{x.CAT_NAME}}</option>
                   	</select>
               					
			    <!--   <input type="text" class="form-control" placeholder="Gender" ng-model="gender" ng-pattern="genderFormat"> -->
			    </div>
			    
			    <div class="form-group">
			      <label>Description:</label>
			      <input type="text" class="form-control" placeholder="Description" ng-model="des" >
			    </div>
		  	</form>       					       
		
	      </div>
      <div class="modal-footer">
        <button class="btn btn-primary"​ alignt="center"​​ id="btnSave" ng-click="uploadFile($event)">រក្សាទុក</button>   
      </div>
    </div>
    
  </div>
</div>

