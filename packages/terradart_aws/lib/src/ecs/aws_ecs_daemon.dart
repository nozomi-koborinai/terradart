// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_daemon`.
const Set<String> _awsEcsDaemonSensitive = <String>{};

/// Ecs Daemon Propagate enum for `propagate_tags`.
enum EcsDaemonPropagateTags implements TerraformEnum {
  daemon('DAEMON'),
  none('NONE');

  const EcsDaemonPropagateTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_configuration` block of
/// `aws_ecs_daemon` (derived from provider schema).
@immutable
final class EcsDaemonDeploymentConfiguration {
  const EcsDaemonDeploymentConfiguration({
    this.bakeTimeInMinutes,
    this.drainPercent,
    this.alarms,
  });

  final TfArg<num>? bakeTimeInMinutes;

  final TfArg<num>? drainPercent;

  final List<EcsDaemonAlarms>? alarms;

  Map<String, Object?> encode() => {
    'bake_time_in_minutes': ?bakeTimeInMinutes?.toTfJson(),
    'drain_percent': ?drainPercent?.toTfJson(),
    if (alarms != null) 'alarms': [for (final e in alarms!) e.encode()],
  };
}

/// Typed helper for the `deployment_configuration.alarms` block of
/// `aws_ecs_daemon` (derived from provider schema).
@immutable
final class EcsDaemonAlarms {
  const EcsDaemonAlarms({this.alarmNames, this.enable});

  final TfArg<List<String>>? alarmNames;

  final TfArg<bool>? enable;

  Map<String, Object?> encode() => {
    'alarm_names': ?alarmNames?.toTfJson(),
    'enable': ?enable?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecs_daemon`.
final class AwsEcsDaemon extends Resource {
  static const String tfType = 'aws_ecs_daemon';

  AwsEcsDaemon({
    required super.localName,
    required TfArg<List<String>> capacityProviderArns,
    TfArg<String>? clusterArn,
    required TfArg<String> daemonTaskDefinitionArn,
    TfArg<bool>? enableEcsManagedTags,
    TfArg<bool>? enableExecuteCommand,
    required TfArg<String> name,
    TfArg<EcsDaemonPropagateTags>? propagateTags,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<EcsDaemonDeploymentConfiguration>? deploymentConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity_provider_arns': capacityProviderArns,
           'cluster_arn': ?clusterArn,
           'daemon_task_definition_arn': daemonTaskDefinitionArn,
           'enable_ecs_managed_tags': ?enableEcsManagedTags,
           'enable_execute_command': ?enableExecuteCommand,
           'name': name,
           'propagate_tags': ?propagateTags,
           'region': ?region,
           'tags': ?tags,
           if (deploymentConfiguration != null)
             'deployment_configuration': TfArg.literal([
               for (final e in deploymentConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsDaemonSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsDaemon>`.
  RefTo<AwsEcsDaemon> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deployment_arn` attribute.
  TfRef<String> get deploymentArn =>
      TfRef.attribute<String>(this, 'deployment_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `capacity_provider_arns` attribute.
  TfRef<List<String>> get capacityProviderArnsRef =>
      TfRef.attribute<List<String>>(this, 'capacity_provider_arns');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArnRef =>
      TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `daemon_task_definition_arn` attribute.
  TfRef<String> get daemonTaskDefinitionArnRef =>
      TfRef.attribute<String>(this, 'daemon_task_definition_arn');

  /// Reference to `enable_ecs_managed_tags` attribute.
  TfRef<bool> get enableEcsManagedTagsRef =>
      TfRef.attribute<bool>(this, 'enable_ecs_managed_tags');

  /// Reference to `enable_execute_command` attribute.
  TfRef<bool> get enableExecuteCommandRef =>
      TfRef.attribute<bool>(this, 'enable_execute_command');

  /// Reference to `propagate_tags` attribute.
  TfRef<String> get propagateTagsRef =>
      TfRef.attribute<String>(this, 'propagate_tags');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
