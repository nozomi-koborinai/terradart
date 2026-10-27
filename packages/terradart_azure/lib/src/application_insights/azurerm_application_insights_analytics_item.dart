// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_insights_analytics_item`.
const Set<String> _azurermApplicationInsightsAnalyticsItemSensitive =
    <String>{};

/// Factory wrapper for `azurerm_application_insights_analytics_item`.
final class AzurermApplicationInsightsAnalyticsItem extends Resource {
  static const String tfType = 'azurerm_application_insights_analytics_item';

  AzurermApplicationInsightsAnalyticsItem(
    super.localName, {
    required TfArg<String> applicationInsightsId,
    required TfArg<String> content,
    TfArg<String>? functionAlias,
    required TfArg<String> name,
    required TfArg<String> scope,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': applicationInsightsId,
           'content': content,
           'function_alias': ?functionAlias,
           'name': name,
           'scope': scope,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationInsightsAnalyticsItemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsAnalyticsItem>`.
  RefTo<AzurermApplicationInsightsAnalyticsItem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `time_modified` attribute.
  TfRef<String> get timeModified =>
      TfRef.attribute<String>(this, 'time_modified');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `function_alias` attribute.
  TfRef<String> get functionAlias =>
      TfRef.attribute<String>(this, 'function_alias');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
