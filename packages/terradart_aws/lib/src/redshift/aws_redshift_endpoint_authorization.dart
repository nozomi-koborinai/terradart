// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_endpoint_authorization`.
const Set<String> _awsRedshiftEndpointAuthorizationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_endpoint_authorization`.
final class AwsRedshiftEndpointAuthorization extends Resource {
  static const String tfType = 'aws_redshift_endpoint_authorization';

  AwsRedshiftEndpointAuthorization({
    required super.localName,
    required TfArg<String> account,
    required TfArg<String> clusterIdentifier,
    TfArg<bool>? forceDelete,
    TfArg<String>? region,
    TfArg<List<String>>? vpcIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account': account,
           'cluster_identifier': clusterIdentifier,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (region != null) 'region': region,
           if (vpcIds != null) 'vpc_ids': vpcIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEndpointAuthorizationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_all_vpcs` attribute.
  TfRef<bool> get allowedAllVpcs =>
      TfRef.attribute<bool>(this, 'allowed_all_vpcs');

  /// Reference to `endpoint_count` attribute.
  TfRef<num> get endpointCount => TfRef.attribute<num>(this, 'endpoint_count');

  /// Reference to `grantee` attribute.
  TfRef<String> get grantee => TfRef.attribute<String>(this, 'grantee');

  /// Reference to `grantor` attribute.
  TfRef<String> get grantor => TfRef.attribute<String>(this, 'grantor');
}
