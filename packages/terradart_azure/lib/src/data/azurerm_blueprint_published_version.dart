// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_blueprint_published_version`.
const Set<String> _azurermBlueprintPublishedVersionSensitive = <String>{};

/// Factory wrapper for `azurerm_blueprint_published_version`.
final class DataAzurermBlueprintPublishedVersion extends Data {
  static const String tfType = 'azurerm_blueprint_published_version';

  DataAzurermBlueprintPublishedVersion(
    super.localName, {
    required TfArg<String> blueprintName,
    required TfArg<String> scopeId,
    required TfArg<String> version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blueprint_name': blueprintName,
           'scope_id': scopeId,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBlueprintPublishedVersionSensitive;

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

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `blueprint_name` attribute.
  TfRef<String> get blueprintName =>
      TfRef.attribute<String>(this, 'blueprint_name');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
