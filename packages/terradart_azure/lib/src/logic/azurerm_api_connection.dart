// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_connection`.
const Set<String> _azurermApiConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_api_connection`.
final class AzurermApiConnection extends Resource {
  static const String tfType = 'azurerm_api_connection';

  AzurermApiConnection(
    super.localName, {
    TfArg<String>? displayName,
    required TfArg<String> managedApiId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameterValues,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'managed_api_id': managedApiId,
           'name': name,
           'parameter_values': ?parameterValues,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiConnection>`.
  RefTo<AzurermApiConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `managed_api_id` attribute.
  TfRef<String> get managedApiId =>
      TfRef.attribute<String>(this, 'managed_api_id');

  /// Reference to `parameter_values` attribute.
  TfRef<Map<String, String>> get parameterValues =>
      TfRef.attribute<Map<String, String>>(this, 'parameter_values');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
