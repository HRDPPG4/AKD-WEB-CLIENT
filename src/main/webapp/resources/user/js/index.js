var app = angular.module('indexApp', []);
app.controller('indexCtrl', function($scope,$sce) {
   $scope.slideURL=$sce.trustAsResourceUrl("https://onedrive.live.com/embed?cid=41468BA873DB6994&resid=41468BA873DB6994%21434&authkey=AABcOreYLL7cv-I&em=2&wdAr=1.7777777777777777");	
    $scope.newURL="Hello";

    $scope.getSlideURL = function(){
		// $http({
		// 	url:'/display/',
		// 	method:'GET'			
		// }).then(function(response){
		// 	$scope.user=response.data;
		// //	console.log($scope.user);
		// }, function(response){

		// });


	$scope.slideURL=$sce.trustAsResourceUrl("$scope.newURL");	

	}

});