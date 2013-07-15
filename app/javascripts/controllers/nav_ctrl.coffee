myApp.controller('NavCtrl', ['$scope','$location', ($scope, $location) ->
  $scope.items = [
    {url: '#/', name: 'Home', path: '/', class: ''}
    {url: '#/champions', name: 'Champions', path: 'champions', class: ''}
    {url: '#/gallery', name: 'Gallery', path: 'gallery', class: ''}
    {url: '#/about', name: 'About', path: 'about', class: ''}
  ]

  $scope.setActive = () ->
    currentRoute = $location.path().substring(1) || '/'
    $($scope.items).each (i,v) ->
      v.class = if v.path is currentRoute then 'active' else ''
    
  $scope.$on("$routeChangeSuccess", ($currentRoute, $previousRoute) ->
    $scope.setActive()
  )
])