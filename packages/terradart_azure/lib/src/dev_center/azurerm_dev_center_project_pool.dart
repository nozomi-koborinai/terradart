// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dev_center_project_pool`.
const Set<String> _azurermDevCenterProjectPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_project_pool`.
final class AzurermDevCenterProjectPool extends Resource {
  static const String tfType = 'azurerm_dev_center_project_pool';

  AzurermDevCenterProjectPool(
    super.localName, {
    required TfArg<String> devBoxDefinitionName,
    required TfArg<String> devCenterAttachedNetworkName,
    required TfArg<String> devCenterProjectId,
    required TfArg<bool> localAdministratorEnabled,
    required TfArg<String> location,
    TfArg<List<String>>? managedVirtualNetworkRegions,
    required TfArg<String> name,
    TfArg<bool>? singleSignOnEnabled,
    TfArg<num>? stopOnDisconnectGracePeriodMinutes,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dev_box_definition_name': devBoxDefinitionName,
           'dev_center_attached_network_name': devCenterAttachedNetworkName,
           'dev_center_project_id': devCenterProjectId,
           'local_administrator_enabled': localAdministratorEnabled,
           'location': location,
           'managed_virtual_network_regions': ?managedVirtualNetworkRegions,
           'name': name,
           'single_sign_on_enabled': ?singleSignOnEnabled,
           'stop_on_disconnect_grace_period_minutes':
               ?stopOnDisconnectGracePeriodMinutes,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterProjectPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterProjectPool>`.
  RefTo<AzurermDevCenterProjectPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_box_definition_name` attribute.
  TfRef<String> get devBoxDefinitionName =>
      TfRef.attribute<String>(this, 'dev_box_definition_name');

  /// Reference to `dev_center_attached_network_name` attribute.
  TfRef<String> get devCenterAttachedNetworkName =>
      TfRef.attribute<String>(this, 'dev_center_attached_network_name');

  /// Reference to `dev_center_project_id` attribute.
  TfRef<String> get devCenterProjectId =>
      TfRef.attribute<String>(this, 'dev_center_project_id');

  /// Reference to `local_administrator_enabled` attribute.
  TfRef<bool> get localAdministratorEnabled =>
      TfRef.attribute<bool>(this, 'local_administrator_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_virtual_network_regions` attribute.
  TfRef<List<String>> get managedVirtualNetworkRegions =>
      TfRef.attribute<List<String>>(this, 'managed_virtual_network_regions');

  /// Reference to `single_sign_on_enabled` attribute.
  TfRef<bool> get singleSignOnEnabled =>
      TfRef.attribute<bool>(this, 'single_sign_on_enabled');

  /// Reference to `stop_on_disconnect_grace_period_minutes` attribute.
  TfRef<num> get stopOnDisconnectGracePeriodMinutes =>
      TfRef.attribute<num>(this, 'stop_on_disconnect_grace_period_minutes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
