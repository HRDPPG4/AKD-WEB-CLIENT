var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope, $http, $window) {
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