(function() {
  'use strict';
  angular
    .module('note-taker.sample')
    .directive('sampleDirective', Directive);
  function Directive() {
    function Controller() {
      var vm = this;
    }

    return {
      restrict: 'EA',
      templateUrl: 'sample-directive.html',
      controller: [Controller],
      controllerAs: 'vm',
      bindToController: true,
      scope: {
        name: '='
      }
    };
  }
})();
