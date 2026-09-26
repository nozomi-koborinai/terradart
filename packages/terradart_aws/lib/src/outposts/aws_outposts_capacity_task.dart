// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_capacity_task`.
const Set<String> _awsOutpostsCapacityTaskSensitive = <String>{};

/// Typed helper for the `instance_pool` block of
/// `aws_outposts_capacity_task` (derived from provider schema).
@immutable
final class OutpostsCapacityTaskInstancePool {
  const OutpostsCapacityTaskInstancePool({
    required this.count,
    required this.instanceType,
  });

  final TfArg<num> count;

  final TfArg<String> instanceType;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// Typed helper for the `instances_to_exclude` block of
/// `aws_outposts_capacity_task` (derived from provider schema).
@immutable
final class OutpostsCapacityTaskInstancesToExclude {
  const OutpostsCapacityTaskInstancesToExclude({required this.instances});

  final TfArg<List<Object?>> instances;

  Map<String, Object?> encode() => {'instances': instances.toTfJson()};
}

/// Factory wrapper for `aws_outposts_capacity_task`.
final class AwsOutpostsCapacityTask extends Resource {
  static const String tfType = 'aws_outposts_capacity_task';

  AwsOutpostsCapacityTask({
    required super.localName,
    TfArg<String>? assetId,
    TfArg<String>? orderId,
    required TfArg<String> outpostIdentifier,
    TfArg<String>? region,
    TfArg<String>? taskActionOnBlockingInstances,
    List<OutpostsCapacityTaskInstancePool>? instancePool,
    List<OutpostsCapacityTaskInstancesToExclude>? instancesToExclude,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assetId != null) 'asset_id': assetId,
           if (orderId != null) 'order_id': orderId,
           'outpost_identifier': outpostIdentifier,
           if (region != null) 'region': region,
           if (taskActionOnBlockingInstances != null)
             'task_action_on_blocking_instances': taskActionOnBlockingInstances,
           if (instancePool != null)
             'instance_pool': TfArg.literal([
               for (final e in instancePool) e.encode(),
             ]),
           if (instancesToExclude != null)
             'instances_to_exclude': TfArg.literal([
               for (final e in instancesToExclude) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsCapacityTaskSensitive;

  /// Reference to `capacity_task_id` attribute.
  TfRef<String> get capacityTaskId =>
      TfRef.attribute<String>(this, 'capacity_task_id');

  /// Reference to `completion_date` attribute.
  TfRef<String> get completionDate =>
      TfRef.attribute<String>(this, 'completion_date');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
