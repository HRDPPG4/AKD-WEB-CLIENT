var app = angular.module('UploadFileApp', []);
app.controller('UploadFileCtrl', function($scope, $http) {

	$scope.uploadFile = function(event) {
		event.preventDefault();

		var frmData = new FormData();
		var file = $('#filer_input')[0].files[0];
		frmData.append("files", file);
		$http({
			url : 'http://192.168.178.202:1111/api/uploadFile',
			method :'POST',
			data : frmData,
			transformRequest : angular.identity,
			headers : {
				'Content-Type' : undefined
			}
		}).then(function(response) {
			alert("Success");
			console.log(response);
			$scope.message = response.data.message;
		}, function(response) {
			console.log(response);
		});

		alert("Click in AngularJS");
	};

});

