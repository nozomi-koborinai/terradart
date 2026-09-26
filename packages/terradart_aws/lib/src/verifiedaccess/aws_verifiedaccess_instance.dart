// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_instance`.
const Set<String> _awsVerifiedaccessInstanceSensitive = <String>{};

/// Factory wrapper for `aws_verifiedaccess_instance`.
final class AwsVerifiedaccessInstance extends Resource {
  static const String tfType = 'aws_verifiedaccess_instance';

  AwsVerifiedaccessInstance({
    required super.localName,
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
           if (cidrEndpointsCustomSubdomain != null)
             'cidr_endpoints_custom_subdomain': cidrEndpointsCustomSubdomain,
           if (description != null) 'description': description,
           if (fipsEnabled != null) 'fips_enabled': fipsEnabled,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedaccessInstanceSensitive;

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
}
