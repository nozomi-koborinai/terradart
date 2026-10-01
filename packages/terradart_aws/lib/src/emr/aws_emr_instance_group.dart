// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_instance_group`.
const Set<String> _awsEmrInstanceGroupSensitive = <String>{};

/// Typed helper for the `ebs_config` block of
/// `aws_emr_instance_group` (derived from provider schema).
@immutable
final class EmrInstanceGroupEbsConfig {
  const EmrInstanceGroupEbsConfig({
    this.iops,
    required this.size,
    required this.type,
    this.volumesPerInstance,
  });

  final TfArg<num>? iops;

  final TfArg<num> size;

  final TfArg<String> type;

  final TfArg<num>? volumesPerInstance;

  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'size': size.toTfJson(),
    'type': type.toTfJson(),
    'volumes_per_instance': ?volumesPerInstance?.toTfJson(),
  };
}

/// Factory wrapper for `aws_emr_instance_group`.
final class AwsEmrInstanceGroup extends Resource {
  static const String tfType = 'aws_emr_instance_group';

  AwsEmrInstanceGroup({
    required super.localName,
    TfArg<String>? autoscalingPolicy,
    TfArg<String>? bidPrice,
    required TfArg<String> clusterId,
    TfArg<String>? configurationsJson,
    TfArg<bool>? ebsOptimized,
    TfArg<num>? instanceCount,
    required TfArg<String> instanceType,
    TfArg<String>? name,
    TfArg<String>? region,
    List<EmrInstanceGroupEbsConfig>? ebsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_policy': ?autoscalingPolicy,
           'bid_price': ?bidPrice,
           'cluster_id': clusterId,
           'configurations_json': ?configurationsJson,
           'ebs_optimized': ?ebsOptimized,
           'instance_count': ?instanceCount,
           'instance_type': instanceType,
           'name': ?name,
           'region': ?region,
           if (ebsConfig != null)
             'ebs_config': TfArg.literal([
               for (final e in ebsConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrInstanceGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrInstanceGroup>`.
  RefTo<AwsEmrInstanceGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `running_instance_count` attribute.
  TfRef<num> get runningInstanceCount =>
      TfRef.attribute<num>(this, 'running_instance_count');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `autoscaling_policy` attribute.
  TfRef<String> get autoscalingPolicy =>
      TfRef.attribute<String>(this, 'autoscaling_policy');

  /// Reference to `bid_price` attribute.
  TfRef<String> get bidPrice => TfRef.attribute<String>(this, 'bid_price');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `configurations_json` attribute.
  TfRef<String> get configurationsJson =>
      TfRef.attribute<String>(this, 'configurations_json');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
