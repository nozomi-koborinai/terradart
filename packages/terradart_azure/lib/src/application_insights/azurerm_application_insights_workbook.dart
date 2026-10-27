// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_insights_workbook`.
const Set<String> _azurermApplicationInsightsWorkbookSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_application_insights_workbook` (derived from provider schema).
@immutable
final class ApplicationInsightsWorkbookIdentity {
  const ApplicationInsightsWorkbookIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_application_insights_workbook`.
final class AzurermApplicationInsightsWorkbook extends Resource {
  static const String tfType = 'azurerm_application_insights_workbook';

  AzurermApplicationInsightsWorkbook(
    super.localName, {
    TfArg<String>? category,
    required TfArg<String> dataJson,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sourceId,
    TfArg<String>? storageContainerId,
    TfArg<Map<String, String>>? tags,
    ApplicationInsightsWorkbookIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'category': ?category,
           'data_json': dataJson,
           'description': ?description,
           'display_name': displayName,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_id': ?sourceId,
           'storage_container_id': ?storageContainerId,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationInsightsWorkbookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsWorkbook>`.
  RefTo<AzurermApplicationInsightsWorkbook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `data_json` attribute.
  TfRef<String> get dataJson => TfRef.attribute<String>(this, 'data_json');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_id` attribute.
  TfRef<String> get sourceId => TfRef.attribute<String>(this, 'source_id');

  /// Reference to `storage_container_id` attribute.
  TfRef<String> get storageContainerId =>
      TfRef.attribute<String>(this, 'storage_container_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
