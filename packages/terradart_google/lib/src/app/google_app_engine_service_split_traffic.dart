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

  final TfArg<AppEngineServiceSplitTrafficSplitShardBy>? shardBy;

  Map<String, Object?> encode() => {
    'allocations': allocations.toTfJson(),
    if (shardBy != null) 'shard_by': shardBy!.toTfJson(),
  };
}

/// `shard_by` — derived from the provider schema description.
enum AppEngineServiceSplitTrafficSplitShardBy implements TerraformEnum {
  unspecified('UNSPECIFIED'),
  cookie('COOKIE'),
  ip('IP'),
  random('RANDOM');

  const AppEngineServiceSplitTrafficSplitShardBy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_app_engine_service_split_traffic`.
///
/// Traffic routing configuration for versions within a single service. Traffic
/// splits define how traffic directed to the service is assigned to versions.
final class GoogleAppEngineServiceSplitTraffic extends Resource {
  static const String tfType = 'google_app_engine_service_split_traffic';

  GoogleAppEngineServiceSplitTraffic({
    required super.localName,
    required TfArg<String> service,
    required AppEngineServiceSplitTrafficSplit split,
    TfArg<bool>? migrateTraffic,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'split': TfArg.literal(split.encode()),
           if (migrateTraffic != null) 'migrate_traffic': migrateTraffic,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineServiceSplitTrafficSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
