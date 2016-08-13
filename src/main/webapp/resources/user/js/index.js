var app = angular.module('indexApp', []);
app.controller('indexCtrl', function($scope,$sce) {
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