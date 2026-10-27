// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../nginx/azurerm_nginx_deployment.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_nginx_deployment`.
const Set<String> _azurermNginxDeploymentSensitive = <String>{};

/// Factory wrapper for `azurerm_nginx_deployment`.
final class DataAzurermNginxDeployment extends Data {
  static const String tfType = 'azurerm_nginx_deployment';

  DataAzurermNginxDeployment(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxDeploymentSensitive;

  /// A reference to the `azurerm_nginx_deployment` this data source reads, for
  /// arguments typed `RefTo<AzurermNginxDeployment>`.
  RefTo<AzurermNginxDeployment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_scale_profile` attribute.
  TfRef<List<Map<String, Object?>>> get autoScaleProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auto_scale_profile');

  /// Reference to `automatic_upgrade_channel` attribute.
  TfRef<String> get automaticUpgradeChannel =>
      TfRef.attribute<String>(this, 'automatic_upgrade_channel');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `dataplane_api_endpoint` attribute.
  TfRef<String> get dataplaneApiEndpoint =>
      TfRef.attribute<String>(this, 'dataplane_api_endpoint');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `frontend_private` attribute.
  TfRef<List<Map<String, Object?>>> get frontendPrivate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'frontend_private');

  /// Reference to `frontend_public` attribute.
  TfRef<List<Map<String, Object?>>> get frontendPublic =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'frontend_public');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interface');

  /// Reference to `nginx_version` attribute.
  TfRef<String> get nginxVersion =>
      TfRef.attribute<String>(this, 'nginx_version');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `web_application_firewall` attribute.
  TfRef<List<Map<String, Object?>>> get webApplicationFirewall =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'web_application_firewall',
      );

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
