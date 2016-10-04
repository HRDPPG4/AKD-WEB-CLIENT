
var preloader = document.querySelector(".preloader");
var app = angular.module('UserApp', ['ngAnimate', 'ngSanitize', 'ui.bootstrap']);
var API_PATH = "http://localhost:1111";

///////////////////		START MAIN CONTROLLLER FOR USER BLOCK	/////////////////
app.controller('UserCtrl',['$scope','$rootScope','$http','$sce', '$window', function($scope,$rootScope,$http,$sce,$window){	//$rootScope, $scope, $http, $location, $localStorage, loginService
	
	$scope.partners = [
		     		      {
		     		        "SITE_URL"	: "http://localhost:2222",
		     		        "SITE_NAME"	: "AKD",
		     		        "SITE_LOGO"	: "http://localhost:2222/resources/user/img/AKD.png"
		     		      },
		     		      {
		     		        "SITE_URL"	: "http://www.knongdai.com/",
		     		        "SITE_NAME"	: "KND",
		     		        "SITE_LOGO"	: "http://www.knongdai.com/resources/static/images/favicon/favicon-16x16.png"
		     		      },
		     		      {
		     		        "SITE_URL"	: "http://www.khmeracademy.org/",
		     		        "SITE_NAME"	: "KA",
		     		        "SITE_LOGO"	: "http://www.khmeracademy.org/resources/assets/img/favicon/android-icon-192x192.png"
		     		      },
		     		      {
		     		        "SITE_URL"	: "http://news.khmeracademy.org/",
		     		        "SITE_NAME"	: "AKN",
		     		        "SITE_LOGO"	: "http://news.khmeracademy.org/resources/images/logo/akn.png"
		     		      },
		     		      {
		     		        "SITE_URL"	: "http://www.kosign.com.kh/k2_layout.act",
		     		        "SITE_NAME"	: "KOSIGN",
		     		        "SITE_LOGO"	: "http://www.kosign.com.kh/img/ico/logo.png"
		     		      }		     		      
	     		    ];
	     		
	
	
	
	////////////////////START SEARCH BLOCK	/////////////////
	var _selected;
	$scope.selected = undefined;

	$scope.searchPage = function(){
		location.href= "/search/"+$scope.selected;
	}
	
	var url = window.location.href;
	var lastPart = url.substr(url.lastIndexOf('/') + 1);
	
	$scope.checkLocation = function(){
		//alert(API_PATH);
		if(lastPart=="recommend"){
			$scope.showRecomment=true;
			$scope.showNewPost=false;
			$scope.showPopular=false;
			$scope.getDocumentByRecommended();
		}else if(lastPart=="popular"){
			$scope.showRecomment=false;
			$scope.showNewPost=false;
			$scope.showPopular=true;
			$scope.getDocumentByPopular();
		}else if(lastPart=="new"){
			$scope.showRecomment=false;
			$scope.showNewPost=true;
			$scope.showPopular=false;
			$scope.getDocumentByNewPost();
		}else{
			$scope.showRecomment=false;
			$scope.showNewPost=false;
			$scope.showPopular=false;
		}
			
		
	}
	$scope.getDocumentByLikeTitle = function(title){			
		$http({
			url:API_PATH+'/api/v1/getDocumentByLikeTitle/'+title,
			method:'GET'			
		}).then(function(response){
			
			$scope.documentSearch=response.data.DATA;
			console.log("respone search.");
			console.log(response);
			
			if(response.data.DATA==null){
				$scope.recordNotFound=true;
			}
		}, function(response){
			
		});
	}
 
	  //////////////////// END SEARCH BLOCK	/////////////////
	  
	  
	////////////////////	START INITAILIZE VARIABLE BLOCK	/////////////////
	$rootScope.currentSubCategory="currentSubCategory";
	$scope.currentMainCategory="";
	$scope.currentDocumentID="";
		
	$rootScope.userID = $window.userID;
	$rootScope.loading =$window.loading;
	
	
	
	
	////////////////////	END INITAILIZE VARIABLE BLOCK	/////////////////
	
	
	
	

	////////////////////	START CATEGORY BLOCK	/////////////////
	
	
	$scope.getAllCategory = function(){
		if($scope.checkUserLogin()){
			
		}else{
			$http({
				url:API_PATH+'/api/v1/category',
				method:'GET'			
			}).then(function(response){

				$scope.category=response.data.DATA;
				
			}, function(response){
			
			});
		}
		
		
	}	
	
	$scope.getCategoryByParentID=function(parentID){	
		$scope.getCategoryByID(parentID);
		$http({
			url:API_PATH+'/api/v1/getCategoryByParentID/'+parentID,
			method:'GET'
		}).then(function(response){
			$scope.parentCategory=response.data.DATA;
		}, function(response){

		});	
	}
	//	-----------------Get All Category and Subcategory-----------------------
	
	$scope.getAllCategoryAndSubcategory=function(){	
		$http({
			url:API_PATH+'/api/v1/getCategoryByParentID/0B4RhbtI4DXY_QWVOWkFiSTlRY1E',
			method:'GET'
		}).then(function(response){
			$scope.getAllCategoryAndSubcategory=response.data.DATA;
		}, function(response){

		});	
	}
	$scope.getAllCategoryAndSubcategory();
	
	$scope.getCategoryByID=function(CatID){		
		$http({
			url:API_PATH+'/api/v1/category/'+CatID,
			method:'GET'
		}).then(function(response){
			$scope.getCategoryByID=response.data.DATA;
		}, function(response){

		});	
	}
	
	//	GET MAIN CATEGORY
	$scope.getMainCategory=function(parentID){		
		$http({
			url:API_PATH+'/api/v1/getCategoryByParentIDAndStatusEnable/0B4RhbtI4DXY_QWVOWkFiSTlRY1E',
			method:'GET'
		}).then(function(response){
			$scope.mainCategory=response.data.DATA;
		
		}, function(response){

		});	
	}
	
	////////////////////	END CATEGORY BLOCK	/////////////////
	
	///////////////////		START COMMENT BLOCK	/////////////////

	
	$rootScope.UserID=$window.userID;
	
	$scope.getAllCommentByDocID=function(DocID){	

		
		$http({
			url:API_PATH+'/api/v1/getAllCommentByDocID/'+DocID,
			method:'GET'
		}).then(function(response){
			$scope.commentByDoc=response.data.DATA;
		}, function(response){

		});	

	}

	
	
	$scope.insertComment = function(){
		if($rootScope.UserID==0 || $rootScope.UserID==null ||$rootScope.UserID =="")
		{
			location.href= "/login";
		}else{

			$http({
				url:API_PATH+'/api/v1/comment',
				method:'POST',
				data:{				
					"CREATED_DATE": new Date(),
					"DOC_ID": $scope.currentDocumentID,
					"REMARK": $scope.newComment,
					"STATUS": 1,
					"USER_ID": $rootScope.UserID
				}	
				
			}).then(function(response){
				$scope.getAllCommentByDocID($scope.currentDocumentID);
				$scope.newComment="";
			}, function(response){
				alert("Error");
			});	
		}
		
	}

	
	
	///////////////////		END COMMENT BLOCK	/////////////////
	
	///////////////////		START DOCUMENT BLOCK	/////////////////
	
	$scope.showRecomment=false;
	$scope.showNewPost=false;
	$scope.showPopular=false;
	
	$scope.getDocumentByPopular=function(){
		/* preloader.style.opacity = 1;
		 preloader.style.display ="block";*/
		$scope.showRecomment=false;
		$scope.showNewPost=false;
		$scope.showPopular=true;
		
		$http({
			url:API_PATH+'/api/v1/getDocumentByPopular/',
			method:'GET',
			params : $scope.filter
		}).then(function(response){
			 /*preloader.style.opacity = 0;
			 preloader.style.display ="none";*/
			$scope.popular=response.data.DATA;

			//$scope.setDocumentPagination(response.data.PAGING.TOTAL_PAGES);
		//	console.log("Popular: "+$scope.popular);
		}, function(response){

		});
	}
	
	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 20
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setDocumentPagination = function(totalPage){
		PAGINATION.bootpag({
			total: totalPage,          // total pages
			page: $scope.filter.page,   // default page
			leaps: true,
	        firstLastUse: true,
	        first: '←',
	        last: '→',
	        next: 'Next',
	        prev: 'Prev',
	        maxVisible: 10
		});		
	}
	
	PAGINATION.on("page", function(event, num){
		//alert(num);
		$scope.filter.page = num;
		$scope.getDocumentByPopular();
	});
	
	$scope.getDocumentByRecommended=function(){
		/* preloader.style.opacity = 1;
		 preloader.style.display ="block";*/
		$scope.showRecomment=true;
		$scope.showNewPost=false;
		$scope.showPopular=false;
		$http({
			url:API_PATH+'/api/v1/getDocumentByRecommended/'+$rootScope.userID,
			method:'GET'
		}).then(function(response){
			if(response.data.DATA==null){
				$scope.recordFound=false;
			}
			$scope.recommend=response.data.DATA;
		}, function(response){

		});
	}
	
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setDocumentByRecommentPagination = function(totalPage){
		PAGINATION.bootpag({
			total: totalPage,          // total pages
			page: $scope.filter.page,   // default page
			leaps: true,
	        firstLastUse: true,
	        first: '←',
	        last: '→',
	        next: 'Next',
	        prev: 'Prev',
	        maxVisible: 10
		});		
	}
	
	PAGINATION.on("page", function(event, num){
		//alert(num);
		$scope.filter.page = num;
		$scope.getDocumentByRecommended();
	});
	
	
	$scope.getDocumentByNewPost=function(){		
		 /*preloader.style.opacity = 1;
		 preloader.style.display ="block";*/
		 
		$scope.showRecomment=false;
		$scope.showNewPost=true;
		$scope.showPopular=false;
		$http({
			url:API_PATH+'/api/v1/getDocumentByNewPost/',
			method:'GET',
			params : $scope.filter
		}).then(function(response){
			
			/*preloader.style.opacity = 0;
			preloader.style.display ="none";*/
			
			$scope.newDocument=response.data.DATA;
		//	$scope.setNewPostPagination(response.data.PAGING.TOTAL_PAGES);
			//console.log("New: "+$scope.newDocument);
		}, function(response){

		});
	}
	
//	//TODO: default filter
//	$scope.filter = {
//		page: 1,
//		limit: 20
//	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setNewPostPagination = function(totalPage){
		PAGINATION.bootpag({
			total: totalPage,          // total pages
			page: $scope.filter.page,   // default page
			leaps: true,
	        firstLastUse: true,
	        first: '←',
	        last: '→',
	        next: 'Next',
	        prev: 'Prev',
	        maxVisible: 10
		});		
	}
	
	PAGINATION.on("page", function(event, num){
		//alert(num);
		$scope.filter.page = num;
		$scope.getDocumentByNewPost();
	});
	
	$scope.getDocumentAndCategoryAndUserAndCommentByDocID = function(DocID){
		fbThumbnail = DocID;
		$http({
			url:API_PATH+'/api/v1/getDocDetail/'+DocID,
			method:'GET'
		}).then(function(response){
			$scope.docDetail=response.data.DATA;
			$scope.commentByDocID=response.data.DATA[0].COMMENT;
			$rootScope.currentSubCategory=response.data.DATA[0].CAT_ID;
			$scope.currentDocumentID=DocID;
			$scope.getAllCommentByDocID(DocID);
			$scope.getAllDocumentByCatID($rootScope.currentSubCategory);
		}, function(response){

		});
	}
	
	
	$scope.allDocTitle=[];
	$scope.getAllDocument = function(){
		$http({
			url:API_PATH+'/api/v1/document',
			method:'GET'
		}).then(function(response){
			$scope.document=response.data.DATA;
			$scope.allDocTitle=response.data.DATA;						
			for (var i = 0; i < response.data.DATA.length; i++) {
				$scope.allDocTitle[i] = response.data.DATA[i].TITLE;
			   // console.log($scope.allDocTitle);
			}
		}, function(response){

		});
	}
	
		
	$scope.getAllDocument();
	
	$scope.getAllDocumentByCatID=function(CatID){
		$rootScope.currentSubCategory=CatID;		//First It is close!!
		$http({
			url:API_PATH+'/api/v1/getDocumentByCatID/'+CatID,
			method:'GET'
		}).then(function(response){
			$scope.documentByCatID=response.data.DATA;
			if(response.data.DATA==null){
				$scope.recordNotFound=true;
			}
			else{
				$scope.recordNotFound=false;
			}
		}, function(response){

		});
	}
	
	$scope.getDocumentById=function(docID){
		
		$scope.countView(docID);
		
		$http({
			url:API_PATH+'/api/v1/document/'+docID,
			method:'GET'
		}).then(function(response){
			$scope.doc=response.data.DATA;
			$rootScope.currentSubCategory=$scope.doc.CAT_ID;	//currentSubCategory can get new value here. I dont' know why old value lost???
			$scope.currentDocumentID = $scope.doc.DOC_ID;				
			$scope.getAllCommentByDocID($scope.doc.DOC_ID);			
			$scope.getAllDocumentByCatID($scope.doc.CAT_ID);
		}, function(response){

		});	
		
		
	   
		
	}
	$scope.getDocumentByUser=function(docTypeNum){
		$scope.showsavelist= false;
		$http({
			url:API_PATH+'/api/v1/document/user/'+$rootScope.userID,
			method:'GET',
			params: {
				docTypeNum : docTypeNum
			}
		
		}).then(function(response){
			$scope.DocumentUser=response.data.DATA;
		}, function(response){

		});
		
	}
	
	$scope.deleteDocument=function(docID){				
		var typeDoc = $("#typeDoc").val();
		
		swal({   title: "តើអ្នកពិតជាចង់លុបមែនទេ?",   
			text: "អ្នកនឹងមិនអាចហៅវាមកវិញបានទេ!",   
			type: "warning",   showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "យល់ព្រម",   
			cancelButtonText: "បដិសេធ",   
			closeOnConfirm: false,   closeOnCancel: false },
			function(isConfirm){   
			 	if (isConfirm) {     
			 		swal("បានជោគជ័យ!", "ឯកសារត្រូវបានលុប", "success"); 
			 		$http({
						url:API_PATH+'/api/v1/document/'+docID,
						method:'DELETE',
					
					
					}).then(function(response){
					  // alert("Deleted!");
					 	$scope.getDocumentByUser($rootScope.userID,typeDoc);
					}, function(response){
			          // alert("Fail");
					});
			 	//	$scope.delete(i);
			 	}
		 		else {     
		 			swal("បានបដិសេធ", "ឯកសាររបស់អ្នកគឺមានសុវត្ថិភាព :)", "error");   
		 		} 
		 	});
	 
	}
    $scope.countView = function(docID){
    	
    	Des = "View Document";
    	status = 1;
    	$scope.trackLog(docID,Des,status);
    	$http({
    		url : API_PATH+'/api/v1/document/counview/'+docID,
    		method : 'PUT',
    		
    	}).then(function(response){
    		
    	},function(response){
    	});
    }
    
    /*$scope.CountDocByCatID = function(catID) {
    	//alert(catID);
		$http({
			url : API_PATH+'/api/v1/getDocumentCountByCatID/'+catID,
			method : 'GET'
		}).then(function(response) {
			$scope.docCount = response.data.COUNT;
			console.log($scope.docCount);
		}, function(response) {
			
		});
	}*/
    
    $scope.updateTotalDocByCatID = function(catID) {
    	//alert(catID);
		$http({
			url : API_PATH+'/api/v1/document/updateTotalDocByCatID/'+catID,
			method : 'PUT'
		}).then(function(response) {
			/*$scope.docUpdateByCatID = response.data.MESSAGE;
			console.log($scope.docUpdateByCatID);*/
		}, function(response) {
			
		});
	}
    
    $scope.countTotalDocByUserID = function() {
		$http({
			url : API_PATH+'/api/v1/document/countTotalDocByUserID/'+$rootScope.userID,
			method : 'GET'
		}).then(function(response) {
			$scope.countDocByUserID = response.data.COUNT;
			console.log($scope.countDocByUserID);
		}, function(response) {
			
		});
	}
    
    
	
	///////////////////		END DOCUMENT BLOCK	/////////////////
	
	///////////////////		START FEEDBACK BLOCK	/////////////////
    $scope.feeback_text="";
	$scope.saveFeedBack = function(){	
		$http({
			url:API_PATH+'/api/v1/feedback',
			method:'POST',
			data:{
				  'CREATED_DATE': new Date(),
				  'DES': $scope.feeback_text,
				  'STATUS': 1
				  
			}
		}).then(function(response){
			$scope.feeback_text="";
			swal({  
				title: "ជោកជ័យ!",   
				text: "សូមអរគុណចំពោះការកែរកំហុសឆ្គងរបស់យើង!",   
				timer: 800,   
				showConfirmButton: false 
			});
		
			
		}, function(response){
		 console.log(response);
		});
	}
	
	
	///////////////////		END FEEDBACK BLOCK	/////////////////
	
	///////////////////		START LOG BLOCK	/////////////////
	

	 $scope.trackLog=function(docID="" ,Des,status){
		  
		   if($rootScope.userID ==null || $rootScope.userID=="" ||$rootScope.userID ==0 ){

		   }else{
			   $http({
					url:API_PATH+'/api/v1/log',
					method:'POST',
					data :{
						  'CREATED_DATE': new Date(),
						  'DOC_ID': docID, 
						  'REMARK': Des,
						  'STATUS': status,
						  'USER_ID': $rootScope.UserID
					}
				}).then(function(response){

				
				}, function(response){
					
				});	
		   }
			
		}

	
	 $scope.deleteLog =function(docID){
		 swal({   title: "តើអ្នកពិតជាចង់លុបមែនទេ?",   
			text: "អ្នកនឹងមិនអាចហៅវាមកវិញបានទេ!",   
			type: "warning",   showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "យល់ព្រម",   
			cancelButtonText: "បដិសេធ",   
			closeOnConfirm: false,   closeOnCancel: false },
			function(isConfirm){   
			 	if (isConfirm) {     
			 		swal("បានជោគជ័យ!", "ឯកសារត្រូវបានលុប", "success"); 
			 		$http({
						url:API_PATH+'/api/v1/log/'+docID,
						method:'DELETE',
					}).then(function(response){
						$scope.getLogByUserID();
					}, function(response){
		              
					});	
			 	}
		 		else {     
		 			swal("បានបដិសេធ", "ឯកសាររបស់អ្នកគឺមានសុវត្ថិភាព :)", "error");   
		 		} 
		 	});
		}
	 
	  $scope.getLogByUserID =function(){
		  $http({
				url:API_PATH+'/api/v1/user/log/'+$rootScope.userID,
				method:'GET'
			}).then(function(response){
				$scope.getLogByUser=response.data.DATA;
			  
			}, function(response){
              
			});		  
  		}
	  
	  $scope.deleteAllLogByUserID =function(){
			 swal({   title: "តើអ្នកពិតជាចង់លុបមែនទេ?",   
				text: "អ្នកនឹងមិនអាចហៅវាមកវិញបានទេ!",   
				type: "warning",   showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "យល់ព្រម",   
				cancelButtonText: "បដិសេធ",   
				closeOnConfirm: false,   closeOnCancel: false },
				function(isConfirm){   
				 	if (isConfirm) {     
				 		swal("បានជោគជ័យ!", "ឯកសារត្រូវបានលុប", "success"); 
				 		$http({
							url:API_PATH+'/api/v1/deleteAllLogByUserID/'+$rootScope.userID,
							method:'DELETE',
						}).then(function(response){
							$scope.getLogByUserID();
						}, function(response){
			              
						});	
				 	}
			 		else {     
			 			swal("បានបដិសេធ", "ឯកសាររបស់អ្នកគឺមានសុវត្ថិភាព :)", "error");   
			 		} 
			 	});
			}
	  
	
	
	///////////////////		END LOG BLOCK	/////////////////
	
	
	    
	///////////////////		START REPORT BLOCK	/////////////////
	  


	
	
		$scope.insertReport = function(){
			if($rootScope.UserID==0 || $rootScope.UserID==null ||$rootScope.UserID =="")
			{
				location.href= "/login";
			}else{
				$http({
					url:API_PATH+'/api/v1/report',
					method:'POST',
					data:{	
						"CREATED_DATE": new Date(),
						"DOC_ID": $scope.currentDocumentID,
						"REMARK": $scope.currentReport,
						"STATUS": 1,
						"USER_ID": $rootScope.UserID
					}	
					
				}).then(function(response){
					swal({  
						title: "វាយតម្លៃបានជោកជ័យ!",   
						text: "សូមអរគុណចំពោះការវាយតម្លៃរបស់អ្នក!",   
						timer: 800,   
						showConfirmButton: false 
					});
				
					$scope.report = response.data.DATA;
					$scope.currentReport="";
				
				}, function(response){
					
				});					
			}			
		}

	
	
	
	 ///////////////////		END REPORT BLOCK	/////////////////
		
	
	
	 ///////////////////		START SAVELIST BLOCK	/////////////////
	
	 // create saveList
		$scope.showNew = true;
		$scope.showSave = false;
		$scope.checkSavelist = function(listname){
			
			if (listname != 'undefined' || listname != '')
				$scope.showNew = false;
			   
			    $scope.saveList(listname);
			    
		}
	   $scope.showButtonSave = function(){ $scope.showSave = true;}
	   $scope.enableList=true;

		$scope.saveList = function(savelistID){   
			 
			 

			
		   	  var Savelistname = 0;
		   
		   	  var catename = "";
		      var Des = "";
		      var listname ="";
		      var status =  0;
		         catename = savelistID 
		        
		        
		        listname = $scope.saveListname;
		         
		      
		         doc = $('#doc_id').val();

		       
		        
		         if(catename == undefined ){
		              
		        	 var Des = "Create New Savelist";
		        	 var docID = $('#doc_id').val();
		        	 var status = 0;
		           	  Savelistname = listname;
		           	  $http({
		           			url:API_PATH+'/api/v1/savelist',
		           			method:'POST',
		           			data:{
		           				  'CREATED_DATE': new Date(),
		           				  'DOC_ID': docID,
		           				  'LIST_NAME': Savelistname,
		           				  'REMARK': Des,
		           				  'STATUS':1 ,
		           				  'USER_ID': $rootScope.userID

		           			}
		           		}).then(function(response){		
		           			$scope.trackLog(docID,Des,status);
		           			$scope.saveListname="";
		           			swal({  
		        				title: "ជោកជ័យ!",   
		        				text: "ឯកសាររបស់អ្នកត្រូវបានបញ្ចូលទៅក្នុងបញ្ជី!",   
		        				timer: 800,   
		        				showConfirmButton: false 
		        			});
		           			$scope.enableList=false;
		           			
		           		}, function(response){
		          
		           			
		           		});
		       	  
		         }else if(listname ==undefined ){
		        	  Des ="Create into Existing Savelist";
		        	 
		        	
		        	  
		           	  Savelistname = catename;
		           		$http({
		           			url:API_PATH+'/api/v1/savelistDetail',
		           			method:'POST',
		           			data:{
		           				  'CREATED_DATE': new Date(),
		           				  'DOC_ID': doc ,
		           				  'LIST_ID': Savelistname
		           				 
		           			}
		           		}).then(function(response){
		           		
		           			$scope.trackLog(docID,Des,status);
		           			$scope.saveListname="";
		           			swal({  
		        				title: "ជោកជ័យ!",   
		        				text: "ឯកសាររបស់អ្នកត្រូវបានបញ្ចូលទៅក្នុងបញ្ជី!",   
		        				timer: 800,   
		        				showConfirmButton: false 
		        			});
		           			$scope.enableList=false;
		           		}, function(response){
		           		
		           			
		           		});

		         }else{
		        	
		          	  Savelistname = listname;
		          	  
		          	  Des = "Create Category Savelist";
		          	  $http({
		        			url:API_PATH+'/api/v1/saveSavelistOnly',
		        			method:'POST',
		        			data:{
		        				  'CREATED_DATE': new Date(),
		        				  'LIST_NAME': Savelistname,
		        				  'REMARK': Des,
		        				  'STATUS':1 ,
		        				  'USER_ID': $rootScope.userID

		        			}
		        		}).then(function(response){
		        		
		        			$scope.trackLog(docID,Des,status)
		        			$scope.saveListname="";
		        			swal({  
		        				title: "ជោកជ័យ!",   
		        				text: "ឯកសាររបស់អ្នកត្រូវបានបញ្ចូលទៅក្នុងបញ្ជី!",   
		        				timer: 800,   
		        				showConfirmButton: false 
		        			});
		        			$scope.enableList=false;
		        		}, function(response){
		        			
		        		});

		        
		         }
		         
		         
		       
				
			}

     

     //--------End create saveList------------
     
     //--------- getSavelistUser-----------------
     $scope.getSavelistUser=function(){
    	 $scope.enableList=true;
    	if($rootScope.UserID==0 || $rootScope.UserID==null ||$rootScope.UserID =="")
 		{
 			location.href= "/login";
 		}else{
 			$http({
				url:API_PATH+'/api/v1/getuserSavelist/'+$rootScope.userID,
				method:'GET'
			}).then(function(response){
				$scope.getuserSavelist=response.data.DATA;
			
			
			}, function(response){

			});	
 		}     	
   	}
     
    	 //   $scope.getSavelistUser();
     
        //---------getSavelistUser----------
    	    $scope.getSavelistMenuUser=function(){
    	    	if($scope.showsavelist == true){
    	    		$scope.showsavelist = false;
    	    	}else{
    	    		$scope.showsavelist = true;
    	    	}
    	    	
    	    	

    			$http({
    				url:API_PATH+'/api/v1/getuserSavelistMenu/'+$rootScope.userID,
    				method:'GET'
	    			}).then(function(response){
	    				$scope.getSavelistMenu=response.data.DATA;	
	    			
	    			}, function(response){
	
	    			});	
        		}
     //-----------getSavelistMenuUser---------------//
    	    /*$scope.saveListIDByUser="";
    	    $scope.saveListNameByUser="";
    	    $scope.totalInSaveListByUser="";*/
    	    
    		$scope.getDocumentByEachSavelist=function(savelistID){
    			
    			/*$scope.saveListIDByUser=savelistID;
    			$scope.saveListNameByUser=listName;
    			$scope.totalInSaveListByUser=totalDoc;*/
    			
    			var userID = $rootScope.userID;
    			$http({
    				url:API_PATH+'/api/v1/getEachSavelist/'+userID,
    				method:'GET',
    				params: {
    					savelistID : savelistID
    				}
    			
    			}).then(function(response){
    				$scope.getDocumentInSavelist=response.data.DATA[0].SAVELISTDETAIL;
    				console.log(response);
    			}, function(response){

    			});
    		}
     
    //------------getEachSavelist------------------//	
    		$scope.getDocumentByUser=function(docTypeNum){
    		$scope.showsavelist= false;
    		
    		$http({
    			url:API_PATH+'/api/v1/document/user/'+$rootScope.userID,
    			method:'GET',
    			params: {
    				docTypeNum : docTypeNum
    			}
    		
    		}).then(function(response){
    			$scope.DocumentUser=response.data.DATA;
    		}, function(response){

    		});
    	}
    	    
    	    
    //------------EndgetEachSavelist---------------//
    //------------deletSavelistDetail--------------//
    		 $scope.deleteSavelistDetail =function(docID){
    	           var listID = $('#listID').val();
    	           
    	           swal({   title: "តើអ្នកពិតជាចង់លុបមែនទេ?",   
    	   			text: "អ្នកនឹងមិនអាចហៅវាមកវិញបានទេ!",   
    	   			type: "warning",   showCancelButton: true,   
    	   			confirmButtonColor: "#DD6B55",   
    	   			confirmButtonText: "យល់ព្រម",   
    	   			cancelButtonText: "បដិសេធ",   
    	   			closeOnConfirm: false,   closeOnCancel: false },
    	   			function(isConfirm){   
    	   			 	if (isConfirm) {     
    	   			 		swal("បានជោគជ័យ!", "ឯកសារត្រូវបានលុប", "success"); 
	    	   			 	$http({
	        					url:API_PATH+'/api/v1/savelist/deleteSavelistDetail/'+docID,
	        					method:'DELETE',
	        				}).then(function(response){    					
	        					$scope.getDocumentByEachSavelist(listID);    					
	        				}, function(response){
	        	             
	        	              
	        				});	
    	   			 	}
    	   		 		else {     
    	   		 			swal("បានបដិសេធ", "ឯកសាររបស់អ្នកគឺមានសុវត្ថិភាព :)", "error");   
    	   		 		} 
    	   		 	});
    			}
    //------------EnddeleteSavelistDetail----------//
     
     //-----------EndgetSavelistMenuUser------------//
     
 
	  ///////////////////	END SAVELIST BLOCK	/////////////////
	
	  ///////////////////	START USER BLOCK	/////////////////
	
 $scope.getUserByID=function(){
	 if($scope.checkUserLogin()){
			
		}else{
			$http({
				url:API_PATH+'/api/v1/user/'+$rootScope.UserID,
				method:'GET'
			}).then(function(response){
				$scope.getUserByID=response.data.DATA;
			
			}, function(response){

			});
		}
	} 
    		 	
    		 
 $scope.checkUserLogin = function(){	
	 if($rootScope.UserID==0 || $rootScope.UserID==null ||$rootScope.UserID =="")
		{
			location.href= "/login";
		}else{
			
		}
	}
    		 
    
	$scope.saveUser = function(){	

		$http({
			url:API_PATH+'/api/v1/user',
			method:'POST',
			data:{
				  'CREATED_DATE': new Date(),
				  'EMAIL': $scope.userEmail,
				  'PASSWORD': $scope.userPassword,
				  'PHONE': $scope.userPhone,
				  'REMARK': "",
				  
				  'STATUS': 1,	
				  'USER_NAME': $scope.userName,
				  'USER_ROLE': "ROLE_USER"
			}
		}).then(function(response){
			swal({  
    				title: "អបអរសាទរ!",   
    				text: "",   
    				timer: 600,   
    				showConfirmButton: false
    			},function(){
    				location.href = "/login";
    			});
			$scope.userName="";
			$scope.userPassword="";
			
		}, function(response){

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
//	$rootScope.finalName=$window.fileName;
	$scope.theFile = null;
	$scope.catID="0B4RhbtI4DXY_QWVOWkFiSTlRY1E";
	$scope.des="";
	$scope.uploadFile = function(event) {
		if($scope.checkUserLogin()){
			
		}else{
		
			event.preventDefault();	
			var files = event.target.files;
			var frmData = new FormData();					
			var file = $('#filer_input')[0].files[0];
			frmData.append("files", file);				
			frmData.append("title", $scope.theFile.name);
			frmData.append("des", $scope.des);
			frmData.append("usreID", $rootScope.userID);		
			frmData.append("catID", $scope.catID);	
			$http({
				url : API_PATH+'/api/uploadFile',
				method :'POST',
				data : frmData,
				transformRequest : angular.identity,
				headers : {
					'Content-Type' : undefined
				}
			}).then(function(response) {
				
				swal({  
					title: "File Upload Successful!",   
					text: "",   
					timer: 800,   
					showConfirmButton: false 
				});
				
				$(".progress-bar").css("width", "100%"); 
		
				$scope.$on(frmData, function(){
					
				});
				
				$scope.getAllDocumentByCatID($rootScope.currentSubCategory);
				
				
			
				
			}, function(response) {
				swal({  
					title: "File Upload Fail!",   
					text: "",   
					timer: 800,   
					showConfirmButton: false 
				});
				
			});
		}
		
		
	};
	
	
	
	$scope.uploadUserProfile = function(event) {
		if($scope.checkUserLogin()){
			
		}else{
			event.preventDefault();	
			var files = event.target.files;
			var frmData = new FormData();					
			var file = $('#user')[0].files[0];
			frmData.append("files", file);	
			frmData.append("userID", $rootScope.userID);	
			$http({
				url : API_PATH+'/api/uploadUserProfile',
				method :'POST',
				data : frmData,
				transformRequest : angular.identity,
				headers : {
					'Content-Type' : undefined
				}
			}).then(function(response) {
				 //$scope.getUserByID();
				 location.href= "/userAccount";
			});
		}
		
		
	};
	
	$scope.checkDocID = function(docID) {
   
    	$rootScope.docUpdateID=docID;
            
    }
	
	$rootScope.docUpdateID="default";
	$scope.uploadDocThumbnail = function(event) {
		
		if($scope.checkUserLogin()){
			
		}else{
			event.preventDefault();	
			var files = event.target.files;
			var frmData = new FormData();					
			var file = $('#docThumbnail')[0].files[0];
			frmData.append("files", file);	
			frmData.append("docID", $rootScope.docUpdateID);	
			$http({
				url : API_PATH+'/api/uploadDocThumbnail',
				method :'POST',
				data : frmData,
				transformRequest : angular.identity,
				headers : {
					'Content-Type' : undefined
				}
			}).then(function(response) {
				$scope.getDocumentByUser();
				
			});
		}
		
		
	};
	
	
	

	 $scope.trustSrc = function(src){
		 return $sce.trustAsResourceUrl(src);
	 }

	 $scope.escapeUrl = function(url){
    	return escape(url);
	 }
		
	////////////////////	END UPLOAD BLOCK	/////////////////
	
	 $scope.setFile = function(element) {
	        $scope.$apply(function($scope) {
	            $scope.theFile = element.files[0];
	            
	        });
	    };
	    
	    
	// SHARE TO FACEBOOK
	    
    $scope.FBShare = function(thumbnail) {
		var url = 'http://192.168.178.28:2222/' + window.location.pathname;
		 
		 FB.ui({
		   method: 'share',
		   display: 'popup',
		   caption: 'TESTING',
		   href:  url ,
		   picture: thumbnail,
		   
		 }, function(response){
			  
		 });		
	};
	
	$scope.numFormat = function(num) {
	    isNegative = false
	    if (num < 0) {
	        isNegative = true
	    }
	    num = Math.abs(num)
	    if (num >= 1000000000) {
	        formattedNumber = (num / 1000000000).toFixed(1).replace(/\.0$/, '') + 'G';
	    } else if (num >= 1000000) {
	        formattedNumber =  (num / 1000000).toFixed(1).replace(/\.0$/, '') + 'M';
	    } else  if (num >= 1000) {
	        formattedNumber =  (num / 1000).toFixed(1).replace(/\.0$/, '') + 'K';
	    } else {
	        formattedNumber = num;
	    }   
	    if(isNegative) { formattedNumber = '-' + formattedNumber }
	    return formattedNumber;
	};
	   
}]);
///////////////////		END MAIN CONTROLLLER FOR USER BLOCK	/////////////////



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









    



