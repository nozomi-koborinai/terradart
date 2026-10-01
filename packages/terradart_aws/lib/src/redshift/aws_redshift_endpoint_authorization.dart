// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_endpoint_authorization`.
const Set<String> _awsRedshiftEndpointAuthorizationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_endpoint_authorization`.
final class AwsRedshiftEndpointAuthorization extends Resource {
  static const String tfType = 'aws_redshift_endpoint_authorization';

  AwsRedshiftEndpointAuthorization(
    super.localName, {
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
           'force_delete': ?forceDelete,
           'region': ?region,
           'vpc_ids': ?vpcIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEndpointAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftEndpointAuthorization>`.
  RefTo<AwsRedshiftEndpointAuthorization> get ref => RefTo.of(this);

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

  /// Reference to `account` attribute.
  TfRef<String> get account => TfRef.attribute<String>(this, 'account');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc_ids` attribute.
  TfRef<List<String>> get vpcIds =>
      TfRef.attribute<List<String>>(this, 'vpc_ids');
}
