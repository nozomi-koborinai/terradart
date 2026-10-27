// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_java_deployment`.
const Set<String> _azurermSpringCloudJavaDeploymentSensitive = <String>{};

/// Typed helper for the `quota` block of
/// `azurerm_spring_cloud_java_deployment` (derived from provider schema).
@immutable
final class SpringCloudJavaDeploymentQuota {
  const SpringCloudJavaDeploymentQuota({this.cpu, this.memory});

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  @internal
  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_java_deployment`.
final class AzurermSpringCloudJavaDeployment extends Resource {
  static const String tfType = 'azurerm_spring_cloud_java_deployment';

  AzurermSpringCloudJavaDeployment(
    super.localName, {
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<num>? instanceCount,
    TfArg<String>? jvmOptions,
    required TfArg<String> name,
    TfArg<String>? runtimeVersion,
    required TfArg<String> springCloudAppId,
    SpringCloudJavaDeploymentQuota? quota,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environment_variables': ?environmentVariables,
           'instance_count': ?instanceCount,
           'jvm_options': ?jvmOptions,
           'name': name,
           'runtime_version': ?runtimeVersion,
           'spring_cloud_app_id': springCloudAppId,
           if (quota != null) 'quota': TfArg.literal(quota.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudJavaDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudJavaDeployment>`.
  RefTo<AzurermSpringCloudJavaDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `jvm_options` attribute.
  TfRef<String> get jvmOptions => TfRef.attribute<String>(this, 'jvm_options');

  /// Reference to `runtime_version` attribute.
  TfRef<String> get runtimeVersion =>
      TfRef.attribute<String>(this, 'runtime_version');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');
}
