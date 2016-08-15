var app = angular.module('MainApp', []);

//START UPLOAD FILE BLOCK

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

app.controller('UploadCtrl', function($scope, $http,$timeout,$rootScope) {	
	$scope.theFile = null;
	//	CATEGORY	
	$scope.showCategory = function(){		
		$http({
			url:'http://localhost:1111/api/v1/category',
			method:'GET'			
		}).then(function(response){
			console.log(response.data.DATA);
			$scope.category=response.data.DATA;
		}, function(response){
		
		});
	}	
	$scope.showCategory();
	
	$scope.catID="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
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
			//alert("Click in AngularJS");
			//alert("Success");
			
			console.log("Success Block");
			console.log(response);
				
			
			// Listen to fileuploadstop event
			$scope.$on(frmData, function(){

			    // Your code here
			    console.log('All uploads have finished');
			});
			
		//	alert($scope.fileTitle);
			
		}, function(response) {
		//	console.log(response);	
			$scope.width="100%";
			$(".progress-bar").css("width", $scope.width); 
		//	alert("Error");
			
			console.log("Error Block");
			console.log(response);
			//alert($scope.fileTitle);
			
		});
		
		
		

		/*alert("Click in AngularJS");*/
	};
	
//	END UPLOAD FILE BLOCK
	
	
	
	$scope.uploadFolder=function(event) {
		event.preventDefault();
		var frmData = new FormData();
		var id="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
		
		frmData.append("folderID", id);
		frmData.append("folderName", $scope.folderName);
		frmData.append("folderDes", $scope.des);
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

	//	alert("Upload Folder");
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
	
	
	app.controller('relatedSlideCtrl', function($scope,$sce) {
		$scope.slideURL=$sce.trustAsResourceUrl("https://onedrive.live.com/embed?cid=41468BA873DB6994&resid=41468BA873DB6994%21434&authkey=AABcOreYLL7cv-I&em=2&wdAr=1.7777777777777777");	
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
	                  
	                    ];
	 

	    $scope.getSlideURL = function(slide){
			

	    $scope.newURL = slide.name;
		$scope.slideURL = $sce.trustAsResourceUrl($scope.newURL);
		
		}
	    
	    $scope.escapeUrl = function(url){
	    	return escape(url);
	    }

	});


});



