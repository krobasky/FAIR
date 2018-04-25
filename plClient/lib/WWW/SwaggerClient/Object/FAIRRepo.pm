=begin comment

Prototype

Seed for discussion: can be implemented for asserting a repository is FAIR. Directories that contain lists of scored FAIR repositories can call this API on repos that implement it in order to automate some of the scoring process.

OpenAPI spec version: 0.0.2
Contact: krobasky@renci.org
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::FAIRRepo;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Prototype

Seed for discussion: can be implemented for asserting a repository is FAIR. Directories that contain lists of scored FAIR repositories can call this API on repos that implement it in order to automate some of the scoring process.

OpenAPI spec version: 0.0.2
Contact: krobasky@renci.org
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'FAIRRepo',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'contact_name' => {
    	datatype => 'string',
    	base_name => 'contact_name',
    	description => 'name of the person or organization to contact regarding objects in this repo',
    	format => '',
    	read_only => '',
    		},
    'contact_email' => {
    	datatype => 'string',
    	base_name => 'contact_email',
    	description => 'the email of the individual or helpdesk to contact for this repo (if not form is given)',
    	format => '',
    	read_only => '',
    		},
    'contact_form' => {
    	datatype => 'string',
    	base_name => 'contact_form',
    	description => 'the form to use to contact the individual or helpdesk for this repo (if no email is given)',
    	format => '',
    	read_only => '',
    		},
    'landing_page' => {
    	datatype => 'string',
    	base_name => 'landing_page',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'terms_of_service' => {
    	datatype => 'string',
    	base_name => 'terms_of_service',
    	description => 'terms of use, including disclaimers, privacy notices, limited liability',
    	format => '',
    	read_only => '',
    		},
    'repo_license_name' => {
    	datatype => 'string',
    	base_name => 'repo_license_name',
    	description => 'this need not be specified if licenses are given at the collection and file level.',
    	format => '',
    	read_only => '',
    		},
    'repo_license_url' => {
    	datatype => 'string',
    	base_name => 'repo_license_URL',
    	description => 'this need not be specified if licenses are given at the collection and file level.',
    	format => '',
    	read_only => '',
    		},
    'supported_scoring_engines' => {
    	datatype => 'string',
    	base_name => 'supported_scoring_engines',
    	description => 'must support at least \&quot;Prototype\&quot;, version \&quot;v1.0\&quot;',
    	format => '',
    	read_only => '',
    		},
    'manifest' => {
    	datatype => 'string',
    	base_name => 'manifest',
    	description => 'exhaustive list that can be sampled for testing. Format determined by scoring engine. Maps object ids to license type and (accessibility) and maps object ids to ontology/keywords. Ontologies must be computer-readable so they are accessible from the web',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'contact_name' => 'string',
    'contact_email' => 'string',
    'contact_form' => 'string',
    'landing_page' => 'string',
    'terms_of_service' => 'string',
    'repo_license_name' => 'string',
    'repo_license_url' => 'string',
    'supported_scoring_engines' => 'string',
    'manifest' => 'string'
} );

__PACKAGE__->attribute_map( {
    'contact_name' => 'contact_name',
    'contact_email' => 'contact_email',
    'contact_form' => 'contact_form',
    'landing_page' => 'landing_page',
    'terms_of_service' => 'terms_of_service',
    'repo_license_name' => 'repo_license_name',
    'repo_license_url' => 'repo_license_URL',
    'supported_scoring_engines' => 'supported_scoring_engines',
    'manifest' => 'manifest'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
