var app = angular.module('MainApp', []);

//Main Controller for admin
app.controller('MainCtrl', function($scope, $http, $sce,$timeout){

//	get date from user db to update	
/*	$scope.getDataForUpdate = function(){
		alert("hello");
		$scope.gid= user.u.id;
		$scope.gname= user.u.name;
		$scope.gpass=user.u.pass;
		$scope.gemail=user.u.email;
		$scope.gphone=user.u.phone;
		$scope.gdate=user.u.date;
		$scope.gremark=user.u.remark;
		$scope.gstatus=user.u.status;
		$scope.grole=user.u.role;
	}*/
//	do update user
//	$scope.update = function(){
//    	$http({
//    		url: 'http://localhost:4444/user',
//    		method: 'PUT',
//    		data:{
//    			'name': $scope.aname,
//    			'password': $scope.apassword,
//    			'email': $scope.aemail,
//    			'id': $scope.aid
//    		}
//    	}).then(function() {
//    		$scope.getAllData();
//		}, function() {
//			alert("fiald");
//		});
//    }

		
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
	
//	UPLOAD CATEGORY AND SUB-CATEGORY BLOCK
	$scope.ParentID="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
	$scope.sta=1;
	$scope.uploadFolder=function(event) {
		event.preventDefault();
		var frmData = new FormData();
		frmData.append("folderID", $scope.ParentID);
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
			alert("Folder create Successful");
			//alert("ID: "+$scope.ParentID);
			console.log("Check Upload Foler here!!");
			console.log(response);
			$scope.message = response.data.message;
		}, function(response) {
			console.log(response);
		});		
	};
});


//	User Controller 
app.controller('UserCtrl', function($scope, $http, $sce,$timeout){
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


	$scope.insertUser = function() {
		$http({
			url : 'http://localhost:1111/api/v1/user',
			method : "POST",
			data : {
//				'USER_ID' : $scope.gid,
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
		}, function(respone){
			alert("faild");
		});
	}

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
});

//	Document Controller
app.controller('DocumentCtrl', function($scope, $http, $sce,$timeout){
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

//	Comment Controller
app.controller('CommentCtrl', function($scope, $http, $window) {
	$scope.getAllData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/comment',
			method : 'GET'
		}).then(function(response) {
			console.log(response);
			$scope.comment = response.data.DATA;
			
		}, function(response) {
			alert("Client Failed");
		});
	}

	$scope.getAllData();
});


//	Feedback Controller
app.controller('FeedbackCtrl', function($scope, $http, $window) {
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

});

//Report Controller
app.controller('ReportCtrl', function($scope, $http, $window) {
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

});

//Savelist Controller
app.controller('SavelistCtrl', function($scope, $http, $window) {
	$scope.getSavelistData = function(){
		$http({
			url:'http://localhost:1111/api/v1/savelist',
			method:'GET'
		}).then(function(response){
			$scope.savelist=response.data.DATA;
			console.log($scope.savelist);
		}, function(response){

		});
	}
	$scope.getSavelistData();

});