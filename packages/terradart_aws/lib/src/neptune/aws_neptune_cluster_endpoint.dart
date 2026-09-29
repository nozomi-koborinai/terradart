// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster_endpoint`.
const Set<String> _awsNeptuneClusterEndpointSensitive = <String>{};

/// Neptune Cluster Endpoint Endpoint enum for `endpoint_type`.
enum NeptuneClusterEndpointEndpointType implements TerraformEnum {
  any('ANY'),
  reader('READER'),
  writer('WRITER');

  const NeptuneClusterEndpointEndpointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_neptune_cluster_endpoint`.
final class AwsNeptuneClusterEndpoint extends Resource {
  static const String tfType = 'aws_neptune_cluster_endpoint';

  AwsNeptuneClusterEndpoint({
    required super.localName,
    required TfArg<String> clusterEndpointIdentifier,
    required TfArg<String> clusterIdentifier,
    required TfArg<NeptuneClusterEndpointEndpointType> endpointType,
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
           'endpoint_type': endpointType,
           'excluded_members': ?excludedMembers,
           'region': ?region,
           'static_members': ?staticMembers,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneClusterEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptuneClusterEndpoint>`.
  RefTo<AwsNeptuneClusterEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');
}
