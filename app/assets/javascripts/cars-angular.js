var carApp = angular.module('carApp', []);

carApp.controller('OptionsListCtrl',['$scope', function($scope) {
  $scope.total = 0.0;

  $scope.options = [
    {'category':'base','name': 'Coupe Base Price', 'price': 22000.00},
    {'category':'fee','name': 'Destination Fee', 'price': 850.00},
    {'category':'wheel','name': 'Silver Heli Spoke', 'price': 0.00},
    {'category':'option','name': 'Six-Speed Automatic', 'price': 1250.00},  
    {'category':'color','name': 'Blazing Red', 'price': 200.00}   
  ];

  $scope.init = function() {
    $scope.updateTotal();
  }

  $scope.updateTotal = function() {
    var total = 0;
    for(i=0; i<$scope.options.length; i++) {
      total = total + $scope.options[i]['price'];
    }

    $scope.total = total;  
  }

  $scope.addOption = function(option) {
    if ($scope.options.count(function(n) { return n['name'] == option['name']; }) == 0) 
    {
      if (option['category'] == 'color') //clear color
            $scope.options.remove(function(n) { return n['category'] == 'color' });
      else if (option['category'] == 'wheel')  //clear wheel
          $scope.options.remove(function(n) { return n['category'] == 'wheel' });

      $scope.options.push(option);
    }

    $scope.updateTotal();

  };

  $scope.toggleEquipment = function(option) {
    if (($scope.options.count(function(n) { return n['name'] == option['name']; }) > 0))
      $scope.removeOption(option);
    else
      $scope.addOption(option);

    $scope.updateTotal();
  }

  $scope.removeOption = function(option) {
    $scope.options.remove(function(n) {
      return n['name'] == option['name']; 
    });
  };

}]);

carApp.directive('backImg', function(){
    return function(scope, element, attrs){
        attrs.$observe('backImg', function(value) {
            element.css({
                'background-image': 'url(' + value +')',
                'background-size' : 'cover'
            });
        });
    };
});