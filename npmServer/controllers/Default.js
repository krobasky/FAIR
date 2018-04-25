'use strict';

var utils = require('../utils/writer.js');
var Default = require('../service/DefaultService');

module.exports.objectsGET = function objectsGET (req, res, next) {
  var keyword = req.swagger.params['keyword'].value;
  var pageSize = req.swagger.params['pageSize'].value;
  var pageNumber = req.swagger.params['pageNumber'].value;
  Default.objectsGET(keyword,pageSize,pageNumber)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.objectsObjectidGET = function objectsObjectidGET (req, res, next) {
  var objectid = req.swagger.params['objectid'].value;
  Default.objectsObjectidGET(objectid)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.repoInfoGET = function repoInfoGET (req, res, next) {
  var scoringEngine = req.swagger.params['scoringEngine'].value;
  Default.repoInfoGET(scoringEngine)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
