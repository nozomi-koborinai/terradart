// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_build_deployment`.
const Set<String> _azurermSpringCloudBuildDeploymentSensitive = <String>{};

/// Typed helper for the `quota` block of
/// `azurerm_spring_cloud_build_deployment` (derived from provider schema).
@immutable
final class SpringCloudBuildDeploymentQuota {
  const SpringCloudBuildDeploymentQuota({this.cpu, this.memory});

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  @internal
  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_build_deployment`.
final class AzurermSpringCloudBuildDeployment extends Resource {
  static const String tfType = 'azurerm_spring_cloud_build_deployment';

  AzurermSpringCloudBuildDeployment(
    super.localName, {
    TfArg<String>? addonJson,
    TfArg<List<String>>? applicationPerformanceMonitoringIds,
    required TfArg<String> buildResultId,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<num>? instanceCount,
    required TfArg<String> name,
    required TfArg<String> springCloudAppId,
    SpringCloudBuildDeploymentQuota? quota,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'addon_json': ?addonJson,
           'application_performance_monitoring_ids':
               ?applicationPerformanceMonitoringIds,
           'build_result_id': buildResultId,
           'environment_variables': ?environmentVariables,
           'instance_count': ?instanceCount,
           'name': name,
           'spring_cloud_app_id': springCloudAppId,
           if (quota != null) 'quota': TfArg.literal(quota.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudBuildDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudBuildDeployment>`.
  RefTo<AzurermSpringCloudBuildDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addon_json` attribute.
  TfRef<String> get addonJson => TfRef.attribute<String>(this, 'addon_json');

  /// Reference to `application_performance_monitoring_ids` attribute.
  TfRef<List<String>> get applicationPerformanceMonitoringIds =>
      TfRef.attribute<List<String>>(
        this,
        'application_performance_monitoring_ids',
      );

  /// Reference to `build_result_id` attribute.
  TfRef<String> get buildResultId =>
      TfRef.attribute<String>(this, 'build_result_id');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');
}
