// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_insights_web_test`.
const Set<String> _azurermApplicationInsightsWebTestSensitive = <String>{};

/// Factory wrapper for `azurerm_application_insights_web_test`.
final class AzurermApplicationInsightsWebTest extends Resource {
  static const String tfType = 'azurerm_application_insights_web_test';

  AzurermApplicationInsightsWebTest(
    super.localName, {
    required TfArg<String> applicationInsightsId,
    required TfArg<String> configuration,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<num>? frequency,
    required TfArg<List<String>> geoLocations,
    required TfArg<String> kind,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? retryEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeout,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': applicationInsightsId,
           'configuration': configuration,
           'description': ?description,
           'enabled': ?enabled,
           'frequency': ?frequency,
           'geo_locations': geoLocations,
           'kind': kind,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retry_enabled': ?retryEnabled,
           'tags': ?tags,
           'timeout': ?timeout,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationInsightsWebTestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsWebTest>`.
  RefTo<AzurermApplicationInsightsWebTest> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `synthetic_monitor_id` attribute.
  TfRef<String> get syntheticMonitorId =>
      TfRef.attribute<String>(this, 'synthetic_monitor_id');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `configuration` attribute.
  TfRef<String> get configuration =>
      TfRef.attribute<String>(this, 'configuration');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frequency` attribute.
  TfRef<num> get frequency => TfRef.attribute<num>(this, 'frequency');

  /// Reference to `geo_locations` attribute.
  TfRef<List<String>> get geoLocations =>
      TfRef.attribute<List<String>>(this, 'geo_locations');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retry_enabled` attribute.
  TfRef<bool> get retryEnabled => TfRef.attribute<bool>(this, 'retry_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');
}
