var app = angular.module('MainApp', []);

// Main Controller for admin
app.controller('MainCtrl', function($scope, $http, $sce, $timeout) {
//	CATEGORY	
	$scope.showCategory = function(){			
		$http({
			url:'http://localhost:1111/api/v1/category',
			method:'GET'			
		}).then(function(response){
		//	console.log(response.data.DATA);
			$scope.category=response.data.DATA;			
		}, function(response){		
		});
	}	
	$scope.showCategory();
	
	// Method for manipulating feedback
	$scope.getFeedbackData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/feedback',
			method : 'GET'
		}).then(function(response) {
			$scope.feedback = response.data.DATA;
			console.log($scope.feedback);
		}, function(response) {

		});
	}
	$scope.getFeedbackData();

	// UPLOAD CATEGORY AND SUB-CATEGORY BLOCK
	$scope.ParentID = "0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
	$scope.sta = 1;
	$scope.uploadFolder = function(event) {
		event.preventDefault();
		var frmData = new FormData();
		frmData.append("folderID", $scope.ParentID);
		frmData.append("folderName", $scope.folderName);
		frmData.append("folderDes", $scope.des);
		frmData.append("folderStatus", $scope.sta);
		$http({
			url : 'http://localhost:1111/api/uploadFolder',
			method : 'POST',
			data : frmData,
			transformRequest : angular.identity,
			headers : {
				'Content-Type' : undefined
			}
		}).then(function(response) {
			alert("Folder create Successful");
			// alert("ID: "+$scope.ParentID);
			console.log("Check Upload Foler here!!");
			console.log(response);
			$scope.message = response.data.message;
		}, function(response) {
			console.log(response);
		});
	};
});

// User Controller
app.controller('UserCtrl', function($scope, $http, $sce, $timeout) {
	$scope.getUserData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/user',
			method : 'GET'
		}).then(function(response) {
			$scope.user = response.data.DATA;
			console.log($scope.user);
		}, function(response) {

		});
	}

	$scope.getUserData();

	$scope.insertUser = function() {
		$http({
			url : 'http://localhost:1111/api/v1/user',
			method : "POST",
			data : {
				// 'USER_ID' : $scope.gid,
				'USER_NAME' : $scope.gname,
				'PASSWORD' : $scope.gpass,
				'EMAIL' : $scope.gemail,
				'PHONE' : $scope.gphone,
				'CREATED_DATE' : $scope.gdate,
				'REMARK' : $scope.gremark,
				'STATUS' : $scope.gstatus,
				'USER_ROLE' : $scope.grole
			}
		}).then(function(respone) {
			$scope.getUserData();
		}, function(respone) {
			alert("faild");
		});
	}

	$scope.getDataForUpdate = function(user) {

		// alert(user.u.EMAIL);
		// console.log(user.u.EMAIL);

		$scope.gid = user.u.USER_ID;
		$scope.gname = user.u.USER_NAME;
		$scope.gpass = user.u.PASSWORD;
		$scope.gemail = user.u.EMAIL;
		$scope.gphone = user.u.PHONE;
		$scope.gdate = user.u.CREATED_DATE;
		$scope.gremark = user.u.REMARK;
		$scope.gstatus = user.u.STATUS;
		$scope.grole = user.u.USER_ROLE;

	}

	$scope.updateUser = function() {
		$http({
			url : 'http://localhost:1111/api/v1/user',
			method : 'PUT',
			data : {
				'USER_NAME' : $scope.gname,
				'PASSWORD' : $scope.gpass,
				'EMAIL' : $scope.gemail,
				'PHONE' : $scope.gphone,
				'CREATED_DATE' : $scope.gdate,
				'REMARK' : $scope.gremark,
				'STATUS' : $scope.gstatus,
				'USER_ROLE' : $scope.grole,
				'USER_ID' : $scope.gid
			}
		}).then(function() {
			$scope.getUserData();
		}, function() {
			alert("fiald");
		});
	}

	$scope.alertUpdate = function() {
		$scope.updateUser();
		swal("Updated!", "You updated the user!", "success")
	}

	$scope.removeUser = function(id) {
		$http({
			url : 'http://localhost:1111/api/v1/user/' + id,
			method : 'DELETE'
		}).then(function() {
			$scope.getUserData();
		}, function() {
			alert("Fiald");
		});
	}

	$scope.alertDelete = function(id) {
		swal({
			title : "Are you sure?",
			text : "You will not be able to recover this imaginary file!",
			type : "warning",
			showCancelButton : true,
			confirmButtonColor : "#DD6B55",
			confirmButtonText : "Yes, delete it!",
			closeOnConfirm : false
		},
				function() {
					$scope.removeUser(id);
					swal("Deleted!", "Your imaginary file has been deleted.",
							"success");
				});
	}

});
//============================End of User Controller===============

//============================Start Document Controller===============
app.controller('DocumentCtrl', function($scope, $http, $sce, $timeout) {
	$scope.getDocumentData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/document',
			method : 'GET'
		}).then(function(response) {
			$scope.document = response.data.DATA;
			console.log($scope.document);
		}, function(response) {

		});
	}
	$scope.getDocumentData();
	
	$scope.myAlert= function(){
		alert("Test");
	}

	$scope.theFile = null;
	$scope.catID="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
	$scope.des="";
	$scope.uploadFile = function(event) {
		event.preventDefault();	
		var files = event.target.files;
		var frmData = new FormData();					
		var file = $('#filer_input')[0].files[0];
		frmData.append("files", file);				
		frmData.append("title", $scope.theFile.name);
		frmData.append("des", $scope.des);
		frmData.append("catID", $scope.catID);	
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
			alert("Success");
			$scope.$on(frmData, function(){
			});
		}, function(response) {
			alert("Error");
		});
	};
	
	 $scope.trustSrc = function(src){
		 return $sce.trustAsResourceUrl(src);
	 }

	 $scope.escapeUrl = function(url){
    	return escape(url);
	 }


});

//============================End of Document Controller===============


//============================Start Commnet Controller===============
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

// Feedback Controller
app.controller('FeedbackCtrl', function($scope, $http, $window) {
	$scope.getFeedbackData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/feedback',
			method : 'GET'
		}).then(function(response) {
			$scope.feedback = response.data.DATA;
			console.log($scope.feedback);
		}, function(response) {

		});
	}
	$scope.getFeedbackData();

});

// Report Controller
app.controller('ReportCtrl', function($scope, $http, $window) {
	$scope.getReportData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/report',
			method : 'GET'
		}).then(function(response) {
			$scope.report = response.data.DATA;
			console.log($scope.report);
		}, function(response) {

		});
	}
	$scope.getReportData();

});

// Savelist Controller
app.controller('SavelistCtrl', function($scope, $http, $window) {
	$scope.getSavelistData = function() {
		$http({
			url : 'http://localhost:1111/api/v1/savelist',
			method : 'GET'
		}).then(function(response) {
			$scope.savelist = response.data.DATA;
			console.log($scope.savelist);
		}, function(response) {

		});
	}
	$scope.getSavelistData();

});