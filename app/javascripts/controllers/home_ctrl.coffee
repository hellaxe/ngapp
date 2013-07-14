myApp.controller('HomeCtrl', ($scope) ->
  $scope.list = [
    name: 'lol'
    age: 19
  ,
    name: 'John'
    age: 22
  ]

  clearInput = ->
    $scope.name = ''
    $scope.age = ''

  $scope.addEntry = ->
    $scope.list.push({name: $scope.name, age: $scope.age})
    clearInput()

  $scope.deleteEntry = (entry) ->
    $scope.list.splice $scope.list.indexOf(entry), 1
)