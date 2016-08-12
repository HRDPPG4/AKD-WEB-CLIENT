var app = angular.module('UploadFileApp', []);
app.controller('UploadFileCtrl', function($scope, $http) {

	$scope.uploadFile = function(event) {
		event.preventDefault();

		var frmData = new FormData();
		var file = $('#filer_input')[0].files[0];
		//for(var i=0; i<files.length; i++)
		//	frmData.append("file", files[i]);

		frmData.append("files", file);
		$http({
			url : 'http://192.168.178.202:1111/api/uploadFile',
			method : 'POST',
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

/*app.controller('test', function($scope){
	alert()
});

app.controller('test1', function($scope){
	
});*/

/*

 var app = angular.module('DocumentApp', []);
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


 */