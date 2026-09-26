// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_daemon`.
const Set<String> _awsEcsDaemonSensitive = <String>{};

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

  final List<EcsDaemonDeploymentConfigurationAlarms>? alarms;

  Map<String, Object?> encode() => {
    if (bakeTimeInMinutes != null)
      'bake_time_in_minutes': bakeTimeInMinutes!.toTfJson(),
    if (drainPercent != null) 'drain_percent': drainPercent!.toTfJson(),
    if (alarms != null) 'alarms': [for (final e in alarms!) e.encode()],
  };
}

/// Typed helper for the `deployment_configuration.alarms` block of
/// `aws_ecs_daemon` (derived from provider schema).
@immutable
final class EcsDaemonDeploymentConfigurationAlarms {
  const EcsDaemonDeploymentConfigurationAlarms({this.alarmNames, this.enable});

  final TfArg<List<Object?>>? alarmNames;

  final TfArg<bool>? enable;

  Map<String, Object?> encode() => {
    if (alarmNames != null) 'alarm_names': alarmNames!.toTfJson(),
    if (enable != null) 'enable': enable!.toTfJson(),
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
    TfArg<String>? propagateTags,
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
           if (clusterArn != null) 'cluster_arn': clusterArn,
           'daemon_task_definition_arn': daemonTaskDefinitionArn,
           if (enableEcsManagedTags != null)
             'enable_ecs_managed_tags': enableEcsManagedTags,
           if (enableExecuteCommand != null)
             'enable_execute_command': enableExecuteCommand,
           'name': name,
           if (propagateTags != null) 'propagate_tags': propagateTags,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (deploymentConfiguration != null)
             'deployment_configuration': TfArg.literal([
               for (final e in deploymentConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcsDaemonSensitive;

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
}
