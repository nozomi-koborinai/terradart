// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_blueprint_definition`.
const Set<String> _azurermBlueprintDefinitionSensitive = <String>{};

/// Factory wrapper for `azurerm_blueprint_definition`.
final class DataAzurermBlueprintDefinition extends Data {
  static const String tfType = 'azurerm_blueprint_definition';

  DataAzurermBlueprintDefinition(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> scopeId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'scope_id': scopeId},
       );

  @override
  Set<String> get sensitiveFields => _azurermBlueprintDefinitionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `target_scope` attribute.
  TfRef<String> get targetScope =>
      TfRef.attribute<String>(this, 'target_scope');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `versions` attribute.
  TfRef<List<String>> get versions =>
      TfRef.attribute<List<String>>(this, 'versions');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');
}
