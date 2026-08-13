// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> engineId,
    TfArg<String>? servingConfigId,
    TfArg<List<String>>? synonymsControlIds,
    TfArg<List<String>>? filterControlIds,
    TfArg<List<String>>? boostControlIds,
    TfArg<List<String>>? redirectControlIds,
    TfArg<List<String>>? promoteControlIds,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (collectionId != null) 'collection_id': collectionId,
           'engine_id': engineId,
           if (servingConfigId != null) 'serving_config_id': servingConfigId,
           if (synonymsControlIds != null)
             'synonyms_control_ids': synonymsControlIds,
           if (filterControlIds != null) 'filter_control_ids': filterControlIds,
           if (boostControlIds != null) 'boost_control_ids': boostControlIds,
           if (redirectControlIds != null)
             'redirect_control_ids': redirectControlIds,
           if (promoteControlIds != null)
             'promote_control_ids': promoteControlIds,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineServingConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `serving_config_id` attribute.
  TfRef<String> get servingConfigIdRef =>
      TfRef.attribute<String>(this, 'serving_config_id');
}
