(function() {
  angular
    .module('note-taker.sample')
    .service('SampleService', ['$http', 'config', Service]);

  function Service($http, config) {
    var service = this;
    service.makeCall = function() {
      return $http.get('data.json').then(function(response) {
        return response.data;
      });
    };

    service.makeAPICall = function() {
      return $http.get(config.apiHost + '/').then(function(response) {
        return response.data;
      });
    };
    return service;
  }
})();
