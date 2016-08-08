<jsp:include page="include/header.jsp"></jsp:include>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="container">
  	<div class="main-tab">
  		<ul class="tab">
    		<li class="current"><a href="#">ឯកសារដែលបានបញ្ជូល</a></li>
    		<li><a href="#">ឯកសារដែលបានមើល</a></li>
    		<li><a href="#">អំពីខ្ញុំ</a></li>
   
  		</ul>
  		
  	</div>
</div>

<div class="container ">
	<div class="row">
	
		<div class="panel-heading-user">ការកំណត់ព័ត៌មានរបស់ខ្ញុំ</div>
			<div class="panel-body panel-user">
 				<form class="form-horizontal  " enctype="multipart/form-data" id="myformvalidator1" method="post">	
					<div class="col-md-8">
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ឈ្មោះអ្នកប្រើប្រាស់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="text" class="form-control" id="username" name="username" data-bv-field="username">
								<small id="checkname" class="help-block" style="color: red;"></small>
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ឈ្មោះអ្នកប្រើប្រាស់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="text" class="form-control" id="username" name="username" data-bv-field="username">
								<small id="checkname" class="help-block" style="color: red;"></small>
					     	</div>
					     	
					     </div>
					     <div class="form-group">
					     	<label class="col-lg-3 control-label">ឈ្មោះអ្នកប្រើប្រាស់<span class="required">*</span></label>
					     	<div class="col-lg-5">
					     		<input type="text" class="form-control" id="username" name="username" data-bv-field="username">
								<small id="checkname" class="help-block" style="color: red;"></small>
					     	</div>
					     	
					     </div>
					</div>
					<div class="col-mmd-4 " ng-controller="mycontrol">
						 <div ng-repeat="step in stepsModel">
        					<img class="thumbnail" ng-src="{{step}}" />
   						 </div>
    
    						<input type='file' ng-model-instant onchange="angular.element(this).scope().imageUpload(this)" />
					  	
					</div>
					
				</form> 
	       </div>	
	       <script>
	       
	       var myApp = angular.module('myApp',[]);
	       function mycontrol($scope) {
	           $scope.stepsModel = [];

	           $scope.imageUpload = function(element){
	               var reader = new FileReader();
	               reader.onload = $scope.imageIsLoaded;
	               reader.readAsDataURL(element.files[0]);
	           }

	           $scope.imageIsLoaded = function(e){
	               $scope.$apply(function() {
	                   $scope.stepsModel.push(e.target.result);
	               });
	           }
	       }
	       </script>													
														
																									
							
	</div>
														
	
</div>





<jsp:include page="include/footer.jsp"></jsp:include>