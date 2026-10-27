// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_log_analytics_saved_search`.
const Set<String> _azurermLogAnalyticsSavedSearchSensitive = <String>{};

/// Factory wrapper for `azurerm_log_analytics_saved_search`.
final class AzurermLogAnalyticsSavedSearch extends Resource {
  static const String tfType = 'azurerm_log_analytics_saved_search';

  AzurermLogAnalyticsSavedSearch(
    super.localName, {
    required TfArg<String> category,
    required TfArg<String> displayName,
    TfArg<String>? functionAlias,
    TfArg<List<String>>? functionParameters,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    required TfArg<String> query,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'category': category,
           'display_name': displayName,
           'function_alias': ?functionAlias,
           'function_parameters': ?functionParameters,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'query': query,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogAnalyticsSavedSearchSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsSavedSearch>`.
  RefTo<AzurermLogAnalyticsSavedSearch> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `function_alias` attribute.
  TfRef<String> get functionAlias =>
      TfRef.attribute<String>(this, 'function_alias');

  /// Reference to `function_parameters` attribute.
  TfRef<List<String>> get functionParameters =>
      TfRef.attribute<List<String>>(this, 'function_parameters');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `query` attribute.
  TfRef<String> get query => TfRef.attribute<String>(this, 'query');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
