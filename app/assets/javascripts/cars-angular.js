var carApp = angular.module('carApp', []);

carApp.controller('OptionsListCtrl',['$scope', function($scope) {
  $scope.total = 0.0;
  $scope.colors = [];
  $scope.wheels = [ {'category':'wheel','name':'Silver 7-Hole','price':0.00, 'viewFront':'/assets/wheels-7hole-front.png'} ];
  $scope.colorSelected = 0;
  $scope.wheelSelected = 0;
  $scope.viewPortSelected = "front";
  // $scope.viewportBackground = "";
  // $scope.viewportBackground = "{'background': 'url(/assets/stripe-red-front.png) 45% 30% no-repeat, url(/assets/roof-black-front.png) 45% 30% no-repeat, url(/assets/color-red-front.png) 45% 30% no-repeat, url(/assets/wheels-7hole-front.png) 45% 30% no-repeat, url(/assets/option-foglight-front.png) 45% 30% no-repeat, url(/assets/car-base-front.png) 45% 30% no-repeat, url(/assets/asphalt-front.png) 105% 45% no-repeat'}";

  $scope.options = [
    {'category':'base','name': 'Coupe Base Price', 'price': 22000.00},
    {'category':'fee','name': 'Destination Fee', 'price': 850.00},
    {'category':'wheel','name': 'Silver Heli Spoke', 'price': 0.00},
    {'category':'option','name': 'Six-Speed Automatic', 'price': 1250.00},  
    {'category':'color','name': 'Blazing Red', 'price': 200.00}   
  ];

  $scope.init = function(colors) {
    $scope.updateTotal();
    $scope.colors = colors;
  };

  $scope.viewportBackground = function() {
    return {
      background: [
                   'url('+$scope.colors[$scope.colorSelected].viewStripe+') 45% 30% no-repeat', 
                   'url('+$scope.colors[$scope.colorSelected].viewFront+') 45% 30% no-repeat',
                   'url('+$scope.wheels[$scope.wheelSelected].viewFront+') 45% 30% no-repeat',
                   'url(/assets/roof-black-front.png) 45% 30% no-repeat', 
                   'url(/assets/option-foglight-front.png) 45% 30% no-repeat',
                   'url(/assets/car-base-front.png) 45% 30% no-repeat',
                   'url(/assets/asphalt-front.png) 105% 45% no-repeat'
                  ] 
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

  $scope.toggleEquipment = function(option) {
    if (($scope.options.count(function(n) { return n['name'] == option['name']; }) > 0))
      $scope.removeOption(option);
    else
      $scope.addOption(option);

    $scope.updateTotal();
  };

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

carApp.directive("myStyle", function (){
    return {
        restrict: 'A',
        link: function(scope, element, attrs)
        {
            var el   = element[0],
                attr = el.getAttribute('style');

            el.setAttribute('style', attr);

            // We need to watch for changes in the style in case required data is not yet ready when compiling
            attrs.$observe('style', function (){
                attr = el.getAttribute('style');

                if(attr)
                {
                    el.setAttribute('style', attr);
                }
            });
        }
    };
});