'use strict'

# TODO start creating the Frontend App

angular
.module('profileFeApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
])
.config ($routeProvider) ->
    $routeProvider
        .when '/',
            templateUrl: 'views/main.html'
            controller: 'MainCtrl'
        .otherwise
            #redirectTo: '/'
            templateUrl: '404.html'