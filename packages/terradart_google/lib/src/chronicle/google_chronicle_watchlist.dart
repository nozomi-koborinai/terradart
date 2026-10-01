// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_watchlist`.
const Set<String> _googleChronicleWatchlistSensitive = <String>{};

/// Typed helper for the `entity_population_mechanism` block of
/// `google_chronicle_watchlist` (derived from provider schema).
@immutable
final class ChronicleWatchlistEntityPopulationMechanism {
  const ChronicleWatchlistEntityPopulationMechanism({this.manual});

  final ChronicleWatchlistManual? manual;

  Map<String, Object?> encode() => {'manual': ?manual?.encode()};
}

/// Typed helper for the `entity_population_mechanism.manual` block of
/// `google_chronicle_watchlist` (derived from provider schema).
@immutable
final class ChronicleWatchlistManual {
  const ChronicleWatchlistManual();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `watchlist_user_preferences` block of
/// `google_chronicle_watchlist` (derived from provider schema).
@immutable
final class ChronicleWatchlistUserPreferences {
  const ChronicleWatchlistUserPreferences({this.pinned});

  final TfArg<bool>? pinned;

  Map<String, Object?> encode() => {'pinned': ?pinned?.toTfJson()};
}

/// Factory wrapper for `google_chronicle_watchlist`.
///
/// A watchlist is a list of entities that allows for bulk operations over the
/// included entities.
///
/// Chronicle (Google SecOps) **watchlist** — entity watchlist used by
/// detections and risk scoring.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// watchlists sit on an entitlement-gated Chronicle instance and participate
/// in detection against billed ingestion. Not applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply.
/// [entityPopulationMechanism] is required.
final class GoogleChronicleWatchlist extends Resource {
  static const String tfType = 'google_chronicle_watchlist';

  GoogleChronicleWatchlist(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> instance,
    required ChronicleWatchlistEntityPopulationMechanism
    entityPopulationMechanism,
    TfArg<String>? watchlistId,
    TfArg<String>? description,
    TfArg<num>? multiplyingFactor,
    ChronicleWatchlistUserPreferences? watchlistUserPreferences,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'instance': instance,
           'entity_population_mechanism': TfArg.literal(
             entityPopulationMechanism.encode(),
           ),
           'watchlist_id': ?watchlistId,
           'description': ?description,
           'multiplying_factor': ?multiplyingFactor,
           if (watchlistUserPreferences != null)
             'watchlist_user_preferences': TfArg.literal(
               watchlistUserPreferences.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleWatchlistSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleWatchlist>`.
  RefTo<GoogleChronicleWatchlist> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `entity_count` attribute.
  TfRef<List<Map<String, Object?>>> get entityCount =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'entity_count');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `multiplying_factor` attribute.
  TfRef<num> get multiplyingFactor =>
      TfRef.attribute<num>(this, 'multiplying_factor');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `watchlist_id` attribute.
  TfRef<String> get watchlistId =>
      TfRef.attribute<String>(this, 'watchlist_id');
}
