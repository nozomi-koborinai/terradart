// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_task_definition`.
const Set<String> _awsEcsTaskDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_ecs_task_definition`.
final class DataAwsEcsTaskDefinition extends Data {
  static const String tfType = 'aws_ecs_task_definition';

  DataAwsEcsTaskDefinition({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> taskDefinition,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'task_definition': taskDefinition,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsTaskDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_without_revision` attribute.
  TfRef<String> get arnWithoutRevision =>
      TfRef.attribute<String>(this, 'arn_without_revision');

  /// Reference to `container_definitions` attribute.
  TfRef<String> get containerDefinitions =>
      TfRef.attribute<String>(this, 'container_definitions');

  /// Reference to `cpu` attribute.
  TfRef<String> get cpu => TfRef.attribute<String>(this, 'cpu');

  /// Reference to `enable_fault_injection` attribute.
  TfRef<bool> get enableFaultInjection =>
      TfRef.attribute<bool>(this, 'enable_fault_injection');

  /// Reference to `ephemeral_storage` attribute.
  TfRef<List<Map<String, Object?>>> get ephemeralStorage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ephemeral_storage');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `ipc_mode` attribute.
  TfRef<String> get ipcMode => TfRef.attribute<String>(this, 'ipc_mode');

  /// Reference to `memory` attribute.
  TfRef<String> get memory => TfRef.attribute<String>(this, 'memory');

  /// Reference to `network_mode` attribute.
  TfRef<String> get networkMode =>
      TfRef.attribute<String>(this, 'network_mode');

  /// Reference to `pid_mode` attribute.
  TfRef<String> get pidMode => TfRef.attribute<String>(this, 'pid_mode');

  /// Reference to `placement_constraints` attribute.
  TfRef<List<Map<String, Object?>>> get placementConstraints =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'placement_constraints',
      );

  /// Reference to `proxy_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get proxyConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'proxy_configuration');

  /// Reference to `requires_compatibilities` attribute.
  TfRef<List<String>> get requiresCompatibilities =>
      TfRef.attribute<List<String>>(this, 'requires_compatibilities');

  /// Reference to `revision` attribute.
  TfRef<num> get revision => TfRef.attribute<num>(this, 'revision');

  /// Reference to `runtime_platform` attribute.
  TfRef<List<Map<String, Object?>>> get runtimePlatform =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'runtime_platform');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `task_role_arn` attribute.
  TfRef<String> get taskRoleArn =>
      TfRef.attribute<String>(this, 'task_role_arn');

  /// Reference to `volume` attribute.
  TfRef<List<Map<String, Object?>>> get volume =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'volume');
}
