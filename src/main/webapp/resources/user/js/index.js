var app = angular.module('indexApp', []);
app.controller('indexCtrl', function($scope,$sce) {
   $scope.slideURL=$sce.trustAsResourceUrl("https://onedrive.live.com/embed?cid=41468BA873DB6994&resid=41468BA873DB6994%21434&authkey=AABcOreYLL7cv-I&em=2&wdAr=1.7777777777777777");	
    $scope.newURL="NewURL";
    
    $scope.slides = [
                     {"id":1, "url":'https://onedrive.live.com/embed?cid=41468BA873DB6994&resid=41468BA873DB6994%21434&authkey=AABcOreYLL7cv-I&em=2&wdAr=1.7777777777777777'},
                     {"id":2, "url":'https://onedrive.live.com/view.aspx?cid=41468ba873db6994&page=view&resid=41468BA873DB6994!442&parId=41468BA873DB6994!103&app=PowerPoint'}
                    ];
    
    

    

    $scope.getSlideURL = function(slide){
		// $http({
		// 	url:'/display/',
		// 	method:'GET'			
		// }).then(function(response){
		// 	$scope.user=response.data;
		// //	console.log($scope.user);
		// }, function(response){

		// });

    $scope.newURL = slide.name;
	$scope.slideURL = $sce.trustAsResourceUrl($scope.newURL);
	
	alert($scope.slideURL);
	
	
	/*alert($scope.newURL);*/

	}
    
    $scope.escapeUrl = function(url){
    	return escape(url);
    }

});