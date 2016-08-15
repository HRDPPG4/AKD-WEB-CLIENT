var app = angular.module('MainApp', []);

//START RELATED SLIDE BLOCK

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

//END RELATED SLIDE BLOCK


//START UPLOAD FILE BLOCK
app.controller('UploadCtrl', function($scope, $http,$timeout) {	
	$scope.uploadFile = function(event) {
		event.preventDefault();
		
		var frmData = new FormData();
		
		$scope.des="Des for file by Chivorn";
		
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
		//	alert("Success");
			
			console.log("Success Block");
			console.log(response);
				
			
			// Listen to fileuploadstop event
			$scope.$on(frmData, function(){

			    // Your code here
			    console.log('All uploads have finished');
			});
			
			
		}, function(response) {
		//	console.log(response);	
			$scope.width="100%";
			$(".progress-bar").css("width", $scope.width); 
			//alert("Error");
			
			console.log("Error Block");
			console.log(response);
			
			
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

		alert("Upload Folder");
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



