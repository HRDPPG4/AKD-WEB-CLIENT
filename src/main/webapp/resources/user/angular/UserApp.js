var app = angular.module('UserApp', []);
// DIRECTIVE FOR USER. USER IN UPLOAD FILE
app.directive('bindFile', [function () {
    return {
        require: "ngModel",
      //  restrict: 'A',
        link: function ($scope, el, attrs, ngModel) {
            el.bind('change', function (event) {
                ngModel.$setViewValue(event.target.files[0]);
                $scope.$apply();
              //  alert($scope.theFile.name);
               // $rootScope.name=$scope.theFile.name;
            });
            
            $scope.$watch(function () {
            //	$rootScope.name=$scope.theFile.name;

                return ngModel.$viewValue;
            }, function (value) {
                if (!value) {
                    el.val("");
                }
            });
        }

    };

}]);


//	FILTER STRING WITH LIMIT LEGNH

app.filter('strLimit', ['$filter', function($filter) {
	   return function(input, limit) {
	     if (! input) return;
	     if (input.length <= limit) {
	          return input;
	      }
	    
	      return $filter('limitTo')(input, limit) + '...';
	   };
	}]);




//	MAIN CONTROLLER FOR USER
app.controller('UserCtrl', function($scope, $http, $sce,$timeout,$rootScope,$interpolate,$parse){
	
	$scope.theFile = null;
	//	CATEGORY	
	$scope.showCategory = function(){			
		$http({
			url:'http://localhost:1111/api/v1/category',
			method:'GET'			
		}).then(function(response){
		//	console.log(response.data.DATA);
			$scope.category=response.data.DATA;
			
			//console.log($scope.category);
			
		}, function(response){
		
		});
	}	
	$scope.showCategory();
	
	$rootScope.getCategoryByParentID=function(parentID){		
		$http({
			url:'http://localhost:1111/api/v1/getCategoryByParentID/'+parentID,
			method:'GET'
		}).then(function(response){
			$scope.parentCategory=response.data.DATA;
			console.log($scope.parentCategory);
		}, function(response){

		});	
	}
	
	//	UPLOAD FILE BLOCK
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
			$scope.width="100%";
			//$(".progress-bar").css("width", $scope.width); 
			alert("Error");
		});
	};
	
	
	//	CODE FROM DOCUMENT CONTROLLER
	$scope.display = function(){
		$http({
			url:'http://localhost:1111/api/v1/document',
			method:'GET'
		}).then(function(response){
			$scope.document=response.data.DATA;
		//	console.log("Document Bock");
		//	console.log($scope.document);
		}, function(response){

		});
	}
	
	
	$scope.display();
	
	 $scope.trustSrc = function(src) {
		    return $sce.trustAsResourceUrl(src);
		  }

	    $scope.escapeUrl = function(url){
	    	return escape(url);
	    }
	    
	    	//	 form register
	    
	    $scope.saveUser = function(){	

			$http({
				url:'http://localhost:1111/api/v1/user',
				method:'POST',
				data:{
					  'CREATED_DATE': new Date(),
					  'EMAIL': $scope.userEmail,
					  'PASSWORD': $scope.userPassword,
					  'PHONE': $scope.userPhone,
					  'REMARK': "",
					  
					  'STATUS': 1,	
					  'USER_NAME': $scope.userName,
					  'USER_ROLE': "user"
				}
			}).then(function(response){
				alert("success");
				$scope.userName="";
				$scope.userPassword="";
				
			}, function(response){
			// console.log(response);
			});
		}	
		
		$scope.error = false;
		$scope.$watch('userPassword',function() {$scope.check();});
		$scope.$watch('userConfirmpassword',function() {$scope.check();});
		
		$scope.check = function() {
			  if ($scope.userPassword !== $scope.userConfirmpassword) {
			    $scope.error = true;
			    } else {
			    $scope.error = false;
			  }
			
			
			};
		
	
	
	$rootScope.getDocumentById=function(id){		
		$http({
			url:'http://localhost:1111/api/v1/document/'+id,
			method:'GET'
		}).then(function(response){
			$scope.doc=response.data.DATA;
			console.log($scope.doc.DOC_TYPE_NUM);
			//console.log("DocID: "+$scope.docID);
		}, function(response){

		});	
	}
	
	
	
	
	// Creat save list
    $scope.saveList = function(){	

        var docID = $('#doc_id').val();
        var userID = $('#user_id').val();
       
         
		$http({
			url:'http://localhost:1111/api/v1/savelist',
			method:'POST',
			data:{
				  'CREATED_DATE': new Date(),
				  'DOC_ID': $('#doc_id').val(),
				  'LIST_NAME': $scope.saveListname,
				  'REMARK': "",
				  'STATUS':1 ,
				  'USER_ID': $('#user_id').val()

			}
		}).then(function(response){
			alert("success");
			
			
		}, function(response){
			console.log(response);
			
		});
	}
    
	//$rootScope.getDocumentById(id);
});


