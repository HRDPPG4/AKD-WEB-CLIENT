var app = angular.module('MainApp', []);


//Main Controller for admin
app.controller('MainCtrl', function($scope, $http, $sce,$timeout){
	
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
		
		/*alert("Alert In Upload Folder in new place");*/
	};
	
	
	
	
	
});
