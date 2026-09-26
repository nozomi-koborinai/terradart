// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_endpoint`.
const Set<String> _awsRdsClusterEndpointSensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster_endpoint`.
final class AwsRdsClusterEndpoint extends Resource {
  static const String tfType = 'aws_rds_cluster_endpoint';

  AwsRdsClusterEndpoint({
    required super.localName,
    required TfArg<String> clusterEndpointIdentifier,
    required TfArg<String> clusterIdentifier,
    required TfArg<String> customEndpointType,
    TfArg<List<String>>? excludedMembers,
    TfArg<String>? region,
    TfArg<List<String>>? staticMembers,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_endpoint_identifier': clusterEndpointIdentifier,
           'cluster_identifier': clusterIdentifier,
           'custom_endpoint_type': customEndpointType,
           if (excludedMembers != null) 'excluded_members': excludedMembers,
           if (region != null) 'region': region,
           if (staticMembers != null) 'static_members': staticMembers,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');
}
