// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoverycontrolconfig_cluster`.
const Set<String> _awsRoute53recoverycontrolconfigClusterSensitive = <String>{};

/// Route53recoverycontrolconfig Cluster Network enum for `network_type`.
extension type const Route53recoverycontrolconfigClusterNetworkType._(
  TfArg<String> _
) implements TfArg<String> {
  Route53recoverycontrolconfigClusterNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  Route53recoverycontrolconfigClusterNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53recoverycontrolconfigClusterNetworkType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = Route53recoverycontrolconfigClusterNetworkType._(
    TfArgLiteral('IPV4'),
  );
  static const dualstack = Route53recoverycontrolconfigClusterNetworkType._(
    TfArgLiteral('DUALSTACK'),
  );

  static const List<Route53recoverycontrolconfigClusterNetworkType> values = [
    ipv4,
    dualstack,
  ];
}

/// Factory wrapper for `aws_route53recoverycontrolconfig_cluster`.
final class AwsRoute53recoverycontrolconfigCluster extends Resource {
  static const String tfType = 'aws_route53recoverycontrolconfig_cluster';

  AwsRoute53recoverycontrolconfigCluster(
    super.localName, {
    required TfArg<String> name,
    Route53recoverycontrolconfigClusterNetworkType? networkType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'network_type': ?networkType, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoverycontrolconfigClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53recoverycontrolconfigCluster>`.
  RefTo<AwsRoute53recoverycontrolconfigCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get clusterEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_endpoints');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
