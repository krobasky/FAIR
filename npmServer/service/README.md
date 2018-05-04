# Quick start to plumb up other APIs
Here's an example of how to connect this API to a GA4GH DOS API on your server (uset 'user' and 'pass' elsewhere)

```
/**
 * metadata for objectid
 * get the metadata for the specified object
 *
 * objectid String a unique id for the object
 * returns FAIRObject
 **/
exports.objectsObjectidGET = function(objectid) {
  return new Promise(function(resolve, reject) {

      var dosobj = {};
      const http = require('http');
      http.get('http://'+user+':'+pass+'@'+ip+'/ga4gh/dos/v1/dataobjects/'+objectid, (resp) => {
          let data = '';

          // A chunk of data has been recieved.
          resp.on('data', (chunk) => {
              data += chunk;
          });

          // The whole response has been received. Print out the result.
          resp.on('end', () => {
              var jurls = JSON.parse(data).data_object;
              // xxx if the obj isn't found the whole server crashes
              if (typeof jurls.urls !== "undefined" && Object.keys(jurls.urls).length > 0) {
                  var jobj = jurls.urls[0].user_metadata;
                  dosobj['application/json'] = {
                      "license" : jobj.license,
                      "keywords" : jobj.keywords,
                      "contact" : jobj.contact,
                      "derived_from" : jobj.derived_from,
                      "persistence" : jobj.persistence,
                      "cited_by" : jobj.cited_by,
                      "object_schema" : jobj.object_schema,
                      "version" : jobj.version
                  };

                  resolve(dosobj[Object.keys(dosobj)[0]]);
              }
          });

      }).on("error", (err) => {
          console.log("Error ON HITTING DOS API: " + err.message);
      });

  });
}
```
