var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope, $http, $window) {
	$scope.getAllData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/document',
			method : 'GET'
		}).then(function(response) {
			console.log(response);
			$scope.document = response.data.DATA;
			
		}, function(response) {
			alert("Client Failed");
		});
	}

	$scope.getAllData();

	$scope.remove = function(id) {
		$http({
			url : 'http://localhost:4444/remove/' + id,
			method : 'DELETE'
		}).then(function() {
			$scope.getAllData();
		}, function() {
			alert("Fiald");
		});
	}

	$scope.insertData = function() {
		$http({
			url : 'http://localhost:4444/user',
			method : "POST",
			data : {
				'id' : $scope.aid,
				'name' : $scope.aname,
				'password' : $scope.apassword,
				'email':$scope.aemail
			}
		}).then(function(respone){
			$scope.getAllData();
			$scope.aid = "";
			$scope.aname = "";
			$scope.apassword = "";
			$scope.aemail="";
		}, function(respone){
			alert("faild");
		});
	}
	
	$scope.getDataForUpdate = function(user){
		$scope.aid = user.u.id;
		$scope.aname = user.u.name;
		$scope.apassword =  user.u.password;
		$scope.aemail = user.u.email;
	}
	
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
	
	

	
	
});