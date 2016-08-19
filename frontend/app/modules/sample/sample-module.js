(function() {
  'use strict';
  angular
    .module('note-taker.sample', [])
    .config(['$stateProvider', Routes]);

    function Routes($stateProvider) {
      $stateProvider.state('note-taker.sample', {
          url: '/',
          templateUrl: 'sample.html',
          controller: 'SampleController',
          controllerAs: 'vm'
      }).state('note-taker.sample-2', {
          url: '/sample-2',
          templateUrl: 'sample-2.html',
          controller: 'SampleController',
          controllerAs: 'vm'
      });
    }
})();
