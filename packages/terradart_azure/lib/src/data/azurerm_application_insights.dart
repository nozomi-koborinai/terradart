// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../application_insights/azurerm_application_insights.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_insights`.
const Set<String> _azurermApplicationInsightsSensitive = <String>{
  'connection_string',
};

/// Factory wrapper for `azurerm_application_insights`.
final class DataAzurermApplicationInsights extends Data {
  static const String tfType = 'azurerm_application_insights';

  DataAzurermApplicationInsights(
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
  Set<String> get sensitiveFields => _azurermApplicationInsightsSensitive;

  /// A reference to the `azurerm_application_insights` this data source reads, for
  /// arguments typed `RefTo<AzurermApplicationInsights>`.
  RefTo<AzurermApplicationInsights> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `application_type` attribute.
  TfRef<String> get applicationType =>
      TfRef.attribute<String>(this, 'application_type');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `instrumentation_key` attribute.
  TfRef<String> get instrumentationKey =>
      TfRef.attribute<String>(this, 'instrumentation_key');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
