myApp.controller('ChampionsIndexCtrl', ($scope, championService) ->
  $scope.sortOrder = 'name'
  $scope.champions = championService.champions

)