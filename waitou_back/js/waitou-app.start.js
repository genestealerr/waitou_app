var Waitou = angular.module('Waitou',[
]);

// Waitou.config(['$httpProvider', function ($httpProvider){
//      delete $httpProvider.defaults.headers.common['X-Requested-With']; //Fixes cross domain requests
// }
// ]);

Waitou.controller('MainCtrl', function($scope, $http){
	
		// $http.get('http://waitou.herokuapp.com/api/GetPlaceByName.json?places=Bar').
  //       success(function(data) {
  //           $scope.greeting = data;
  //       });

	$scope.categories = [
		{"id": 0, "name": "Work", "iconUrl": "img/iconWork.svg"},
		{"id": 1, "name": "Coffee", "iconUrl": "img/iconCoffee.svg"},
		{"id": 2, "name": "Exhibition", "iconUrl": "img/iconExhibition.svg"}
	];

		$scope.places = [
		{"id": 0, "name": "The Other Place", "description":"Really nice place", "category":"[0,1]", "picture": "img/iconWaitou.svg", "priceRate": 3, "creationDate":"24-04-2015", "creatorName":"Michel Fourniret", "longitude":111.1111, "lattitude":22222.2222},
		{"id": 1, "name": "Slow Boat", "description": "Really nice place", "category":"[2]", "picture": "img/imgMember.png", "priceRate": 2, "creationDate":"23-04-2015", "creatorName":"Emile Louis", "longitude":222.2222, "lattitude":3333.3333}
	];
});

Waitou.filter('myFilter', function () {  
    return function(inputs,filterValues) {
      var output = [];
      angular.forEach(inputs, function (input) {
        if (filterValues.indexOf(input.id) !== -1)
            	output.push(input);
       });
       return output;
   };
});