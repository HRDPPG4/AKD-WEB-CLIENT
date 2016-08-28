

var app = angular.module('UserApp', ['ngAnimate', 'ngSanitize', 'ui.bootstrap']);

///////////////////		START MAIN CONTROLLLER FOR USER BLOCK	/////////////////
app.controller('UserCtrl', function($scope,$rootScope,$http,$sce){	//$rootScope, $scope, $http, $location, $localStorage, loginService
	
	
	/*$http.defaults.headers.common.Authorization = 'Basic Q2hpdm9ybjphZG1pbg==' ;	*/
	
	
	////////////////////START SEARCH BLOCK	/////////////////
	var _selected;
	$scope.selected = undefined;

	$scope.searchPage = function(){
		location.href= "/search/"+$scope.selected;
		//alert($scope.selected);
	}
	
	
	$scope.getDocumentByLikeTitle = function(title){			
		$http({
			url:'http://localhost:1111/api/v1/getDocumentByLikeTitle/'+title,
			method:'GET'			
		}).then(function(response){
			$scope.documentSearch=response.data.DATA;
			console.log($scope.documentSearch);
			
		}, function(response){
		
		});
	}
 
	  //////////////////// END SEARCH BLOCK	/////////////////
	  
	  
	////////////////////	START INITAILIZE VARIABLE BLOCK	/////////////////
	$rootScope.currentSubCategory="currentSubCategory";
	$scope.currentMainCategory="";
	$scope.currentDocumentID="";
	
	
	
	
	////////////////////	END INITAILIZE VARIABLE BLOCK	/////////////////
	
	
	
	

	////////////////////	START CATEGORY BLOCK	/////////////////
	
	$scope.getAllCategory = function(){			
		$http({
			url:'http://localhost:1111/api/v1/category',
			method:'GET'			
		}).then(function(response){
		//	console.log(response.data.DATA);
			$scope.category=response.data.DATA;
			
		//	console.log($scope.category);
			
		}, function(response){
		
		});
	}	
	$scope.getAllCategory();
	
	$scope.getCategoryByParentID=function(parentID){	
		$scope.getCategoryByID(parentID);
		$http({
			url:'http://localhost:1111/api/v1/getCategoryByParentID/'+parentID,
			method:'GET'
		}).then(function(response){
			$scope.parentCategory=response.data.DATA;
			//console.log("ParentCat: ");
			//console.log($scope.parentCategory[0]);
		}, function(response){

		});	
	}
	//	-----------------Get All Category and Subcategory-----------------------
	
	$scope.getAllCategoryAndSubcategory=function(){	
		//$scope.getCategoryByID(parentID);
		$http({
			url:'http://localhost:1111/api/v1/getCategoryByParentID/0B4RhbtI4DXY_QWVOWkFiSTlRY1E',
			method:'GET'
		}).then(function(response){
			$scope.getAllCategoryAndSubcategory=response.data.DATA;
			//console.log("Get All Cat and Sub: ");
			//console.log($scope.getAllCategoryAndSubcategory);
		}, function(response){

		});	
	}
	$scope.getAllCategoryAndSubcategory();
	
	$scope.getCategoryByID=function(CatID){		
		$http({
			url:'http://localhost:1111/api/v1/category/'+CatID,
			method:'GET'
		}).then(function(response){
			$scope.getCategoryByID=response.data.DATA;
		//	console.log($scope.getCategoryByID);
		}, function(response){

		});	
	}
	
	//	GET MAIN CATEGORY
	$scope.getMainCategory=function(parentID){		
		$http({
			url:'http://localhost:1111/api/v1/getCategoryByParentIDAndStatusEnable/0B4RhbtI4DXY_QWVOWkFiSTlRY1E',
			method:'GET'
		}).then(function(response){
			$scope.mainCategory=response.data.DATA;
			// Get SubCat here!!
		//	$scope.getCategoryByParentID(mainCategory[0].CAT_ID);
			//console.log("Main Category")
			
		//	console.log($scope.mainCategory);
		}, function(response){

		});	
	}
//	$scope.getMainCategory();
	
	////////////////////	END CATEGORY BLOCK	/////////////////
	
	///////////////////		START COMMENT BLOCK	/////////////////
	
	$scope.getAllCommentByDocID=function(DocID){	
		//console.log(DocID);
		$http({
			url:'http://localhost:1111/api/v1/getAllCommentByDocID/'+DocID,
			method:'GET'
		}).then(function(response){
			$scope.commentByDoc=response.data.DATA;
		//	console.log($scope.commentByDoc);
		}, function(response){

		});	
		
	//	alert("getCommentByDocID");
	}
	//$scope.getAllCommentByDocID($scope.currentDocumentID);
	
	$scope.UserID="";
	$scope.insertComment = function(){	
		$http({
			url:'http://localhost:1111/api/v1/comment',
			method:'POST',
			data:{				
				"CREATED_DATE": new Date(),
				"DOC_ID": $scope.currentDocumentID,
				"REMARK": $scope.newComment,
				"STATUS": 1,
				"USER_ID": $scope.UserID
			}	
			
		}).then(function(response){
		//	alert($scope.currentDocumentID);
			$scope.getAllCommentByDocID($scope.currentDocumentID);
		//	alert("Success");
		//	alert($scope.UserID);
			//$scope.display();
			//console.log(response.config.data);
		}, function(response){
			alert("Error");
		});	
	}

	
	
	///////////////////		END COMMENT BLOCK	/////////////////
	
	///////////////////		START DOCUMENT BLOCK	/////////////////
	
	
	$scope.getDocumentByPopular=function(){
		$scope.showRecomment=false;
		$scope.showNewPost=false;
		$scope.showPopular=true;
		
		$http({
			url:'http://localhost:1111/api/v1/getDocumentByPopular/',
			method:'GET'
		}).then(function(response){
			$scope.popular=response.data.DATA;
		//	console.log("Popular: "+$scope.popular);
		}, function(response){

		});
	}
	
	$scope.getDocumentByRecommended=function(){
		$scope.showRecomment=true;
		$scope.showNewPost=false;
		$scope.showPopular=false;
		$http({
			url:'http://localhost:1111/api/v1/getDocumentByRecommended/',
			method:'GET'
		}).then(function(response){
			$scope.recommend=response.data.DATA;
			//console.log("Recomand: "+$scope.recommend);
		}, function(response){

		});
	}
	
	$scope.getDocumentByNewPost=function(){
		$scope.showRecomment=false;
		$scope.showNewPost=true;
		$scope.showPopular=false;
		$http({
			url:'http://localhost:1111/api/v1/getDocumentByNewPost/',
			method:'GET'
		}).then(function(response){
			$scope.newDocument=response.data.DATA;
			//console.log("New: "+$scope.newDocument);
		}, function(response){

		});
	}
	
	
	
	
	$scope.getDocumentAndCategoryAndUserAndCommentByDocID = function(DocID){
		$http({
			url:'http://localhost:1111/api/v1/getDocDetail/'+DocID,
			method:'GET'
		}).then(function(response){
			$scope.docDetail=response.data.DATA;
			$scope.commentByDocID=response.data.DATA[0].COMMENT;
			$rootScope.currentSubCategory=response.data.DATA[0].CAT_ID;
			$scope.currentDocumentID=DocID;
			$scope.getAllCommentByDocID(DocID);
			
		//	console.log("Document Detail");
		//	console.log($scope.docDetail.DOC_TYPE_NUM);
		//	console.log(response.data.DATA[0].USERS[0].USER_NAME);
		//	console.log($scope.commentByDocID);
			//console.log($rootScope.currentSubCategory);
			$scope.getAllDocumentByCatID($rootScope.currentSubCategory);
		}, function(response){

		});
	}
	
	
	
	$scope.getAllDocument = function(){
		$http({
			url:'http://localhost:1111/api/v1/document',
			method:'GET'
		}).then(function(response){
			$scope.document=response.data.DATA;
			$scope.allDocTitle=response.data.DATA;
		//	console.log("Document Bock");
			//console.log($scope.document);
			//console.log($scope.allDocTitle);
		}, function(response){

		});
	}
		
	$scope.getAllDocument();
	
	$scope.getAllDocumentByCatID=function(CatID){
	//	alert("GetDocByCatID"+CatID);
		$rootScope.currentSubCategory=CatID;		//First It is close!!
		//alert($rootScope.currentSubCategory);
		$http({
			url:'http://localhost:1111/api/v1/getDocumentByCatID/'+CatID,
			method:'GET'
		}).then(function(response){
			//alert($rootScope.currentSubCategory);
			$scope.documentByCatID=response.data.DATA;
			//console.log("DOC BY CATE",$scope.documentByCatID);
		}, function(response){

		});
		
		//alert("Get All Document By Category ID"+ CatID);
	}
	
	$scope.getDocumentById=function(id){
		$http({
			url:'http://localhost:1111/api/v1/document/'+id,
			method:'GET'
		}).then(function(response){
			$scope.doc=response.data.DATA;
			$rootScope.currentSubCategory=$scope.doc.CAT_ID;	//currentSubCategory can get new value here. I dont' know why old value lost???
			$scope.currentDocumentID=$scope.doc.DOC_ID;
			//	alert($rootScope.currentSubCategory);	
			
			$scope.getAllCommentByDocID($scope.doc.DOC_ID);
			
			$scope.getAllDocumentByCatID($scope.doc.CAT_ID);
		//	$scope.getAllDocumentByCatID($rootScope.currentSubCategory);
		//	alert($rootScope.currentSubCategory);
		}, function(response){

		});	
		$scope.countView(id);
	}
	$scope.getDocumentByUser=function(userID,docTypeNum){
		$scope.showsavelist= false;
		$http({
			url:'http://localhost:1111/api/v1/document/user/'+userID,
			method:'GET',
			params: {
				docTypeNum : docTypeNum
			}
		
		}).then(function(response){
			$scope.DocumentUser=response.data.DATA;
			console.log($scope.DocumentUser);
		}, function(response){

		});
	}
	
	$scope.deleteDocument=function(docID){
		var userID = $("#userDoc").val();
		
		var typeDoc = $("#typeDoc").val();
	
		$http({
			url:'http://localhost:1111/api/v1/document/'+docID,
			method:'DELETE',
		
		
		}).then(function(response){
		   alert("Deleted!");
		 	$scope.getDocumentByUser(userID,typeDoc);
		}, function(response){
           alert("Fail");
		});
	 
	}
    $scope.countView = function(docID){
    	
    	
    	$http({
    		url : 'http://localhost:1111/api/v1/document/counview/'+docID,
    		method : 'PUT',
    		
    	}).then(function(response){
    		
    		
    		//alert("Count Success");
    		$scope.trackLog(docID);
    	},function(response){
    		console.log(response);
    	});
    }
	
	///////////////////		END DOCUMENT BLOCK	/////////////////
	
	///////////////////		START FEEDBACK BLOCK	/////////////////
	
	$scope.saveFeedBack = function(){	

		$http({
			url:'http://localhost:1111/api/v1/feedback',
			method:'POST',
			data:{
				  'CREATED_DATE': new Date(),
				  'DES': $('#recomend').val(),
				  'STATUS': 1
				  
			}
		}).then(function(response){
			alert("success");
		
			
		}, function(response){
		 console.log(response);
		});
	}
	
	
	///////////////////		END FEEDBACK BLOCK	/////////////////
	
	///////////////////		START LOG BLOCK	/////////////////
	
	 $scope.trackLog=function(docID){

	      
			$http({
				url:'http://localhost:1111/api/v1/log',
				method:'POST',
				data :{
					  'CREATED_DATE': new Date(),
					  'DOC_ID': docID, 
					  'REMARK': "",
					  'STATUS': 0,
					  'USER_ID': $('#slide_user_id').val()
				}
			}).then(function(response){
				alert("Success");
			
			}, function(response){
				console.log(response);
			});	
		}
	
	 $scope.deleteLog =function(docID){
	     	var userID = $("#userID").val();
	     //	alert(docID);
		 
			$http({
				url:'http://localhost:1111/api/v1/log/'+docID,
				method:'DELETE',
			}).then(function(response){
				alert("Success");
				$scope.getLogByUser(userID);
			}, function(response){
               console.log(response);
              
			});	
		}
	 
	  $scope.getLogByUser =function(userID){
	     
  			$http({
  				url:'http://localhost:1111/api/v1/user/log/'+userID,
  				method:'GET'
  			}).then(function(response){
  				$scope.getLogByUser=response.data.DATA;
  			  //  console.log($scope.getLogByUser);
  			}, function(response){
                alert("fail");
  			});	
  		}
	
	 
	
	
	
	///////////////////		END LOG BLOCK	/////////////////
	
	
	    
	///////////////////		START REPORT BLOCK	/////////////////
	  


	
	  $scope.UserID="";
		$scope.insertReport = function(){	
			$http({
				url:'http://localhost:1111/api/v1/report',
				method:'POST',
				data:{	
					"CREATED_DATE": new Date(),
					"DOC_ID": $scope.currentDocumentID,
					"REMARK": $scope.currentReport,
					"STATUS": 1,
					"USER_ID": $scope.UserID
				}	
				
			}).then(function(response){
			
				$scope.report = response.data.DATA;
			
			}, function(response){
				
			});	
		}

	
	
	
	 ///////////////////		END REPORT BLOCK	/////////////////
		
	
	
	 ///////////////////		START SAVELIST BLOCK	/////////////////
	
	 // create saveList

		  $scope.saveList = function(){   
		   	  var Savelistname = "";
		   	  var catename = "";
		  
		   	  var listname ="";
		         catename = $("#saveListnames").val();
		         
		        
		         listname = $scope.saveListname;
		      
		         doc = $('#doc_id').val();
		         alert(doc);
		         alert(listname);
		        
		         if(catename == undefined && doc != ""){
		          
		           	  Savelistname = listname;
		           	  $http({
		           			url:'http://localhost:1111/api/v1/savelist',
		           			method:'POST',
		           			data:{
		           				  'CREATED_DATE': new Date(),
		           				  'DOC_ID': $('#doc_id').val(),
		           				  'LIST_NAME': Savelistname,
		           				  'REMARK': "",
		           				  'STATUS':1 ,
		           				  'USER_ID': $('#user_id').val()

		           			}
		           		}).then(function(response){
		           			alert("success");
		           			
		           			
		           		}, function(response){
		           			//console.log(response);
		           			
		           		});
		       	  
		         }else if(listname ==undefined){
		        	 
		           	  Savelistname = catename;
		           		$http({
		           			url:'http://localhost:1111/api/v1/savelistDetail',
		           			method:'POST',
		           			data:{
		           				  'CREATED_DATE': new Date(),
		           				  'DOC_ID': $('#doc_id').val(),
		           				  'LIST_ID': Savelistname
		           				 
		           			}
		           		}).then(function(response){
		           			alert("success");
		           			
		           			
		           		}, function(response){
		           		//	console.log(response);
		           			
		           		});

		         }else{
		        	
		          	  Savelistname = listname;
		          	 
		          	  $http({
		        			url:'http://localhost:1111/api/v1/saveSavelistOnly',
		        			method:'POST',
		        			data:{
		        				  'CREATED_DATE': new Date(),
		        				  'LIST_NAME': Savelistname,
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
		         
		         
		       
				
			}

     

     //--------End create saveList------------
     
     //--------- getSavelistUser-----------------
     $scope.getSavelistUser=function(userID){
     	
    			$http({
    				url:'http://localhost:1111/api/v1/getuserSavelist/'+userID,
    				method:'GET'
    			}).then(function(response){
    				$scope.getuserSavelist=response.data.DATA;
    			
      			   // console.log($scope.getuserSavelist);
    			
    			}, function(response){

    			});	
    			
    		}
    	    $scope.getSavelistUser();
     
        //---------getSavelistUser----------
    	    $scope.getSavelistMenuUser=function(userID){
    	    
    	    	$scope.showsavelist = true;
        	    //	alert("Savelist");
        	    
        			$http({
        				url:'http://localhost:1111/api/v1/getuserSavelistMenu/'+userID,
        				method:'GET'
        			}).then(function(response){
        				$scope.getSavelistMenu=response.data.DATA;
        			
          			   console.log($scope.getSavelistMenu);
        			
        			}, function(response){

        			});	
        		}
     //-----------getSavelistMenuUser---------------//
    	    
    		$scope.getDocumentByEachSavelist=function(userID,savelistID){
    			alert(savelistID);
    			$http({
    				url:'http://localhost:1111/api/v1/getEachSavelist/'+userID,
    				method:'GET',
    				params: {
    					savelistID : savelistID
    				}
    			
    			}).then(function(response){
    				$scope.getDocumentInSavelist=response.data.DATA[0].SAVELISTDETAIL;
    				console.log($scope.getDocumentInSavelist);
    			}, function(response){

    			});
    		}
     
    //------------getEachSavelist------------------//	
    		$scope.getDocumentByUser=function(userID,docTypeNum){
    		$scope.showsavelist= false;
    		$http({
    			url:'http://localhost:1111/api/v1/document/user/'+userID,
    			method:'GET',
    			params: {
    				docTypeNum : docTypeNum
    			}
    		
    		}).then(function(response){
    			$scope.DocumentUser=response.data.DATA;
    			console.log($scope.DocumentUser);
    		}, function(response){

    		});
    	}
    	    
    	    
    //------------EndgetEachSavelist---------------//
    //------------deletSavelistDetail--------------//
    		 $scope.deleteSavelistDetail =function(docID){
    	           var listID = $('#listID').val();
    	          
    	           
    			 
    				$http({
    					url:'http://localhost:1111/api/v1/savelist/deleteSavelistDetail/'+docID,
    					method:'DELETE',
    				}).then(function(response){
    					alert("Success");
    					
    				}, function(response){
    	               console.log(response);
    	              
    				});	
    			}
    //------------EnddeleteSavelistDetail----------//
     
     //-----------EndgetSavelistMenuUser------------//
     
 
	  ///////////////////	END SAVELIST BLOCK	/////////////////
	
	  ///////////////////	START USER BLOCK	/////////////////
	
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
	
	
	///////////////////		END USER BLOCK	/////////////////
	
	
	
	////////////////////	START UPLOAD BLOCK	/////////////////
	
	$scope.theFile = null;
	$scope.catID="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
	$scope.des="";
	$scope.uploadFile = function(event) {
		//alert($rootScope.currentSubCategory);
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
			//alert($rootScope.currentSubCategory);
			//getAllDocumentByCatID(parentCat.CAT_ID)
			
			$(".progress-bar").css("width", "100%"); 
	
			$scope.$on(frmData, function(){
				
			});
			
			$scope.getAllDocumentByCatID($rootScope.currentSubCategory);
			
			
		
			
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
		
	////////////////////	END UPLOAD BLOCK	/////////////////
	
	
});
///////////////////		END MAIN CONTROLLLER FOR USER BLOCK	/////////////////

///////////////////		START DIRECTIVE FOR UPLOAD FILE	/////////////////
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

///////////////////		END DIRECTIVE FOR UPLOAD FILE	/////////////////


///////////////////		START FILTER STRING WITH LIMIT LEGNH	/////////////////

app.filter('strLimit', ['$filter', function($filter) {
	   return function(input, limit) {
	     if (! input) return;
	     if (input.length <= limit) {
	          return input;
	      }
	    
	      return $filter('limitTo')(input, limit) + '...';
	   };
	}]);
///////////////////		END FILTER STRING WITH LIMIT LEGNH	/////////////////


app.directive('myEnter', function () {
    return function (scope, element, attrs) {
        element.bind("keydown keypress", function (event) {
            if(event.which === 13) {
                scope.$apply(function (){
                    scope.$eval(attrs.myEnter);
                });

                event.preventDefault();
            }
        });
    };
});