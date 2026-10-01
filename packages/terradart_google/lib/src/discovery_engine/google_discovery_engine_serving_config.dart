// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_search_engine.dart'
    show GoogleDiscoveryEngineSearchEngine;

/// Sensitive field paths for `google_discovery_engine_serving_config`.
const Set<String> _googleDiscoveryEngineServingConfigSensitive = <String>{};

/// Factory wrapper for `google_discovery_engine_serving_config`.
///
/// Represents a serving config which is a singleton resource under engine. A
/// default serving config is automatically provisioned and deleted with its
/// parent engine.
///
/// Vertex AI Search **serving config** — singleton under an engine.
/// `serving_config_id` currently accepts only `default_search`. Create is
/// PATCH; Magic Modules `exclude_delete: true` (Terraform destroy removes
/// state only — the parent engine delete still tears the config down).
///
/// **Cost:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Search API Request
/// Count - Standard `BADA-EE26-7BDA` **$1.50/count after 10k**.
/// billing-behavior: serving config is design-time wiring of controls;
/// query SKUs fire only on Search API requests. This factory never queries.
final class GoogleDiscoveryEngineServingConfig extends Resource {
  static const String tfType = 'google_discovery_engine_serving_config';

  GoogleDiscoveryEngineServingConfig({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? collectionId,
    required RefTo<GoogleDiscoveryEngineSearchEngine> engineId,
    TfArg<String>? servingConfigId,
    TfArg<List<String>>? synonymsControlIds,
    TfArg<List<String>>? filterControlIds,
    TfArg<List<String>>? boostControlIds,
    TfArg<List<String>>? redirectControlIds,
    TfArg<List<String>>? promoteControlIds,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': ?collectionId,
           'engine_id': engineId.encodeAs('engine_id'),
           'serving_config_id': ?servingConfigId,
           'synonyms_control_ids': ?synonymsControlIds,
           'filter_control_ids': ?filterControlIds,
           'boost_control_ids': ?boostControlIds,
           'redirect_control_ids': ?redirectControlIds,
           'promote_control_ids': ?promoteControlIds,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineServingConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineServingConfig>`.
  RefTo<GoogleDiscoveryEngineServingConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `boost_control_ids` attribute.
  TfRef<List<String>> get boostControlIds =>
      TfRef.attribute<List<String>>(this, 'boost_control_ids');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `filter_control_ids` attribute.
  TfRef<List<String>> get filterControlIds =>
      TfRef.attribute<List<String>>(this, 'filter_control_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `promote_control_ids` attribute.
  TfRef<List<String>> get promoteControlIds =>
      TfRef.attribute<List<String>>(this, 'promote_control_ids');

  /// Reference to `redirect_control_ids` attribute.
  TfRef<List<String>> get redirectControlIds =>
      TfRef.attribute<List<String>>(this, 'redirect_control_ids');

  /// Reference to `serving_config_id` attribute.
  TfRef<String> get servingConfigId =>
      TfRef.attribute<String>(this, 'serving_config_id');

  /// Reference to `synonyms_control_ids` attribute.
  TfRef<List<String>> get synonymsControlIds =>
      TfRef.attribute<List<String>>(this, 'synonyms_control_ids');
}
