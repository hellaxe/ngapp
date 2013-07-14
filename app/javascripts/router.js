// Generated by CoffeeScript 1.6.3
myApp.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
    return $routeProvider.when('/', {
      templateUrl: 'app/templates/home.html',
      controller: 'HomeCtrl'
    }).when('/gallery', {
      templateUrl: 'app/templates/gallery.html',
      controller: 'GalleryCtrl'
    }).when('/gallery/:imageId', {
      templateUrl: 'app/templates/gallery_image.html'
    }).when('/entries', {
      templateUrl: 'app/templates/entries.html',
      controller: 'HomeCtrl'
    }).when('/404', {
      templateUrl: 'app/templates/error_404.html',
      controller: 'ErrorCtrl'
    }).otherwise({
      redirectTo: '/404'
    });
  }
]);