myApp.controller('GalleryCtrl', ($scope, $dialog) ->
  $scope.images = [ {
    id: 1
    url: 'public/images/eve.jpg'
    name: 'Evelynn' }
  {
    id: 2
    url: 'public/images/jax.jpg'
    name: 'Jax' }
  {
    id: 3
    url: 'public/images/kat.jpg'
    name: 'Katarina' }
  {
    id: 4
    url: 'public/images/xin.jpg'
    name: 'Xin Zhao' }
  {
    id: 5
    url: 'public/images/yi.jpg'
    name: 'Master Yi' }
  ]

  $scope.showImage = (image) ->
    $scope.opts = {
      backdrop: true,
      keyboard: true,
      dialogFade: true
      backdropClick: true,
      templateUrl:  'app/templates/gallery_image.html',
      controller: 'GalleryImageCtrl',
    }
    resolvedData = {
      resolve: {
        image: () ->
          image
      }
    }
    opts = angular.extend($scope.opts, resolvedData)
    d = $dialog.dialog(opts)
    d.open()
    


).controller('GalleryImageCtrl', ($scope, dialog, image) ->
  $scope.image = image
)