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

/// Exactly one of `boost_action`, `filter_action`, `redirect_action`, `synonyms_action`, `promote_action` on `google_discovery_engine_control`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.boostAction(...)`.
sealed class DiscoveryEngineControlAction {
  const DiscoveryEngineControlAction();

  /// Sets `boost_action`.
  const factory DiscoveryEngineControlAction.boostAction(
    DiscoveryEngineControlBoostAction boostAction,
  ) = DiscoveryEngineControlActionBoostAction;

  /// Sets `filter_action`.
  const factory DiscoveryEngineControlAction.filterAction(
    DiscoveryEngineControlFilterAction filterAction,
  ) = DiscoveryEngineControlActionFilterAction;

  /// Sets `redirect_action`.
  const factory DiscoveryEngineControlAction.redirectAction(
    DiscoveryEngineControlRedirectAction redirectAction,
  ) = DiscoveryEngineControlActionRedirectAction;

  /// Sets `synonyms_action`.
  const factory DiscoveryEngineControlAction.synonymsAction(
    DiscoveryEngineControlSynonymsAction synonymsAction,
  ) = DiscoveryEngineControlActionSynonymsAction;

  /// Sets `promote_action`.
  const factory DiscoveryEngineControlAction.promoteAction(
    DiscoveryEngineControlPromoteAction promoteAction,
  ) = DiscoveryEngineControlActionPromoteAction;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DiscoveryEngineControlAction.boostAction] choice: sets `boost_action`.
final class DiscoveryEngineControlActionBoostAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlActionBoostAction(this.boostAction);

  final DiscoveryEngineControlBoostAction boostAction;

  @override
  String get blockKey => 'boost_action';

  @override
  Map<String, Object?> encode() => {'boost_action': boostAction.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'boost_action': TfArg.literal(boostAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.filterAction] choice: sets `filter_action`.
final class DiscoveryEngineControlActionFilterAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlActionFilterAction(this.filterAction);

  final DiscoveryEngineControlFilterAction filterAction;

  @override
  String get blockKey => 'filter_action';

  @override
  Map<String, Object?> encode() => {'filter_action': filterAction.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'filter_action': TfArg.literal(filterAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.redirectAction] choice: sets `redirect_action`.
final class DiscoveryEngineControlActionRedirectAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlActionRedirectAction(this.redirectAction);

  final DiscoveryEngineControlRedirectAction redirectAction;

  @override
  String get blockKey => 'redirect_action';

  @override
  Map<String, Object?> encode() => {'redirect_action': redirectAction.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'redirect_action': TfArg.literal(redirectAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.synonymsAction] choice: sets `synonyms_action`.
final class DiscoveryEngineControlActionSynonymsAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlActionSynonymsAction(this.synonymsAction);

  final DiscoveryEngineControlSynonymsAction synonymsAction;

  @override
  String get blockKey => 'synonyms_action';

  @override
  Map<String, Object?> encode() => {'synonyms_action': synonymsAction.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'synonyms_action': TfArg.literal(synonymsAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.promoteAction] choice: sets `promote_action`.
final class DiscoveryEngineControlActionPromoteAction
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlActionPromoteAction(this.promoteAction);

  final DiscoveryEngineControlPromoteAction promoteAction;

  @override
  String get blockKey => 'promote_action';

  @override
  Map<String, Object?> encode() => {'promote_action': promoteAction.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'promote_action': TfArg.literal(promoteAction.encode()),
  };
}

/// Typed helper for the `boost_action` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlBoostAction {
  const DiscoveryEngineControlBoostAction({
    required this.dataStore,
    required this.filter,
    required this.boost,
  });

  final TfArg<String> dataStore;

  final TfArg<String> filter;

  final DiscoveryEngineControlBoostActionBoost boost;

  Map<String, Object?> encode() => {
    'data_store': dataStore.toTfJson(),
    'filter': filter.toTfJson(),
    ...boost.encode(),
  };
}

/// Exactly one of `fixed_boost`, `interpolation_boost_spec` on the `boost_action` block of `google_discovery_engine_control`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.fixedBoost(...)`.
sealed class DiscoveryEngineControlBoostActionBoost {
  const DiscoveryEngineControlBoostActionBoost();

  /// Sets `fixed_boost`.
  const factory DiscoveryEngineControlBoostActionBoost.fixedBoost(
    TfArg<num> fixedBoost,
  ) = DiscoveryEngineControlBoostActionBoostFixedBoost;

  /// Sets `interpolation_boost_spec`.
  const factory DiscoveryEngineControlBoostActionBoost.interpolationBoostSpec(
    DiscoveryEngineControlBoostActionInterpolationBoostSpec
    interpolationBoostSpec,
  ) = DiscoveryEngineControlBoostActionBoostInterpolationBoostSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DiscoveryEngineControlBoostActionBoost.fixedBoost] choice: sets `fixed_boost`.
final class DiscoveryEngineControlBoostActionBoostFixedBoost
    extends DiscoveryEngineControlBoostActionBoost {
  const DiscoveryEngineControlBoostActionBoostFixedBoost(this.fixedBoost);

  final TfArg<num> fixedBoost;

  @override
  String get blockKey => 'fixed_boost';

  @override
  Map<String, Object?> encode() => {'fixed_boost': fixedBoost.toTfJson()};
}

/// The [DiscoveryEngineControlBoostActionBoost.interpolationBoostSpec] choice: sets `interpolation_boost_spec`.
final class DiscoveryEngineControlBoostActionBoostInterpolationBoostSpec
    extends DiscoveryEngineControlBoostActionBoost {
  const DiscoveryEngineControlBoostActionBoostInterpolationBoostSpec(
    this.interpolationBoostSpec,
  );

  final DiscoveryEngineControlBoostActionInterpolationBoostSpec
  interpolationBoostSpec;

  @override
  String get blockKey => 'interpolation_boost_spec';

  @override
  Map<String, Object?> encode() => {
    'interpolation_boost_spec': interpolationBoostSpec.encode(),
  };
}

/// Typed helper for the `boost_action.interpolation_boost_spec` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlBoostActionInterpolationBoostSpec {
  const DiscoveryEngineControlBoostActionInterpolationBoostSpec({
    this.attributeType,
    this.fieldName,
    this.interpolationType,
    this.controlPoint,
  });

  final TfArg<
    DiscoveryEngineControlBoostActionInterpolationBoostSpecAttributeType
  >?
  attributeType;

  final TfArg<String>? fieldName;

  final TfArg<String>? interpolationType;

  final DiscoveryEngineControlBoostActionInterpolationBoostSpecControlPoint?
  controlPoint;

  Map<String, Object?> encode() => {
    'attribute_type': ?attributeType?.toTfJson(),
    'field_name': ?fieldName?.toTfJson(),
    'interpolation_type': ?interpolationType?.toTfJson(),
    'control_point': ?controlPoint?.encode(),
  };
}

/// `attribute_type` — derived from the provider schema description.
enum DiscoveryEngineControlBoostActionInterpolationBoostSpecAttributeType
    implements TerraformEnum {
  numerical('NUMERICAL'),
  freshness('FRESHNESS');

  const DiscoveryEngineControlBoostActionInterpolationBoostSpecAttributeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `boost_action.interpolation_boost_spec.control_point` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlBoostActionInterpolationBoostSpecControlPoint {
  const DiscoveryEngineControlBoostActionInterpolationBoostSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  final TfArg<String>? attributeValue;

  final TfArg<num>? boostAmount;

  Map<String, Object?> encode() => {
    'attribute_value': ?attributeValue?.toTfJson(),
    'boost_amount': ?boostAmount?.toTfJson(),
  };
}

/// Typed helper for the `conditions` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlConditions {
  const DiscoveryEngineControlConditions({
    this.queryRegex,
    this.activeTimeRange,
    this.queryTerms,
  });

  final TfArg<String>? queryRegex;

  final List<DiscoveryEngineControlConditionsActiveTimeRange>? activeTimeRange;

  final List<DiscoveryEngineControlConditionsQueryTerms>? queryTerms;

  Map<String, Object?> encode() => {
    'query_regex': ?queryRegex?.toTfJson(),
    if (activeTimeRange != null)
      'active_time_range': [for (final e in activeTimeRange!) e.encode()],
    if (queryTerms != null)
      'query_terms': [for (final e in queryTerms!) e.encode()],
  };
}

/// Typed helper for the `conditions.active_time_range` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlConditionsActiveTimeRange {
  const DiscoveryEngineControlConditionsActiveTimeRange({
    this.endTime,
    this.startTime,
  });

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `conditions.query_terms` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlConditionsQueryTerms {
  const DiscoveryEngineControlConditionsQueryTerms({
    this.fullMatch,
    this.value,
  });

  final TfArg<bool>? fullMatch;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'full_match': ?fullMatch?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `filter_action` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlFilterAction {
  const DiscoveryEngineControlFilterAction({
    required this.dataStore,
    required this.filter,
  });

  final TfArg<String> dataStore;

  final TfArg<String> filter;

  Map<String, Object?> encode() => {
    'data_store': dataStore.toTfJson(),
    'filter': filter.toTfJson(),
  };
}

/// Typed helper for the `promote_action` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlPromoteAction {
  const DiscoveryEngineControlPromoteAction({
    required this.dataStore,
    required this.searchLinkPromotion,
  });

  final TfArg<String> dataStore;

  final DiscoveryEngineControlPromoteActionSearchLinkPromotion
  searchLinkPromotion;

  Map<String, Object?> encode() => {
    'data_store': dataStore.toTfJson(),
    'search_link_promotion': searchLinkPromotion.encode(),
  };
}

/// Typed helper for the `promote_action.search_link_promotion` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlPromoteActionSearchLinkPromotion {
  const DiscoveryEngineControlPromoteActionSearchLinkPromotion({
    this.description,
    this.document,
    this.enabled,
    this.imageUri,
    required this.title,
    this.uri,
  });

  final TfArg<String>? description;

  final TfArg<String>? document;

  final TfArg<bool>? enabled;

  final TfArg<String>? imageUri;

  final TfArg<String> title;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'document': ?document?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'image_uri': ?imageUri?.toTfJson(),
    'title': title.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Typed helper for the `redirect_action` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlRedirectAction {
  const DiscoveryEngineControlRedirectAction({required this.redirectUri});

  final TfArg<String> redirectUri;

  Map<String, Object?> encode() => {'redirect_uri': redirectUri.toTfJson()};
}

/// Typed helper for the `synonyms_action` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlSynonymsAction {
  const DiscoveryEngineControlSynonymsAction({this.synonyms});

  final TfArg<List<Object?>>? synonyms;

  Map<String, Object?> encode() => {'synonyms': ?synonyms?.toTfJson()};
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
    List<DiscoveryEngineControlConditions>? conditions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': ?collectionId,
           'engine_id': engineId,
           'control_id': controlId,
           'display_name': displayName,
           'solution_type': solutionType,
           'use_cases': ?useCases,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           ...action.argMap,
           if (conditions != null)
             'conditions': TfArg.literal([
               for (final e in conditions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineControl>`.
  RefTo<GoogleDiscoveryEngineControl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `control_id` attribute.
  TfRef<String> get controlIdRef => TfRef.attribute<String>(this, 'control_id');
}
