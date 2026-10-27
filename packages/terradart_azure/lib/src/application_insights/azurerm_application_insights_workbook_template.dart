// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_insights_workbook_template`.
const Set<String> _azurermApplicationInsightsWorkbookTemplateSensitive =
    <String>{};

/// Typed helper for the `galleries` block of
/// `azurerm_application_insights_workbook_template` (derived from provider schema).
@immutable
final class ApplicationInsightsWorkbookTemplateGalleries {
  const ApplicationInsightsWorkbookTemplateGalleries({
    required this.category,
    required this.name,
    this.order,
    this.resourceType,
    this.type,
  });

  final TfArg<String> category;

  final TfArg<String> name;

  final TfArg<num>? order;

  final TfArg<String>? resourceType;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'category': category.toTfJson(),
    'name': name.toTfJson(),
    'order': ?order?.toTfJson(),
    'resource_type': ?resourceType?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_application_insights_workbook_template`.
final class AzurermApplicationInsightsWorkbookTemplate extends Resource {
  static const String tfType = 'azurerm_application_insights_workbook_template';

  AzurermApplicationInsightsWorkbookTemplate(
    super.localName, {
    TfArg<String>? author,
    TfArg<String>? localized,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<num>? priority,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateData,
    required List<ApplicationInsightsWorkbookTemplateGalleries> galleries,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'author': ?author,
           'localized': ?localized,
           'location': location,
           'name': name,
           'priority': ?priority,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'template_data': templateData,
           'galleries': TfArg.literal([for (final e in galleries) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationInsightsWorkbookTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsWorkbookTemplate>`.
  RefTo<AzurermApplicationInsightsWorkbookTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author` attribute.
  TfRef<String> get author => TfRef.attribute<String>(this, 'author');

  /// Reference to `localized` attribute.
  TfRef<String> get localized => TfRef.attribute<String>(this, 'localized');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_data` attribute.
  TfRef<String> get templateData =>
      TfRef.attribute<String>(this, 'template_data');
}
