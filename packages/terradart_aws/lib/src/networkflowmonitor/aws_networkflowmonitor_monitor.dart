// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkflowmonitor_monitor`.
const Set<String> _awsNetworkflowmonitorMonitorSensitive = <String>{};

/// Typed helper for the `local_resource` block of
/// `aws_networkflowmonitor_monitor` (derived from provider schema).
@immutable
final class NetworkflowmonitorMonitorLocalResource {
  const NetworkflowmonitorMonitorLocalResource({
    required this.identifier,
    required this.type,
  });

  final TfArg<String> identifier;

  final NetworkflowmonitorMonitorLocalResourceType type;

  @internal
  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkflowmonitorMonitorLocalResourceType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkflowmonitorMonitorLocalResourceType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkflowmonitorMonitorLocalResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkflowmonitorMonitorLocalResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsEc2Vpc = NetworkflowmonitorMonitorLocalResourceType._(
    TfArgLiteral('AWS::EC2::VPC'),
  );
  static const awsAvailabilityzone =
      NetworkflowmonitorMonitorLocalResourceType._(
        TfArgLiteral('AWS::AvailabilityZone'),
      );
  static const awsEc2Subnet = NetworkflowmonitorMonitorLocalResourceType._(
    TfArgLiteral('AWS::EC2::Subnet'),
  );
  static const awsRegion = NetworkflowmonitorMonitorLocalResourceType._(
    TfArgLiteral('AWS::Region'),
  );
  static const awsEksCluster = NetworkflowmonitorMonitorLocalResourceType._(
    TfArgLiteral('AWS::EKS::Cluster'),
  );

  static const List<NetworkflowmonitorMonitorLocalResourceType> values = [
    awsEc2Vpc,
    awsAvailabilityzone,
    awsEc2Subnet,
    awsRegion,
    awsEksCluster,
  ];
}

/// Typed helper for the `remote_resource` block of
/// `aws_networkflowmonitor_monitor` (derived from provider schema).
@immutable
final class NetworkflowmonitorMonitorRemoteResource {
  const NetworkflowmonitorMonitorRemoteResource({
    required this.identifier,
    required this.type,
  });

  final TfArg<String> identifier;

  final NetworkflowmonitorMonitorRemoteResourceType type;

  @internal
  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkflowmonitorMonitorRemoteResourceType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkflowmonitorMonitorRemoteResourceType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkflowmonitorMonitorRemoteResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkflowmonitorMonitorRemoteResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsEc2Vpc = NetworkflowmonitorMonitorRemoteResourceType._(
    TfArgLiteral('AWS::EC2::VPC'),
  );
  static const awsAvailabilityzone =
      NetworkflowmonitorMonitorRemoteResourceType._(
        TfArgLiteral('AWS::AvailabilityZone'),
      );
  static const awsEc2Subnet = NetworkflowmonitorMonitorRemoteResourceType._(
    TfArgLiteral('AWS::EC2::Subnet'),
  );
  static const awsAwsservice = NetworkflowmonitorMonitorRemoteResourceType._(
    TfArgLiteral('AWS::AWSService'),
  );
  static const awsRegion = NetworkflowmonitorMonitorRemoteResourceType._(
    TfArgLiteral('AWS::Region'),
  );

  static const List<NetworkflowmonitorMonitorRemoteResourceType> values = [
    awsEc2Vpc,
    awsAvailabilityzone,
    awsEc2Subnet,
    awsAwsservice,
    awsRegion,
  ];
}

/// Factory wrapper for `aws_networkflowmonitor_monitor`.
final class AwsNetworkflowmonitorMonitor extends Resource {
  static const String tfType = 'aws_networkflowmonitor_monitor';

  AwsNetworkflowmonitorMonitor(
    super.localName, {
    required TfArg<String> monitorName,
    TfArg<String>? region,
    required TfArg<String> scopeArn,
    TfArg<Map<String, String>>? tags,
    List<NetworkflowmonitorMonitorLocalResource>? localResource,
    List<NetworkflowmonitorMonitorRemoteResource>? remoteResource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'monitor_name': monitorName,
           'region': ?region,
           'scope_arn': scopeArn,
           'tags': ?tags,
           if (localResource != null)
             'local_resource': TfArg.literal([
               for (final e in localResource) e.encode(),
             ]),
           if (remoteResource != null)
             'remote_resource': TfArg.literal([
               for (final e in remoteResource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkflowmonitorMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkflowmonitorMonitor>`.
  RefTo<AwsNetworkflowmonitorMonitor> get ref => RefTo.of(this);

  /// Reference to `monitor_arn` attribute.
  TfRef<String> get monitorArn => TfRef.attribute<String>(this, 'monitor_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `monitor_name` attribute.
  TfRef<String> get monitorName =>
      TfRef.attribute<String>(this, 'monitor_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scope_arn` attribute.
  TfRef<String> get scopeArn => TfRef.attribute<String>(this, 'scope_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
