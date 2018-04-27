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
	  "objectid" : "1234"
      }, {
	  "objectid" : "5678"
      } ];

      var thyroid = {};
      if(keyword == "thyroid") {
	  thyroid['application/json'] = [ {
	      "objectid" : "1234",
	      "keywords" : "thyroid"
	  }, {
	      "objectid" : "5678",
	      "keywords" : "thyroid"
	  } ];
      }
      
      if (Object.keys(thyroid).length > 0) {
	  resolve(thyroid[Object.keys(thyroid)[0]]);
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

      var objs1234 = {};
      objs1234['application/json'] = {
          "license" : "cc0 Attribution v4.0 International",
          "keywords" : "thyroid",
          "contact" : "Jane Doe",
          "derived_from" : "1111",
          "persistence" : "/persistence.html",
          "cited_by" : "1011,1213",
          "object_schema" : "some schema",
          "version" : "prototype"
      };
      
      var objs5678 = {};
      objs5678['application/json'] = {
          "license" : "GPL v3",
          "keywords" : "thyroid",
          "contact" : "Joe Smith",
          "derived_from" : "2222",
          "persistence" : "/persistence.html",
          "cited_by" : "1011,1213",
          "object_schema" : "some schema",
          "version" : "prototype"
      };
      
      if (Object.keys(objs1234).length > 0 ) {
	  if(objectid == "1234") {
	      resolve(objs1234[Object.keys(objs1234)[0]]);
	  }
	  if(objectid == "5678") {
	      resolve(objs5678[Object.keys(objs1234)[0]]);
	  }
    } else {
	resolve(examples[Object.keys(examples)[0]]);
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
      
      var cfg = require('../config-repo.json')
      var repo = {};
      repo['application/json']={
	  "contact_name" : cfg.contact_name,
	  "repo_license_name" : cfg.repo_license_name,
	  "contact_form" : cfg.contact_form,
	  "manifest" : cfg.manifest,
	  "terms_of_service" : cfg.terms_of_service,
	  "landing_page" : cfg.landing_page,
	  "supported_scoring_engines" : cfg.supported_scoring_engines,
	  "repo_license_URL" : cfg.repo_license_URL,
	  "contact_email" : cfg.contact_email
      };
      
      if (Object.keys(repo).length > 0) {
	  resolve(repo[Object.keys(repo)[0]]);
      } else {
	  resolve(examples[Object.keys(examples)[0]]);
      }
  });
}

