# WWW::SwaggerClient::DefaultApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::DefaultApi;
```

All URIs are relative to *https://virtserver.swaggerhub.com/krobasky/proto-FAIR/prototype*

Method | HTTP request | Description
------------- | ------------- | -------------
[**objects_get**](DefaultApi.md#objects_get) | **GET** /objects | Gets some objects
[**objects_objectid_get**](DefaultApi.md#objects_objectid_get) | **GET** /objects/{objectid} | metadata for objectid
[**repo_info_get**](DefaultApi.md#repo_info_get) | **GET** /repoInfo | FAIR repo information


# **objects_get**
> ARRAY[InlineResponse200] objects_get(keyword => $keyword, page_size => $page_size, page_number => $page_number)

Gets some objects

Returns a list containing all objects matching a keyword. The list supports paging.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::DefaultApi;
my $api_instance = WWW::SwaggerClient::DefaultApi->new(
);

my $keyword = 'keyword_example'; # string | chosen from the manifest at random
my $page_size = 56; # int | Number of objects returned
my $page_number = 56; # int | Page number

eval { 
    my $result = $api_instance->objects_get(keyword => $keyword, page_size => $page_size, page_number => $page_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->objects_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **string**| chosen from the manifest at random | [optional] 
 **page_size** | **int**| Number of objects returned | [optional] 
 **page_number** | **int**| Page number | [optional] 

### Return type

[**ARRAY[InlineResponse200]**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **objects_objectid_get**
> FAIRObject objects_objectid_get(objectid => $objectid)

metadata for objectid

get the metadata for the specified object

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::DefaultApi;
my $api_instance = WWW::SwaggerClient::DefaultApi->new(
);

my $objectid = 'objectid_example'; # string | a unique id for the object

eval { 
    my $result = $api_instance->objects_objectid_get(objectid => $objectid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->objects_objectid_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **objectid** | **string**| a unique id for the object | 

### Return type

[**FAIRObject**](FAIRObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repo_info_get**
> FAIRRepo repo_info_get(scoring_engine => $scoring_engine)

FAIR repo information

provides rich information about the FAIR repo housing the data objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::DefaultApi;
my $api_instance = WWW::SwaggerClient::DefaultApi->new(
);

my $scoring_engine = 'scoring_engine_example'; # string | To which FAIRness scoringEngine the response must be target

eval { 
    my $result = $api_instance->repo_info_get(scoring_engine => $scoring_engine);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->repo_info_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scoring_engine** | **string**| To which FAIRness scoringEngine the response must be target | 

### Return type

[**FAIRRepo**](FAIRRepo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

