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
    if (iops != null) 'iops': iops!.toTfJson(),
    'size': size.toTfJson(),
    'type': type.toTfJson(),
    if (volumesPerInstance != null)
      'volumes_per_instance': volumesPerInstance!.toTfJson(),
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
           if (autoscalingPolicy != null)
             'autoscaling_policy': autoscalingPolicy,
           if (bidPrice != null) 'bid_price': bidPrice,
           'cluster_id': clusterId,
           if (configurationsJson != null)
             'configurations_json': configurationsJson,
           if (ebsOptimized != null) 'ebs_optimized': ebsOptimized,
           if (instanceCount != null) 'instance_count': instanceCount,
           'instance_type': instanceType,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (ebsConfig != null)
             'ebs_config': TfArg.literal([
               for (final e in ebsConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrInstanceGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `running_instance_count` attribute.
  TfRef<num> get runningInstanceCount =>
      TfRef.attribute<num>(this, 'running_instance_count');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
