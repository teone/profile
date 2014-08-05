#@method MainCtrl
#MainCtrl Docs
'use strict'

angular.module('profileFeApp')
.controller 'MainCtrl', ($scope) ->
	# @method #activateSideNavEl('el')
	# Activate a SideNav element.
	#
	# @example Move an animal
	#   activateSideNavEl('elementId')
	#
	# @param [String] Element id to be activated trought ng-class
	$scope.activateSideNavEl = (el) ->
		$scope.activeSideEl = el
