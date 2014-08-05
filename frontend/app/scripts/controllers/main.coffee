'use strict'

angular.module('profileFeApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.activateSideNavEl = (el) ->
    	console.log(el)
    	$scope.activeSideEl = el
