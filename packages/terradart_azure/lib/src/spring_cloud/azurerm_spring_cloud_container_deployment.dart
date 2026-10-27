// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_container_deployment`.
const Set<String> _azurermSpringCloudContainerDeploymentSensitive = <String>{};

/// Typed helper for the `quota` block of
/// `azurerm_spring_cloud_container_deployment` (derived from provider schema).
@immutable
final class SpringCloudContainerDeploymentQuota {
  const SpringCloudContainerDeploymentQuota({this.cpu, this.memory});

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  @internal
  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_container_deployment`.
final class AzurermSpringCloudContainerDeployment extends Resource {
  static const String tfType = 'azurerm_spring_cloud_container_deployment';

  AzurermSpringCloudContainerDeployment(
    super.localName, {
    TfArg<String>? addonJson,
    TfArg<List<String>>? applicationPerformanceMonitoringIds,
    TfArg<List<String>>? arguments,
    TfArg<List<String>>? commands,
    TfArg<Map<String, String>>? environmentVariables,
    required TfArg<String> image,
    TfArg<num>? instanceCount,
    TfArg<String>? languageFramework,
    required TfArg<String> name,
    required TfArg<String> server,
    required TfArg<String> springCloudAppId,
    SpringCloudContainerDeploymentQuota? quota,
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
           'arguments': ?arguments,
           'commands': ?commands,
           'environment_variables': ?environmentVariables,
           'image': image,
           'instance_count': ?instanceCount,
           'language_framework': ?languageFramework,
           'name': name,
           'server': server,
           'spring_cloud_app_id': springCloudAppId,
           if (quota != null) 'quota': TfArg.literal(quota.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudContainerDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudContainerDeployment>`.
  RefTo<AzurermSpringCloudContainerDeployment> get ref => RefTo.of(this);

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

  /// Reference to `arguments` attribute.
  TfRef<List<String>> get arguments =>
      TfRef.attribute<List<String>>(this, 'arguments');

  /// Reference to `commands` attribute.
  TfRef<List<String>> get commands =>
      TfRef.attribute<List<String>>(this, 'commands');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `image` attribute.
  TfRef<String> get image => TfRef.attribute<String>(this, 'image');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `language_framework` attribute.
  TfRef<String> get languageFramework =>
      TfRef.attribute<String>(this, 'language_framework');

  /// Reference to `server` attribute.
  TfRef<String> get server => TfRef.attribute<String>(this, 'server');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');
}
