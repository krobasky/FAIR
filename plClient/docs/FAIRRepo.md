# WWW::SwaggerClient::Object::FAIRRepo

## Load the model package
```perl
use WWW::SwaggerClient::Object::FAIRRepo;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_name** | **string** | name of the person or organization to contact regarding objects in this repo | [optional] 
**contact_email** | **string** | the email of the individual or helpdesk to contact for this repo (if not form is given) | [optional] 
**contact_form** | **string** | the form to use to contact the individual or helpdesk for this repo (if no email is given) | [optional] 
**landing_page** | **string** |  | [optional] 
**terms_of_service** | **string** | terms of use, including disclaimers, privacy notices, limited liability | [optional] 
**repo_license_name** | **string** | this need not be specified if licenses are given at the collection and file level. | [optional] 
**repo_license_url** | **string** | this need not be specified if licenses are given at the collection and file level. | [optional] 
**supported_scoring_engines** | **string** | must support at least \&quot;Prototype\&quot;, version \&quot;v1.0\&quot; | [optional] 
**manifest** | **string** | exhaustive list that can be sampled for testing. Format determined by scoring engine. Maps object ids to license type and (accessibility) and maps object ids to ontology/keywords. Ontologies must be computer-readable so they are accessible from the web | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


