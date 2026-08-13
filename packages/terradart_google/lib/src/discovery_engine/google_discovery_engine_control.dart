// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_control`.
const Set<String> _googleDiscoveryEngineControlSensitive = <String>{};

/// Discovery Engine Control Solution enum for `solution_type`.
enum DiscoveryEngineControlSolutionType implements TerraformEnum {
  solutionTypeRecommendation('SOLUTION_TYPE_RECOMMENDATION'),
  solutionTypeSearch('SOLUTION_TYPE_SEARCH'),
  solutionTypeChat('SOLUTION_TYPE_CHAT'),
  solutionTypeGenerativeChat('SOLUTION_TYPE_GENERATIVE_CHAT');

  const DiscoveryEngineControlSolutionType(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// DiscoveryEngineControlAction — sealed (boost | filter | redirect |
// synonyms | promote)
// ===========================================================================

/// Choice of serving-control action. Sealed so the MM `exactly_one_of`
/// group (`boost_action` / `filter_action` / `redirect_action` /
/// `synonyms_action` / `promote_action`) is exhaustive at the type level.
sealed class DiscoveryEngineControlAction {
  const DiscoveryEngineControlAction();

  /// argMap key (`boost_action`, `filter_action`, …).
  String get blockKey;

  /// JSON fragment for the block value (single-element list; the schema
  /// nested blocks are `nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// `boost_action` — change result order. Pick at most one of
/// [fixedBoost] or [interpolationBoostSpec].
@immutable
final class DiscoveryEngineControlBoostAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlBoostAction({
    required this.dataStore,
    required this.filter,
    this.fixedBoost,
    this.interpolationBoostSpec,
  });

  final TfArg<String> dataStore;
  final TfArg<String> filter;
  final TfArg<double>? fixedBoost;
  final DiscoveryEngineControlInterpolationBoostSpec? interpolationBoostSpec;

  @override
  String get blockKey => 'boost_action';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'data_store': dataStore.toTfJson(),
      'filter': filter.toTfJson(),
      if (fixedBoost != null) 'fixed_boost': fixedBoost!.toTfJson(),
      if (interpolationBoostSpec != null)
        'interpolation_boost_spec': [interpolationBoostSpec!.toArgMap()],
    },
  ];
}

/// `boost_action.interpolation_boost_spec.attribute_type`.
enum DiscoveryEngineControlInterpolationAttributeType implements TerraformEnum {
  numerical('NUMERICAL'),
  freshness('FRESHNESS');

  const DiscoveryEngineControlInterpolationAttributeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `boost_action.interpolation_boost_spec.interpolation_type`.
enum DiscoveryEngineControlInterpolationType implements TerraformEnum {
  linear('LINEAR');

  const DiscoveryEngineControlInterpolationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `boost_action.interpolation_boost_spec` (max 1).
@immutable
class DiscoveryEngineControlInterpolationBoostSpec {
  const DiscoveryEngineControlInterpolationBoostSpec({
    this.fieldName,
    this.attributeType,
    this.interpolationType,
  });

  final TfArg<String>? fieldName;
  final TfArg<DiscoveryEngineControlInterpolationAttributeType>? attributeType;
  final TfArg<DiscoveryEngineControlInterpolationType>? interpolationType;

  Map<String, Object?> toArgMap() => {
    if (fieldName != null) 'field_name': fieldName!.toTfJson(),
    if (attributeType != null) 'attribute_type': attributeType!.toTfJson(),
    if (interpolationType != null)
      'interpolation_type': interpolationType!.toTfJson(),
  };
}

/// `filter_action` — drop matching results.
@immutable
final class DiscoveryEngineControlFilterAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlFilterAction({
    required this.dataStore,
    required this.filter,
  });

  final TfArg<String> dataStore;
  final TfArg<String> filter;

  @override
  String get blockKey => 'filter_action';

  @override
  List<Map<String, Object?>> encode() => [
    {'data_store': dataStore.toTfJson(), 'filter': filter.toTfJson()},
  ];
}

/// `redirect_action` — send the query to [redirectUri].
@immutable
final class DiscoveryEngineControlRedirectAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlRedirectAction({required this.redirectUri});

  final TfArg<String> redirectUri;

  @override
  String get blockKey => 'redirect_action';

  @override
  List<Map<String, Object?>> encode() => [
    {'redirect_uri': redirectUri.toTfJson()},
  ];
}

/// `synonyms_action` — treat [synonyms] as equivalent query terms.
@immutable
final class DiscoveryEngineControlSynonymsAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlSynonymsAction({this.synonyms});

  final TfArg<List<String>>? synonyms;

  @override
  String get blockKey => 'synonyms_action';

  @override
  List<Map<String, Object?>> encode() => [
    {if (synonyms != null) 'synonyms': synonyms!.toTfJson()},
  ];
}

/// `promote_action` — pin a search-link promotion on [dataStore].
@immutable
final class DiscoveryEngineControlPromoteAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlPromoteAction({
    required this.dataStore,
    required this.searchLinkPromotion,
  });

  final TfArg<String> dataStore;
  final DiscoveryEngineControlSearchLinkPromotion searchLinkPromotion;

  @override
  String get blockKey => 'promote_action';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'data_store': dataStore.toTfJson(),
      'search_link_promotion': [searchLinkPromotion.toArgMap()],
    },
  ];
}

/// `promote_action.search_link_promotion` (min 1).
@immutable
class DiscoveryEngineControlSearchLinkPromotion {
  const DiscoveryEngineControlSearchLinkPromotion({
    required this.title,
    this.description,
    this.document,
    this.enabled,
    this.imageUri,
    this.uri,
  });

  final TfArg<String> title;
  final TfArg<String>? description;
  final TfArg<String>? document;
  final TfArg<bool>? enabled;
  final TfArg<String>? imageUri;
  final TfArg<String>? uri;

  Map<String, Object?> toArgMap() => {
    'title': title.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (document != null) 'document': document!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (imageUri != null) 'image_uri': imageUri!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_control`.
///
/// Controls are rules that influence search results.
///
/// Vertex AI Search **control** — a serving rule on an engine. Pick
/// exactly one [DiscoveryEngineControlAction]: boost, filter, redirect,
/// synonyms, or promote.
///
/// **Cost:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Search API Request
/// Count - Standard `BADA-EE26-7BDA` **$1.50/count after 10k**.
/// billing-behavior: controls are design-time ranking rules; query SKUs
/// fire only on Search API requests. This factory never queries.
final class GoogleDiscoveryEngineControl extends Resource {
  static const String tfType = 'google_discovery_engine_control';

  GoogleDiscoveryEngineControl({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? collectionId,
    required TfArg<String> engineId,
    required TfArg<String> controlId,
    required TfArg<String> displayName,
    required TfArg<DiscoveryEngineControlSolutionType> solutionType,
    required DiscoveryEngineControlAction action,
    TfArg<List<String>>? useCases,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (collectionId != null) 'collection_id': collectionId,
           'engine_id': engineId,
           'control_id': controlId,
           'display_name': displayName,
           'solution_type': solutionType,
           if (useCases != null) 'use_cases': useCases,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           action.blockKey: TfArg.literal(action.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineControlSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `control_id` attribute.
  TfRef<String> get controlIdRef => TfRef.attribute<String>(this, 'control_id');
}
