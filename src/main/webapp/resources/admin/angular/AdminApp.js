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

//Main Controller for admin
app.controller('MainCtrl', function($scope, $http, $sce){
	
//	Method for manipulating user
	$scope.getUserData = function(){
		$http({
			url:'http://localhost:1111/api/v1/user',
			method:'GET'
		}).then(function(response){
			$scope.user=response.data.DATA;
			console.log($scope.user);
		}, function(response){

		});
	}
	$scope.getUserData();

//	insert data to user db
	$scope.insertUser = function() {
		alert($scope.grole);
		$http({
			url : 'http://localhost:1111/api/v1/user',
			method : "POST",
			data : {
				'USER_ID' : $scope.gid,
				'USER_NAME' : $scope.gname,
				'PASSWORD' : $scope.gpass,
				'EMAIL':$scope.gemail,
				'PHONE':$scope.gphone,
				'CREATED_DATE':$scope.gdate,
				'REMARK':$scope.gremark,
				'STATUS':$scope.gstatus,
				'USER_ROLE':$scope.grole
			}
		}).then(function(respone){
			$scope.getUserData();
			alert("success");
		}, function(respone){
			alert("faild");
		});
	}
//	Delete user from db
	$scope.removeUser = function(id) {
		$http({
			url : 'http://localhost:1111/api/v1/user/' + id,
			method : 'DELETE'
		}).then(function() {
			$scope.getUserData();
			alert("success");
		}, function() {
			alert("Fiald");
		});
	}

//	get date from user db to update	
	$scope.getDataForUpdate = function(user){
		$scope.aid = user.u.id;
		$scope.aname = user.u.name;
		$scope.apassword =  user.u.password;
		$scope.aemail = user.u.email;
	}
	
//	do update user
	$scope.update = function(){
    	$http({
    		url: 'http://localhost:4444/user',
    		method: 'PUT',
    		data:{
    			'name': $scope.aname,
    			'password': $scope.apassword,
    			'email': $scope.aemail,
    			'id': $scope.aid
    		}
    	}).then(function() {
    		$scope.getAllData();
		}, function() {
			alert("fiald");
		});
    }
	
	
//	Method for manipulating report
	$scope.getReportData = function(){
		$http({
			url:'http://localhost:1111/api/v1/report',
			method:'GET'
		}).then(function(response){
			$scope.report=response.data.DATA;
			console.log($scope.report);
		}, function(response){

		});
	}
	$scope.getReportData();
	
//	Method for manipulating feedback
	$scope.getFeedbackData = function(){
		$http({
			url:'http://localhost:1111/api/v1/feedback',
			method:'GET'
		}).then(function(response){
			$scope.feedback=response.data.DATA;
			console.log($scope.feedback);
		}, function(response){

		});
	}
	$scope.getFeedbackData();
	
//	Method for manipulating comment
	$scope.getCommentData = function(){
		$http({
			url:'http://localhost:1111/api/v1/comment',
			method:'GET'
		}).then(function(response){
			$scope.comment=response.data.DATA;
			console.log($scope.comment);
		}, function(response){

		});
	}
	$scope.getCommentData();
	
//	Method for manipulating categories
	$scope.getCategoryData = function(){
		$http({
			url:'http://localhost:1111/api/v1/category',
			method:'GET'
		}).then(function(response){
			$scope.category=response.data.DATA;
			console.log($scope.category);
		}, function(response){

		});
	}
	$scope.getCategoryData();

//	Method for manipulating document
	$scope.getDocumentData = function(){
		$http({
			url:'http://localhost:1111/api/v1/document',
			method:'GET'
		}).then(function(response){
			$scope.document=response.data.DATA;
			console.log($scope.document);
		}, function(response){

		});
	}
	$scope.getDocumentData();
	
	
});











