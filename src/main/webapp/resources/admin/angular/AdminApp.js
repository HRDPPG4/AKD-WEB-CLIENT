var app = angular.module('MainApp', []);


var API_PATH = "http://localhost:1111";
//var API_PATH = "http://192.168.178.207:1111";

// Main Controller for admin
app.controller('MainCtrl', function($scope, $http, $sce, $timeout) {

	
	
	//	CATEGORY	
	
	$scope.getAllCategoryNewFun = function(){
		$http({
			url:API_PATH+'/api/v1/category',
			method:'GET'			
		}).then(function(response){
		//	console.log(response.data.DATA);
			$scope.allCategoryNewFun=response.data.DATA;
		//	console.log("GET ALL CAT ADMIN");
		//	console.log($scope.getAllCategory);
			
		}, function(response){
		
		});
	}
	
	$scope.getAllCategoryNewFun();
	
	
	
	$scope.getCategoryCount = function() {
		$http({
			url : API_PATH+'/api/v1/getCategoryCount',
			method : 'GET'
		}).then(function(response) {
			$scope.CategoryCount = response.data.COUNT;
			console.log($scope.CategoryCount);
		}, function(response) {
			
		});
	}
	
	$scope.getCategoryCount();
	
	$scope.showCategoryByLimit = function(){			
		$http({
			url:API_PATH+'/api/v1/getAllCategoryByLimit',
			method:'GET',
			params : $scope.filter
		}).then(function(response){
			console.log(response.data.DATA);
			$scope.category=response.data.DATA;	
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
			//console.log("ALL Cat in admin"+$scope.category);
		}, function(response){		
		
		});
	}	
	$scope.showCategoryByLimit();
	
	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setPagination = function(totalPage){
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
		$scope.filter.page = num;
		$scope.showCategoryByLimit();
	});
	
	$scope.removeCategory = function(id) {
		$http({
			url : API_PATH+'/api/v1/category/' + id,
			method : 'PUT'
		}).then(function() {
			$scope.showCategoryByLimit();
		}, function() {
			
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
					$scope.removeCategory(id);
					swal("Deleted!", "Your imaginary file has been deleted.",
							"success");
				});
	}

	$scope.getDataForUpdate = function(category) {
		$scope.folderName = category.c.CAT_NAME;
		$scope.createDate = category.c.CREATED_DATE;
		$scope.des = category.c.REMARK;
		$scope.parentID = category.c.PARENT_ID;
		$scope.sta = category.c.STATUS;
		$scope.icon = category.c.ICON;
		$scope.cid = category.c.CAT_ID;
	}
	
	$scope.updateCategory = function() {
		$http({
			url : API_PATH+'/api/v1/category',
			method : 'PUT',
			data : {
				'CAT_NAME' : $scope.folderName,
				'CREATED_DATE' : $scope.createDate,
				'REMARK' : $scope.des,
				'PARENT_ID': $scope.parentID,
				'STATUS' : $scope.sta,
				'ICON': $scope.icon,
				'CAT_ID' : $scope.cid
			}
		}).then(function(response) {
			$scope.showCategoryByLimit();
		},function(response) {

			
			$scope.CategoryCount = response.data.COUNT;
			
		});
	}

	$scope.alertUpdate = function() {
		$scope.updateCategory();
		swal("Updated!", "You updated the user!", "success")
	}

	
	
	
	// UPLOAD CATEGORY AND SUB-CATEGORY BLOCK
	$scope.ParentID = "0BybKdIgWtK8tbVNqQWlXM0Q2dlE";
	$scope.sta = 1;
	$scope.catLevel = 0;
	$scope.catNumOrder = 0;
	$scope.uploadFolder = function(event) {
		event.preventDefault();
		var frmData = new FormData();
		frmData.append("folderID", $scope.ParentID);
		frmData.append("folderName", $scope.folderName);
		frmData.append("folderDes", $scope.des);
		frmData.append("folderStatus", $scope.sta);	
		frmData.append("catIcon", $scope.catIcon);
		if($scope.showCatBox==true){
			$scope.catLevel = 1;
			$scope.catNumOrder = 0;
		}else{
			$scope.catLevel = 0;
		}
		
		frmData.append("catNumOrder", $scope.catNumOrder);
		frmData.append("catLevel", $scope.catLevel);
		$http({
			url : API_PATH+'/api/uploadFolder',
			method : 'POST',
			data : frmData,
			transformRequest : angular.identity,
			headers : {
				'Content-Type' : undefined
			}
		}).then(function(response) {
			$scope.getAllCategoryNewFun();
			$scope.ParentID = "0BybKdIgWtK8tbVNqQWlXM0Q2dlE";
			$scope.folderName="";
			$scope.des="";
			$scope.catIcon="";
			
			swal(
				  'Good job!',
				  'Folder create Successful!',
				  'success'
				)
			
			// alert("ID: "+$scope.ParentID);
			//console.log("Check Upload Foler here!!");
			//console.log(response);
			/*$scope.message = response.data.message;
			$scope.folderName = category.c.CAT_NAME;
			$scope.des = category.c.REMARK;
			$scope.sta = category.c.STATUS;*/
		}, function(response) {
			console.log(response);
			swal(
				  'Sorry!',
				  'Folder create Fail!',
				  'error'
				)
		});
	};
});



// ======================User Controller===========================
app.controller('UserCtrl', function($scope, $http, $sce, $timeout) {
	$scope.getUserData = function() {
		$http({
			url : API_PATH+'/api/v1/user',
			method : 'GET',
			params : $scope.filter
		}).then(function(response) {
			$scope.user = response.data.DATA;
			//console.log($scope.user);
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
			
		}, function(response) {
			
		});
	}
	
	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setPagination = function(totalPage){
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
		$scope.filter.page = num;
		$scope.getUserData();
	});

	$scope.getUserData();

	$scope.insertUser = function() {
		$http({
			url : API_PATH+'/api/v1/user',
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
			
		});
	}

	$scope.getDataForUpdate = function(user) {
		// alert(user.u.EMAIL);
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
			url : API_PATH+'/api/v1/user',
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
			
		});
	}

	$scope.alertUpdate = function() {
		$scope.updateUser();
		swal("Updated!", "You updated the user!", "success")
	}
	
	$scope.removeUser = function(id) {
		$http({
			url : API_PATH+'/api/v1/user/' + id ,
			method : 'PUT'
		}).then(function() {
			$scope.getUserData();
		}, function() {
			
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
	
	$scope.getUserCount = function() {
		$http({
			url : API_PATH+'/api/v1/getUserCount',
			method : 'GET'
		}).then(function(response) {
			$scope.UserCount = response.data.COUNT;
			//console.log($scope.UserCount);
		}, function(response) {

		});
	}
	$scope.getUserCount();
	

});
//============================End of User Controller===============

//============================Start Document Controller===============
app.controller('DocumentCtrl', function($scope,$rootScope, $http, $sce, $timeout,$window) {
	$rootScope.userID = $window.userID;
	$scope.catID="0BybKdIgWtK8tbVNqQWlXM0Q2dlE";
	$scope.des="";
	
	$scope.showSingleInput = false;
	$scope.showMultipleInput = false;
	
	
	$scope.getUploadOption = function(option){
		if(option == 'Single'){
			$scope.showSingleInput = true;
			$scope.showMultipleInput = false;
		}else{
			$scope.showMultipleInput = true;
			$scope.showSingleInput = false;
		}
	}
	
	$scope.uploadDocument = function(event){
		
		event.preventDefault();	
		var files = event.target.files;
		var frmData = new FormData();
		
		frmData.append("usreID", $rootScope.userID);		
		frmData.append("catID", $scope.catID);
		frmData.append("des", $scope.des);
		
		if($scope.uploadOption == 'Single'){	
			
			var file = $('#singleUploadDocument')[0].files[0];
			frmData.append("files", file);
			frmData.append("title", $scope.selectedFile.name);
		}else{
								
			var file = $('#multipleUploadDocument')[0].files;
			for(var i = 0; i < file.length; i++){
				frmData.append("files", file[i]);
			}
			
			$('input[name^="fileName"]').each(function() {
				var fileTitle = $(this).val();
				var con = fileTitle.toLowerCase();				
				if(con.endsWith('.pdf') || con.endsWith('.ppt') || con.endsWith('.pptx') || con.endsWith('.doc') || con.endsWith('.docx')){
					fileTitle=fileTitle.substring(0, fileTitle.lastIndexOf('.'));	
				}				
				frmData.append("title",fileTitle);
			});
		}
		
		$http({
			url : API_PATH + '/api/uploadDocument',
			method :'POST',
			data : frmData,
			transformRequest : angular.identity,
			headers : {
				'Content-Type' : undefined
			}
		}).then(function(response) {
			
			swal(
				  'Good job!',
				  'Document Upload Successful!',
				  'success'
				)
			
		}, function(response) {

			swal(
				  'Sorry!',
				  'Document Upload Fail!',
				  'error'
				)
			
		});
	}
	
	
	
		
	/*$scope.getDocumentCount = function() {
		$http({
			url : API_PATH+'/api/v1/getDocumentCount',
			method : 'GET'
		}).then(function(response) {
			$scope.documentCount = response.data.COUNT;
			//console.log($scope.documentCount);
		}, function(response) {

		});
	}*/
	
	/*$scope.getDocumentData = function() {
		$http({
			url : API_PATH+'/api/v1/document',
			method : 'GET',
			params : $scope.filter
		}).then(function(response) {
			$scope.document = response.data.DATA;
			console.log($scope.document);
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
		}, function(response) {
			
		});
	}*/
	
	//$scope.getDocumentData();
	
	
	
	// START NEW CODE UPDATE BY CHIVORN
	
	$scope.getTotalDocumentByStatus = function(status) {
		$http({
			url : API_PATH+'/api/v1/getTotalDocumentByStatus?status=' + status,
			method : 'GET'
		}).then(function(response) {
			$scope.documentCount = response.data.COUNT;
			//console.log($scope.documentCount);
		//	alert($scope.documentCount);
		}, function(response) {

		});
	}
	
	$rootScope.currentStatus="";
	
	$scope.getDocumentByStatus = function(status) {
		$rootScope.currentStatus = status;
		$scope.getTotalDocumentByStatus($rootScope.currentStatus);
		$http({
			url : API_PATH+'/api/v1/document/getAllDocumentByStatus?status='+$rootScope.currentStatus,
			method : 'GET',
			params : $scope.filter
		}).then(function(response) {
			
			$scope.document = response.data.DATA;
			
			if(response.data.PAGING != null){
				$rootScope.currentTotalPage = response.data.PAGING.TOTAL_PAGES;				
			}else{	
				//$rootScope.currentTotalPage = 0;
				$rootScope.currentTotalPage = Math.ceil($scope.documentCount/$scope.filter.limit); 	// TOTAL PAGE HAS PROBLEM IF DON'T USE LIKE THIS.
			
			}
			
		//	alert("totalPge"+$rootScope.currentTotalPage);
			$scope.setPagination($rootScope.currentTotalPage);

			
		}, function(response) {
			
		});
	}
	
	$scope.getDocumentByStatus(0);
	
	$scope.documentStatus = [
		     		      {
		     		        "STATUS_NAME"	: "Pending Document",
		     		        "STATUS_VALUE"	: 0
		     		      },
		     		      {
		     		    	 "STATUS_NAME"	: "Enable Document",
			     		     "STATUS_VALUE"	: 1
		     		      },
		     		      {
		     		    	 "STATUS_NAME"	: "Disable Document",
			     		     "STATUS_VALUE"	: 2
		     		      },
		     		      {
		     		    	 "STATUS_NAME"	: "Deleted Document",
			     		     "STATUS_VALUE"	: 3
		     		      }	     		      
	     		    ];
	$scope.selectedStatus = $scope.documentStatus[0].STATUS_VALUE;
/*	console.log($scope.documentStatus[0].STATUS_VALUE);*/
	
	// STOP NEW CODE UPDATE BY CHIVORN
	
	
	
	
//	$scope.getDocumentCount();

	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setPagination = function(totalPage){
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
		$scope.filter.page = num;
		//$scope.getDocumentData();
		$scope.getDocumentByStatus($rootScope.currentStatus);
	});
	
	$rootScope.getAllCategory = function(){
		$http({
			url:API_PATH+'/api/v1/category',
			method:'GET'			
		}).then(function(response){
		//	console.log(response.data.DATA);
			$scope.AllCategory=response.data.DATA;
		//	console.log("GET ALL CAT ADMIN");
		//	console.log($scope.getAllCategory);
			
		}, function(response){
		
		});
	}
	
	$scope.removeDocument = function(id) {
		$http({
			url : API_PATH+'/api/v1/document/' + id ,
			method : 'PUT'
		}).then(function() {
			//$scope.getDocumentData();
			$scope.getDocumentByStatus($rootScope.currentStatus);
		}, function() {
			
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
					$scope.removeDocument(id);
					swal("Deleted!", "Your imaginary file has been deleted.",
							"success");
				});
	}

	$scope.getDataForUpdate = function(document) {
		$scope.docTitle = document.d.TITLE;
		$scope.docDesc = document.d.DES;
		$scope.embedLink = document.d.EMBEDED_LINK;
		$scope.thumnail = document.d.THUMBNAIL_URL;
		$scope.exportLink = document.d.EXPORT_LINK;
		$scope.view = document.d.VIEW;
		$scope.share = document.d.SHARE;
		$scope.createdDate = document.d.CREATED_DATE;
		$scope.docTypeNum = document.d.DOC_TYPE_NUM;
		$scope.userID = document.d.USER_ID;
		$scope.catID = document.d.CAT_ID;
		$scope.status = document.d.STATUS;
		$scope.docID= document.d.DOC_ID;
		
	}
	
	$scope.updateDocument = function() {
		$http({
			url : API_PATH+'/api/v1/document',
			method : 'PUT',
			data : {
				'TITLE' : $scope.docTitle,
				'DES' : $scope.docDesc,
				'EMBEDED_LINK' : $scope.embedLink,
				'THUMBNAIL_URL' : $scope.thumnail,
				'EXPORT_LINK' : $scope.exportLink,
				'VIEW' : $scope.view,
				'SHARE' : $scope.share,
				'CREATED_DATE' : $scope.createdDate,
				'DOC_TYPE_NUM' : $scope.docTypeNum,
				'USER_ID' : $scope.userID,
				'CAT_ID' : $scope.catID,
				'STATUS' : $scope.status,
				'DOC_ID' : $scope.docID
			}
		}).then(function() {
			//$scope.getDocumentData();
			$scope.getDocumentByStatus($rootScope.currentStatus);
		}, function() {
			
		});
	}

	$scope.alertUpdate = function() {
		$scope.updateDocument();
		swal("Updated!", "Document is updated!", "success")
	}	
	

});

//============================End of Document Controller===============


//============================Start Commnet Controller===============
app.controller('CommentCtrl', function($scope, $http, $window) {
	$scope.getCommentData = function() {
		$http({
			url : API_PATH+'/api/v1/comment',
			method : 'GET',
			params : $scope.filter
			
		}).then(function(response) {
			console.log(response.data.DATA);
			$scope.comment = response.data.DATA;
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
			
		}, function(response) {
			
		});
	}

	$scope.getCommentData();
	
	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setPagination = function(totalPage){
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
		$scope.filter.page = num;
		$scope.getCommentData();
	});
	
	$scope.removeComment = function(id) {
		$http({
			url : API_PATH+'/api/v1/comment/' + id,
			method : 'PUT'
		}).then(function() {
			$scope.getCommentData();
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
					$scope.removeComment(id);
					swal("Deleted!", "Your imaginary file has been deleted.",
							"success");
				});
	}
	
	$scope.faildAlert = function(title,message){
		swal(title, message);
	}
	
	$scope.getDataForUpdate = function(com) {
		$scope.createdDate = com.c.CREATED_DATE;
		$scope.docTitle = com.c.DOCUMENTS[0].TITLE;
		$scope.commentedBy = com.c.USERS[0].USER_NAME;
		$scope.remark = com.c.REMARK;
		$scope.userID = com.c.USER_ID;
		$scope.docID = com.c.DOC_ID;
		$scope.status = com.c.STATUS;
		$scope.comID = com.c.COMMENT_ID;
	}
	
	$scope.updateComment = function() {
		$http({
			url : API_PATH+'/api/v1/comment',
			method : 'PUT',
			data : {
				'CREATED_DATE' : $scope.createdDate,
				'REMARK' : $scope.remark,
				'USER_ID' : $scope.userID,
				'DOC_ID' : $scope.docID,
				'STATUS' : $scope.status,
				'COMMENT_ID' : $scope.comID
			}
		}).then(function() {
			$scope.getCommentData();
		}, function() {
			
		});
	}
	
	$scope.alertUpdateComment = function() {
		$scope.updateComment();
		swal("Updated!", "Comment has been updated!", "success")
	}	
	
	
});


//=================== Savelist Controller======================
app.controller('SavelistCtrl', function($scope, $http, $window) {
	$scope.getSavelistData = function() {
		$http({
			url : API_PATH+'/api/v1/savelist',
			method : 'GET',
			params : $scope.filter
		}).then(function(response) {
			$scope.savelist = response.data.DATA;
			console.log($scope.savelist);
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
		}, function(response) {

		});
	}
	$scope.getSavelistData();
	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setPagination = function(totalPage){
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
		
		$scope.filter.page = num;
		$scope.getSavelistData();
	});
	
	$scope.removeSavelist = function(id) {
		$http({
			url : API_PATH+'/api/v1/savelist/' + id,
			method : 'PUT'
		}).then(function() {
			$scope.getSavelistData();
		}, function() {
			
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
					$scope.removeSavelist(id);
					swal("Deleted!", "Your record has been deleted.",
							"success");
				});
	}
	
	$scope.getDataForUpdate = function(sl) {
		$scope.listName = sl.s.LIST_NAME;
		$scope.createdDate = sl.s.CREATED_DATE;
		$scope.user = sl.s.USERS[0].USER_NAME;
		$scope.remark = sl.s.REMARK;
		$scope.userID = sl.s.USER_ID;
		$scope.status = sl.s.STATUS;
		$scope.listID= sl.s.LIST_ID;
	}

	$scope.updateSavelist = function() {
		$http({
			url : API_PATH+'/api/v1/savelist',
			method : 'PUT',
			data : {
				'LIST_NAME' : $scope.listName,
				'CREATED_DATE' : $scope.createdDate,
				'REMARK' : $scope.remark,
				'USER_ID' : $scope.userID,
				'STATUS' : $scope.status,
				'LIST_ID' : $scope.listID
			}
		}).then(function() {
			$scope.getSavelistData();
		}, function() {
			
		});
	}
	
	$scope.alertUpdateSavelist = function() {
		$scope.updateSavelist();
		swal("Updated!", "List is updated!", "success")
	}	
	
});
//=======================End Savelist Controller======================


// =======================Feedback Controller======================
app.controller('FeedbackCtrl', function($scope, $http, $window) {
	$scope.getFeedbackData = function() {
		$http({
			url : API_PATH+'/api/v1/feedback',
			method : 'GET',
			params : $scope.filter
		}).then(function(response) {
			$scope.feedback = response.data.DATA;
			console.log($scope.feedback);
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
		}, function(response) {
			
		});
	}
		//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	
	$scope.setPagination = function(totalPage){
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
		$scope.filter.page = num;
		$scope.getFeedbackData();
	});
	$scope.getFeedbackData();

	
	$scope.removeFeedback = function(id) {
		$http({
			url : API_PATH+'/api/v1/feedback/' + id,
			method : 'PUT'
		}).then(function() {
			$scope.getFeedbackData();
		}, function() {
			swal("Loading Data Fiald!", "Please check your connection again!");
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
			$scope.removeFeedback(id);
			swal("Deleted!", "Your record has been deleted.",
					"success");
		});
	}
	
	$scope.readFeedback = function(feedback) {
		$scope.description = feedback.f.DES;
	}
	
});
//=================================================================

// =======================Report Controller========================
app.controller('ReportCtrl', function($scope, $http, $window) {
	$scope.getReportData = function() {
		$http({
			url : API_PATH+'/api/v1/report',
			method : 'GET',
			params : $scope.filter
		}).then(function(response) {
			$scope.report = response.data.DATA;
			console.log($scope.report);
			$scope.setPagination(response.data.PAGING.TOTAL_PAGES);
		}, function(response) {

		});
	}
	$scope.getReportData();
	
	$scope.removeReport = function(id) {
		$http({
			url : API_PATH+'/api/v1/report/' + id,
			method : 'PUT'
		}).then(function() {
			$scope.getReportData();
		}, function() {
			
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
					$scope.removeReport(id);
					swal("Deleted!", "Your imaginary file has been deleted.",
							"success");
				});
	}

	//TODO: default filter
	$scope.filter = {
		page: 1,
		limit: 10
	};
	
	var PAGINATION = angular.element("#PAGINATION");
	$scope.setPagination = function(totalPage){
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
		$scope.filter.page = num;
		$scope.getReportData();
	});
	
	$scope.readReport = function(report) {
		$scope.description = report.r.REMARK;
	}
	
	
	
});

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


