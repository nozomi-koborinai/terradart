// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../batch/azurerm_batch_application.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_batch_application`.
const Set<String> _azurermBatchApplicationSensitive = <String>{};

/// Factory wrapper for `azurerm_batch_application`.
final class DataAzurermBatchApplication extends Data {
  static const String tfType = 'azurerm_batch_application';

  DataAzurermBatchApplication(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBatchApplicationSensitive;

  /// A reference to the `azurerm_batch_application` this data source reads, for
  /// arguments typed `RefTo<AzurermBatchApplication>`.
  RefTo<AzurermBatchApplication> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_updates` attribute.
  TfRef<bool> get allowUpdates => TfRef.attribute<bool>(this, 'allow_updates');

  /// Reference to `default_version` attribute.
  TfRef<String> get defaultVersion =>
      TfRef.attribute<String>(this, 'default_version');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
