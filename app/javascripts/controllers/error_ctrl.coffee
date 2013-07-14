myApp.controller('ErrorCtrl', ($scope) ->
	$scope.back = () ->
		window.history.back()
		console.log(window.history.back())
)