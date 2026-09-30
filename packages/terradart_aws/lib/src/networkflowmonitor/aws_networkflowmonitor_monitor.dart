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

  final TfArg<NetworkflowmonitorMonitorLocalResourceType> type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkflowmonitorMonitorLocalResourceType implements TerraformEnum {
  awsEc2Vpc('AWS::EC2::VPC'),
  awsAvailabilityzone('AWS::AvailabilityZone'),
  awsEc2Subnet('AWS::EC2::Subnet'),
  awsRegion('AWS::Region'),
  awsEksCluster('AWS::EKS::Cluster');

  const NetworkflowmonitorMonitorLocalResourceType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<NetworkflowmonitorMonitorRemoteResourceType> type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkflowmonitorMonitorRemoteResourceType implements TerraformEnum {
  awsEc2Vpc('AWS::EC2::VPC'),
  awsAvailabilityzone('AWS::AvailabilityZone'),
  awsEc2Subnet('AWS::EC2::Subnet'),
  awsAwsservice('AWS::AWSService'),
  awsRegion('AWS::Region');

  const NetworkflowmonitorMonitorRemoteResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_networkflowmonitor_monitor`.
final class AwsNetworkflowmonitorMonitor extends Resource {
  static const String tfType = 'aws_networkflowmonitor_monitor';

  AwsNetworkflowmonitorMonitor({
    required super.localName,
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
  TfRef<String> get monitorNameRef =>
      TfRef.attribute<String>(this, 'monitor_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `scope_arn` attribute.
  TfRef<String> get scopeArnRef => TfRef.attribute<String>(this, 'scope_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
