myApp.controller('NavCtrl', ['$scope','$location', ($scope, $location) ->
	$scope.items = [
		{url: '#/', name: 'Home', path: '/', class: ''}
		{url: '#/entries', name: 'Entries', path: 'entries', class: ''}
		{url: '#/gallery', name: 'Gallery', path: 'gallery', class: ''}
		{url: '#/about', name: 'About', path: 'about', class: ''}
	]

	$scope.setActive = () ->
		currentRoute = $location.path().substring(1) || '/'
		$($scope.items).each (i,v) ->
			if v.path is currentRoute
				v.class = 'active'
			else
				v.class = ''
		

	$scope.$on("$routeChangeSuccess", ($currentRoute, $previousRoute) ->
    $scope.setActive()
  )
])