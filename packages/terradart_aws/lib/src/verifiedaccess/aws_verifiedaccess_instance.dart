// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_instance`.
const Set<String> _awsVerifiedaccessInstanceSensitive = <String>{};

/// Factory wrapper for `aws_verifiedaccess_instance`.
final class AwsVerifiedaccessInstance extends Resource {
  static const String tfType = 'aws_verifiedaccess_instance';

  AwsVerifiedaccessInstance(
    super.localName, {
    TfArg<String>? cidrEndpointsCustomSubdomain,
    TfArg<String>? description,
    TfArg<bool>? fipsEnabled,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_endpoints_custom_subdomain': ?cidrEndpointsCustomSubdomain,
           'description': ?description,
           'fips_enabled': ?fipsEnabled,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedaccessInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVerifiedaccessInstance>`.
  RefTo<AwsVerifiedaccessInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `verified_access_trust_providers` attribute.
  TfRef<List<Map<String, Object?>>> get verifiedAccessTrustProviders =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'verified_access_trust_providers',
      );

  /// Reference to `cidr_endpoints_custom_subdomain` attribute.
  TfRef<String> get cidrEndpointsCustomSubdomain =>
      TfRef.attribute<String>(this, 'cidr_endpoints_custom_subdomain');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `fips_enabled` attribute.
  TfRef<bool> get fipsEnabled => TfRef.attribute<bool>(this, 'fips_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
