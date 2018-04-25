'use strict';


/**
 * Gets some objects
 * Returns a list containing all objects matching a keyword. The list supports paging.
 *
 * keyword String chosen from the manifest at random (optional)
 * pageSize Integer Number of objects returned (optional)
 * pageNumber Integer Page number (optional)
 * returns List
 **/
exports.objectsGET = function(keyword,pageSize,pageNumber) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "total_objects" : 0
}, {
  "total_objects" : 0
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * metadata for objectid
 * get the metadata for the specified object
 *
 * objectid String a unique id for the object
 * returns FAIRObject
 **/
exports.objectsObjectidGET = function(objectid) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "license" : "license",
  "keywords" : "keywords",
  "contact" : "contact",
  "derived_from" : "derived_from",
  "persistence" : "persistence",
  "cited_by" : "cited_by",
  "object_schema" : "object_schema",
  "version" : "version"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * FAIR repo information
 * provides rich information about the FAIR repo housing the data objects
 *
 * scoringEngine String To which FAIRness scoringEngine the response must be target
 * returns FAIRRepo
 **/
exports.repoInfoGET = function(scoringEngine) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "contact_name" : "contact_name",
  "repo_license_name" : "repo_license_name",
  "contact_form" : "contact_form",
  "manifest" : "manifest",
  "terms_of_service" : "terms_of_service",
  "landing_page" : "landing_page",
  "supported_scoring_engines" : "supported_scoring_engines",
  "repo_license_URL" : "repo_license_URL",
  "contact_email" : "contact_email"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}

