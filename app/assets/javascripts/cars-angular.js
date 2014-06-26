var carApp = angular.module('carApp', []);

carApp.controller('OptionsListCtrl',['$scope', function($scope) {
  $scope.total = 0.0;
  $scope.colors = [];
  $scope.wheels = [];
  $scope.interiors = [];
  $scope.equips = [];
  $scope.colorSelected = 0;
  $scope.wheelSelected = 0;
  $scope.interiorSelected = 0;
  $scope.viewPortSelected = "front";
  $scope.options = [];

  $scope.init = function(colors,wheels,interiors,equips) {
    $scope.colors = colors;
    $scope.wheels = wheels;
    $scope.interiors = interiors;
    $scope.equips = equips;
    $scope.options = [
      {'category':'base','name': 'Coupe Base Price', 'price': 22000.00},
      {'category':'fee','name': 'Destination Fee', 'price': 850.00},
      $scope.colors[$scope.colorSelected],
      $scope.wheels[$scope.wheelSelected],
      $scope.interiors[$scope.interiorSelected]   
    ];
    $scope.updateTotal();
  };

  $scope.toFrontView = function() {
    if ($scope.viewPortSelected == 'interior')
      $scope.viewPortSelected = 'front';
  }

  $scope.viewportBackground = function() {
    if($scope.viewPortSelected == "front")
      return {
        borderColor: $scope.colors[$scope.colorSelected].borderColor,
        background: [
                     'url('+$scope.colors[$scope.colorSelected].viewStripeFront+') 45% 40% no-repeat', 
                     'url('+$scope.colors[$scope.colorSelected].viewFront+') 45% 40% no-repeat',
                     'url('+$scope.wheels[$scope.wheelSelected].viewFront+') 45% 40% no-repeat',
                     'url(/assets/roof-black-front.png) 45% 40% no-repeat', 
                     'url(/assets/option-foglight-front.png) 45% 40% no-repeat',
                     'url(/assets/car-base-front.png) 45% 40% no-repeat',
                     'url(/assets/asphalt-front.png) 105% 45% no-repeat'
                    ],
        transition: 'border-color 1s ease'
      };
    else if($scope.viewPortSelected == "rear")
      return {
        borderColor: $scope.colors[$scope.colorSelected].borderColor,
        background: [
                     'url('+$scope.colors[$scope.colorSelected].viewStripeRear+') 45% 40% no-repeat', 
                     'url('+$scope.colors[$scope.colorSelected].viewRear+') 45% 40% no-repeat',
                     'url('+$scope.wheels[$scope.wheelSelected].viewRear+') 45% 40% no-repeat',
                     'url(/assets/roof-black-rear.png) 45% 40% no-repeat', 
                     'url(/assets/car-base-rear.png) 45% 40% no-repeat',
                     'url(/assets/asphalt-rear.png) 105% 45% no-repeat'
                    ],
        transition: 'border-color 1s ease' 
      };
    else if($scope.viewPortSelected == "interior")
      return {
        borderColor: $scope.colors[$scope.colorSelected].borderColor,
        background: [
                     'url('+$scope.interiors[$scope.interiorSelected].viewInt+') no-repeat',
                     'url(/assets/equip-stick-shifter.png) no-repeat',
                     'url(/assets/interior-radio.png) no-repeat',
                     'url(/assets/interior-black-trim-top.png) no-repeat',
                     'url(/assets/interior-black-trim.png) no-repeat',
                     'url(/assets/interior-black-console.png) no-repeat',
                     'url(/assets/interior-place-mats.png) no-repeat',
                     'url(/assets/interior-mask.png) no-repeat',
                     'url(/assets/interior-base.png) no-repeat'
                    ],
        transition: 'border-color 1s ease', 
        backgroundSize: 'cover'
      };
  };

  $scope.updateTotal = function() {
    var total = 0;
    for(i=0; i<$scope.options.length; i++) {
      total = total + $scope.options[i]['price'];
    }

    $scope.total = total;  
  };

  $scope.pickColor = function($index,option) {
    $scope.colorSelected = $index;

    if ($scope.options.count(function(n) { return n['name'] == option['name']; }) == 0) 
    {
      $scope.options.remove(function(n) { return n['category'] == 'color' });
      $scope.options.push(option);
    }
    $scope.updateTotal();
  };

  $scope.pickWheel = function($index,option) {
    $scope.wheelSelected = $index;

    if ($scope.options.count(function(n) { return n['name'] == option['name']; }) == 0) 
    {
      $scope.options.remove(function(n) { return n['category'] == 'wheel' });
      $scope.options.push(option);
    }
    $scope.updateTotal();
  };

  $scope.pickInterior = function($index,option) {
    $scope.interiorSelected = $index;

    if ($scope.options.count(function(n) { return n['name'] == option['name']; }) == 0) 
    {
      $scope.options.remove(function(n) { return n['category'] == 'interior' });
      $scope.options.push(option);
    }
    $scope.updateTotal();
  };

  $scope.toggleEquipment = function(option) {
    if ($scope.options.count(function(n) { return n['name'] == option['name']; }) > 0)
      $scope.removeOption(option);
    else
      $scope.options.push(option);

    $scope.updateTotal();
  };

  $scope.hasEquipment = function(option) {
      return ($scope.options.count(function(n) { return n['name'] == option['name']; }) > 0);
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