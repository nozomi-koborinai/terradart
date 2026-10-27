// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_project_pool.dart';

/// Sensitive field paths for `azurerm_dev_center_project_pool`.
const Set<String> _azurermDevCenterProjectPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_project_pool`.
final class DataAzurermDevCenterProjectPool extends Data {
  static const String tfType = 'azurerm_dev_center_project_pool';

  DataAzurermDevCenterProjectPool(
    super.localName, {
    required TfArg<String> devCenterProjectId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_project_id': devCenterProjectId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterProjectPoolSensitive;

  /// A reference to the `azurerm_dev_center_project_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterProjectPool>`.
  RefTo<AzurermDevCenterProjectPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `local_administrator_enabled` attribute.
  TfRef<bool> get localAdministratorEnabled =>
      TfRef.attribute<bool>(this, 'local_administrator_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `single_sign_on_enabled` attribute.
  TfRef<bool> get singleSignOnEnabled =>
      TfRef.attribute<bool>(this, 'single_sign_on_enabled');

  /// Reference to `stop_on_disconnect_grace_period_minutes` attribute.
  TfRef<num> get stopOnDisconnectGracePeriodMinutes =>
      TfRef.attribute<num>(this, 'stop_on_disconnect_grace_period_minutes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `dev_center_project_id` attribute.
  TfRef<String> get devCenterProjectId =>
      TfRef.attribute<String>(this, 'dev_center_project_id');
}
