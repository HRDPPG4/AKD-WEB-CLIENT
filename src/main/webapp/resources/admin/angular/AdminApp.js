var app = angular.module('MainApp', []);
app.controller('UploadCtrl', function($scope, $http,$timeout) {
	$scope.uploadFile = function(event) {
		event.preventDefault();
		
		var frmData = new FormData();
		
		$scope.des="Des for file by Chivorn";
	//	$scope.title="My Title";
		
		var file = $('#filer_input')[0].files[0];
		frmData.append("files", file);	
		frmData.append("title", $scope.title);
		frmData.append("des", $scope.des);
		$http({
			url : 'http://localhost:1111/api/uploadFile',
			method :'POST',
			data : frmData,
			transformRequest : angular.identity,
			headers : {
				'Content-Type' : undefined
			}
		}).then(function(response) {
			$(".progress-bar").css("width", "100%"); 
			//alert("Click in AngularJS");
			alert("Success");
			
			
		}, function(response) {
			$(".progress-bar").css("width", "100%"); 
			alert("Error");
		});

	};
	
	
	
	$scope.uploadFolder=function(event) {
		event.preventDefault();
		var frmData = new FormData();
		var id="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
		
		
		frmData.append("folderID", id);
		frmData.append("folderName", $scope.folderName);
		frmData.append("folderDes", $scope.des);
		frmData.append("folderStatus", $scope.sta);
		
		
		$http({
			url : 'http://localhost:1111/api/uploadFolder',
			method :'POST',
			data : frmData,
			transformRequest : angular.identity,
			headers : {
				'Content-Type' : undefined
			}
		}).then(function(response) {
			alert("Folder upload Successful");
			console.log("Check Upload Foler here!!");
			console.log(response);
			$scope.message = response.data.message;
		}, function(response) {
			console.log(response);
		});

		//alert("Upload Folder");
	};

});


app.controller('DocumentCtrl', function($scope, $http, $sce){

	$scope.display = function(){
		$http({
			url:'http://localhost:1111/api/v1/document',
			method:'GET'
		}).then(function(response){
			$scope.document=response.data.DATA;
			console.log($scope.document);
		}, function(response){

		});
	}
	$scope.display();

	$scope.insert = function(){		
		$http({
			url:'/insert',
			method:'POST',
			data:{
				'name': $scope.name,
				'gender': $scope.gender,
				'email':$scope.email
			}	
			
		}).then(function(response){
			$scope.display();
			//console.log(response.config.data);
		}, function(response){

		});		
	}

	$scope.setValueToInput = function(data){
		//console.log(data);
		$scope.id=data.p.id;
		$scope.name=data.p.name;
		$scope.gender=data.p.gender;
		$scope.email=data.p.email;
		
	
		
		$scope.showInsert=false;
		$scope.showUpdate=true;	
	}
	$scope.showInsertButton = function(){
		$scope.showInsert=true;
		$scope.showUpdate=false;
		$scope.id='';
		$scope.name='';
		$scope.gender='Male';
		$scope.email='';		
	}
	

	$scope.update=function(){
		$http({
			url:'/update',
			method:'POST',
			data:{
				'id':$scope.id,
				'name': $scope.name,
				'gender': $scope.gender,
				'email':$scope.email
			}			
		}).then(function(response){
			$scope.display();
			//console.log($scope.name);
			//console.log(response);
		}, function(response){

		});		
	}

	$scope.delete= function(mydel){
		//console.log(mydel);
		var id = mydel.p.id;
		$http({
			url:'/delete/'+id,
			method:'GET',
			
		}).then(function(response){
			$scope.display();
		}, function(response){

		});
	}

	$scope.getDelete= function(i){
		swal({   title: "Are you sure?",   
			text: "You will not be able to recover this imaginary file!",   
			type: "warning",   showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "Yes",   
			cancelButtonText: "Cancel",   
			closeOnConfirm: false,   closeOnCancel: false },
			function(isConfirm){   
			 	if (isConfirm) {     
			 		swal("Deleted!", "Your imaginary file has been deleted.", "success"); 
			 		$scope.delete(i);
			 	}
		 		else {     
		 			swal("Cancelled", "Your imaginary file is safe :)", "error");   
		 		} 
		 	});
	}

});








