var app = angular.module('UserApp', []);
// DIRECTIVE FOR USER. USER IN UPLOAD FILE
app.directive('bindFile', [function () {
    return {
        require: "ngModel",
        restrict: 'A',
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
		}, function(response){
		
		});
	}	
	$scope.showCategory();
	
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

	/*	$scope.slideURL=$sce.trustAsResourceUrl("https://onedrive.live.com/embed?cid=41468BA873DB6994&resid=41468BA873DB6994%21434&authkey=AABcOreYLL7cv-I&em=2&wdAr=1.7777777777777777");	
	    $scope.newURL="NewURL";
	    
	    $scope.slides = [
	                     {"id":1, "url":'https://docs.google.com/presentation/d/1xmbyX56yEEEkfE-SEKR5rLbqrsntFMqlUyrEoXKG050'},
	                     {"id":2, "url":'https://docs.google.com/presentation/d/1mPEmSC82zw9Az-w9UMGwz75xJ3HWxcXbr1FdIlRL7dg'},
	                     {"id":3, "url":'https://docs.google.com/presentation/d/1aMdIubU2BCaOsxBuX6m5CTCKE4GQo6dcMW2opRIFeeg'},
	                     {"id":4, "url":'https://docs.google.com/presentation/d/1QMvw5F0AJpjNFrzu9CJdjtKaAJa0IJTVtqXCWp3-J0w'},
	                     {"id":5, "url":'https://docs.google.com/presentation/d/1Sb3GLx-LK8PGOLVu1dapE2DhlOe7Y01-qpxS5aG-8-M'},
	                     {"id":6, "url":'https://docs.google.com/presentation/d/19K3FQWT4sZ8Y5Aok_ge8HI79MP_I41cu0yWSH5iWneA'},
	                     {"id":7, "url":'https://docs.google.com/presentation/d/1V04AzauwIJ73BImLZgcniAzUvr3i1fWoaJ8hzB8XsN0'},
	                     {"id":8, "url":'https://docs.google.com/presentation/d/1Kqllz530rJqevpW_c2eTNCbkfnkv4otSkCY_hiF5FIE'}
	                  
	                    ];*/
	 

	   /* $scope.getSlideURL = function(doc){
		    $scope.newURL = doc.EMBEDED_LINK;
			$scope.slideURL = $sce.trustAsResourceUrl($scope.newURL);
		}*/
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
			 console.log(response);
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
		
	var id="";
	$rootScope.getDocumentById=function(id){		
		$http({
			url:'http://localhost:1111/api/v1/document/'+id,
			method:'GET'
		}).then(function(response){
			
			$scope.doc=response.data.DATA;
			console.log($scope.doc);
			//console.log("DocID: "+$scope.docID);
		}, function(response){

		});	
	}
	
	$rootScope.getDocumentById(id);
});


