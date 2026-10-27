// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_active_deployment`.
const Set<String> _azurermSpringCloudActiveDeploymentSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_active_deployment`.
final class AzurermSpringCloudActiveDeployment extends Resource {
  static const String tfType = 'azurerm_spring_cloud_active_deployment';

  AzurermSpringCloudActiveDeployment(
    super.localName, {
    required TfArg<String> deploymentName,
    required TfArg<String> springCloudAppId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deployment_name': deploymentName,
           'spring_cloud_app_id': springCloudAppId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudActiveDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudActiveDeployment>`.
  RefTo<AzurermSpringCloudActiveDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deployment_name` attribute.
  TfRef<String> get deploymentName =>
      TfRef.attribute<String>(this, 'deployment_name');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');
}
