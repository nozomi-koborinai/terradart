// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster_endpoint`.
const Set<String> _awsNeptuneClusterEndpointSensitive = <String>{};

/// Neptune Cluster Endpoint enum for `endpoint_type`.
extension type const NeptuneClusterEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  NeptuneClusterEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  NeptuneClusterEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const NeptuneClusterEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const any = NeptuneClusterEndpointType._(TfArgLiteral('ANY'));
  static const reader = NeptuneClusterEndpointType._(TfArgLiteral('READER'));
  static const writer = NeptuneClusterEndpointType._(TfArgLiteral('WRITER'));

  static const List<NeptuneClusterEndpointType> values = [any, reader, writer];
}

/// Factory wrapper for `aws_neptune_cluster_endpoint`.
final class AwsNeptuneClusterEndpoint extends Resource {
  static const String tfType = 'aws_neptune_cluster_endpoint';

  AwsNeptuneClusterEndpoint(
    super.localName, {
    required TfArg<String> clusterEndpointIdentifier,
    required TfArg<String> clusterIdentifier,
    required NeptuneClusterEndpointType endpointType,
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

  /// Reference to `cluster_endpoint_identifier` attribute.
  TfRef<String> get clusterEndpointIdentifier =>
      TfRef.attribute<String>(this, 'cluster_endpoint_identifier');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `excluded_members` attribute.
  TfRef<List<String>> get excludedMembers =>
      TfRef.attribute<List<String>>(this, 'excluded_members');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `static_members` attribute.
  TfRef<List<String>> get staticMembers =>
      TfRef.attribute<List<String>>(this, 'static_members');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
