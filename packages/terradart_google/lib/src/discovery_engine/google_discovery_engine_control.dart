// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_search_engine.dart'
    show GoogleDiscoveryEngineSearchEngine;

/// Sensitive field paths for `google_discovery_engine_control`.
const Set<String> _googleDiscoveryEngineControlSensitive = <String>{};

/// Discovery Engine Control Solution enum for `solution_type`.
extension type const DiscoveryEngineControlSolutionType._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineControlSolutionType.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineControlSolutionType.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineControlSolutionType.arg(TfArg<String> arg) : this._(arg);

  static const solutionTypeRecommendation =
      DiscoveryEngineControlSolutionType._(
        TfArgLiteral('SOLUTION_TYPE_RECOMMENDATION'),
      );
  static const solutionTypeSearch = DiscoveryEngineControlSolutionType._(
    TfArgLiteral('SOLUTION_TYPE_SEARCH'),
  );
  static const solutionTypeChat = DiscoveryEngineControlSolutionType._(
    TfArgLiteral('SOLUTION_TYPE_CHAT'),
  );
  static const solutionTypeGenerativeChat =
      DiscoveryEngineControlSolutionType._(
        TfArgLiteral('SOLUTION_TYPE_GENERATIVE_CHAT'),
      );

  static const List<DiscoveryEngineControlSolutionType> values = [
    solutionTypeRecommendation,
    solutionTypeSearch,
    solutionTypeChat,
    solutionTypeGenerativeChat,
  ];
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
  ) = DiscoveryEngineControlBoostActionChoice;

  /// Sets `filter_action`.
  const factory DiscoveryEngineControlAction.filterAction(
    DiscoveryEngineControlFilterAction filterAction,
  ) = DiscoveryEngineControlFilterActionChoice;

  /// Sets `redirect_action`.
  const factory DiscoveryEngineControlAction.redirectAction(
    DiscoveryEngineControlRedirectAction redirectAction,
  ) = DiscoveryEngineControlRedirectActionChoice;

  /// Sets `synonyms_action`.
  const factory DiscoveryEngineControlAction.synonymsAction(
    DiscoveryEngineControlSynonymsAction synonymsAction,
  ) = DiscoveryEngineControlSynonymsActionChoice;

  /// Sets `promote_action`.
  const factory DiscoveryEngineControlAction.promoteAction(
    DiscoveryEngineControlPromoteAction promoteAction,
  ) = DiscoveryEngineControlPromoteActionChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DiscoveryEngineControlAction.boostAction] choice: sets `boost_action`.
final class DiscoveryEngineControlBoostActionChoice
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlBoostActionChoice(this.boostAction);

  final DiscoveryEngineControlBoostAction boostAction;

  @internal
  @override
  String get blockKey => 'boost_action';

  @internal
  @override
  Map<String, Object?> encode() => {'boost_action': boostAction.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'boost_action': TfArg.literal(boostAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.filterAction] choice: sets `filter_action`.
final class DiscoveryEngineControlFilterActionChoice
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlFilterActionChoice(this.filterAction);

  final DiscoveryEngineControlFilterAction filterAction;

  @internal
  @override
  String get blockKey => 'filter_action';

  @internal
  @override
  Map<String, Object?> encode() => {'filter_action': filterAction.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'filter_action': TfArg.literal(filterAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.redirectAction] choice: sets `redirect_action`.
final class DiscoveryEngineControlRedirectActionChoice
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlRedirectActionChoice(this.redirectAction);

  final DiscoveryEngineControlRedirectAction redirectAction;

  @internal
  @override
  String get blockKey => 'redirect_action';

  @internal
  @override
  Map<String, Object?> encode() => {'redirect_action': redirectAction.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'redirect_action': TfArg.literal(redirectAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.synonymsAction] choice: sets `synonyms_action`.
final class DiscoveryEngineControlSynonymsActionChoice
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlSynonymsActionChoice(this.synonymsAction);

  final DiscoveryEngineControlSynonymsAction synonymsAction;

  @internal
  @override
  String get blockKey => 'synonyms_action';

  @internal
  @override
  Map<String, Object?> encode() => {'synonyms_action': synonymsAction.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'synonyms_action': TfArg.literal(synonymsAction.encode()),
  };
}

/// The [DiscoveryEngineControlAction.promoteAction] choice: sets `promote_action`.
final class DiscoveryEngineControlPromoteActionChoice
    extends DiscoveryEngineControlAction {
  const DiscoveryEngineControlPromoteActionChoice(this.promoteAction);

  final DiscoveryEngineControlPromoteAction promoteAction;

  @internal
  @override
  String get blockKey => 'promote_action';

  @internal
  @override
  Map<String, Object?> encode() => {'promote_action': promoteAction.encode()};

  @internal
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

  final DiscoveryEngineControlBoost boost;

  @internal
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
sealed class DiscoveryEngineControlBoost {
  const DiscoveryEngineControlBoost();

  /// Sets `fixed_boost`.
  const factory DiscoveryEngineControlBoost.fixedBoost(TfArg<num> fixedBoost) =
      DiscoveryEngineControlFixedBoost;

  /// Sets `interpolation_boost_spec`.
  const factory DiscoveryEngineControlBoost.interpolationBoostSpec(
    DiscoveryEngineControlInterpolationBoostSpec interpolationBoostSpec,
  ) = DiscoveryEngineControlBoostInterpolationBoostSpec;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DiscoveryEngineControlBoost.fixedBoost] choice: sets `fixed_boost`.
final class DiscoveryEngineControlFixedBoost
    extends DiscoveryEngineControlBoost {
  const DiscoveryEngineControlFixedBoost(this.fixedBoost);

  final TfArg<num> fixedBoost;

  @internal
  @override
  String get blockKey => 'fixed_boost';

  @internal
  @override
  Map<String, Object?> encode() => {'fixed_boost': fixedBoost.toTfJson()};
}

/// The [DiscoveryEngineControlBoost.interpolationBoostSpec] choice: sets `interpolation_boost_spec`.
final class DiscoveryEngineControlBoostInterpolationBoostSpec
    extends DiscoveryEngineControlBoost {
  const DiscoveryEngineControlBoostInterpolationBoostSpec(
    this.interpolationBoostSpec,
  );

  final DiscoveryEngineControlInterpolationBoostSpec interpolationBoostSpec;

  @internal
  @override
  String get blockKey => 'interpolation_boost_spec';

  @internal
  @override
  Map<String, Object?> encode() => {
    'interpolation_boost_spec': interpolationBoostSpec.encode(),
  };
}

/// Typed helper for the `boost_action.interpolation_boost_spec` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlInterpolationBoostSpec {
  const DiscoveryEngineControlInterpolationBoostSpec({
    this.attributeType,
    this.fieldName,
    this.interpolationType,
    this.controlPoint,
  });

  final DiscoveryEngineControlAttributeType? attributeType;

  final TfArg<String>? fieldName;

  final TfArg<String>? interpolationType;

  final DiscoveryEngineControlPoint? controlPoint;

  @internal
  Map<String, Object?> encode() => {
    'attribute_type': ?attributeType?.toTfJson(),
    'field_name': ?fieldName?.toTfJson(),
    'interpolation_type': ?interpolationType?.toTfJson(),
    'control_point': ?controlPoint?.encode(),
  };
}

/// `attribute_type` — derived from the provider schema description.
extension type const DiscoveryEngineControlAttributeType._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineControlAttributeType.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineControlAttributeType.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineControlAttributeType.arg(TfArg<String> arg)
    : this._(arg);

  static const numerical = DiscoveryEngineControlAttributeType._(
    TfArgLiteral('NUMERICAL'),
  );
  static const freshness = DiscoveryEngineControlAttributeType._(
    TfArgLiteral('FRESHNESS'),
  );

  static const List<DiscoveryEngineControlAttributeType> values = [
    numerical,
    freshness,
  ];
}

/// Typed helper for the `boost_action.interpolation_boost_spec.control_point` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlPoint {
  const DiscoveryEngineControlPoint({this.attributeValue, this.boostAmount});

  final TfArg<String>? attributeValue;

  final TfArg<num>? boostAmount;

  @internal
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

  final List<DiscoveryEngineControlActiveTimeRange>? activeTimeRange;

  final List<DiscoveryEngineControlQueryTerms>? queryTerms;

  @internal
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
final class DiscoveryEngineControlActiveTimeRange {
  const DiscoveryEngineControlActiveTimeRange({this.endTime, this.startTime});

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  @internal
  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `conditions.query_terms` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlQueryTerms {
  const DiscoveryEngineControlQueryTerms({this.fullMatch, this.value});

  final TfArg<bool>? fullMatch;

  final TfArg<String>? value;

  @internal
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

  @internal
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

  final DiscoveryEngineControlSearchLinkPromotion searchLinkPromotion;

  @internal
  Map<String, Object?> encode() => {
    'data_store': dataStore.toTfJson(),
    'search_link_promotion': searchLinkPromotion.encode(),
  };
}

/// Typed helper for the `promote_action.search_link_promotion` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlSearchLinkPromotion {
  const DiscoveryEngineControlSearchLinkPromotion({
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'redirect_uri': redirectUri.toTfJson()};
}

/// Typed helper for the `synonyms_action` block of
/// `google_discovery_engine_control` (derived from provider schema).
@immutable
final class DiscoveryEngineControlSynonymsAction {
  const DiscoveryEngineControlSynonymsAction({this.synonyms});

  final TfArg<List<String>>? synonyms;

  @internal
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

  GoogleDiscoveryEngineControl(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? collectionId,
    required RefTo<GoogleDiscoveryEngineSearchEngine> engineId,
    required TfArg<String> controlId,
    required TfArg<String> displayName,
    required DiscoveryEngineControlSolutionType solutionType,
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
           'engine_id': engineId.encodeAs('engine_id'),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `control_id` attribute.
  TfRef<String> get controlId => TfRef.attribute<String>(this, 'control_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `solution_type` attribute.
  TfRef<String> get solutionType =>
      TfRef.attribute<String>(this, 'solution_type');

  /// Reference to `use_cases` attribute.
  TfRef<List<String>> get useCases =>
      TfRef.attribute<List<String>>(this, 'use_cases');
}
