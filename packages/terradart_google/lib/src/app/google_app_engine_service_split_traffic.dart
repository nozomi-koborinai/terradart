// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_service_split_traffic`.
const Set<String> _googleAppEngineServiceSplitTrafficSensitive = <String>{};

/// Typed helper for the `split` block of
/// `google_app_engine_service_split_traffic` (derived from provider schema).
@immutable
final class AppEngineServiceSplitTrafficSplit {
  const AppEngineServiceSplitTrafficSplit({
    required this.allocations,
    this.shardBy,
  });

  final TfArg<Map<String, String>> allocations;

  final AppEngineServiceSplitTrafficShardBy? shardBy;

  @internal
  Map<String, Object?> encode() => {
    'allocations': allocations.toTfJson(),
    'shard_by': ?shardBy?.toTfJson(),
  };
}

/// `shard_by` — derived from the provider schema description.
extension type const AppEngineServiceSplitTrafficShardBy._(TfArg<String> _)
    implements TfArg<String> {
  AppEngineServiceSplitTrafficShardBy.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineServiceSplitTrafficShardBy.expression(String template)
    : this._(TfArg.expression(template));
  const AppEngineServiceSplitTrafficShardBy.arg(TfArg<String> arg)
    : this._(arg);

  static const unspecified = AppEngineServiceSplitTrafficShardBy._(
    TfArgLiteral('UNSPECIFIED'),
  );
  static const cookie = AppEngineServiceSplitTrafficShardBy._(
    TfArgLiteral('COOKIE'),
  );
  static const ip = AppEngineServiceSplitTrafficShardBy._(TfArgLiteral('IP'));
  static const random = AppEngineServiceSplitTrafficShardBy._(
    TfArgLiteral('RANDOM'),
  );

  static const List<AppEngineServiceSplitTrafficShardBy> values = [
    unspecified,
    cookie,
    ip,
    random,
  ];
}

/// Factory wrapper for `google_app_engine_service_split_traffic`.
///
/// Traffic routing configuration for versions within a single service. Traffic
/// splits define how traffic directed to the service is assigned to versions.
final class GoogleAppEngineServiceSplitTraffic extends Resource {
  static const String tfType = 'google_app_engine_service_split_traffic';

  GoogleAppEngineServiceSplitTraffic(
    super.localName, {
    required TfArg<String> service,
    required AppEngineServiceSplitTrafficSplit split,
    TfArg<bool>? migrateTraffic,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'split': TfArg.literal(split.encode()),
           'migrate_traffic': ?migrateTraffic,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineServiceSplitTrafficSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineServiceSplitTraffic>`.
  RefTo<GoogleAppEngineServiceSplitTraffic> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `migrate_traffic` attribute.
  TfRef<bool> get migrateTraffic =>
      TfRef.attribute<bool>(this, 'migrate_traffic');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
