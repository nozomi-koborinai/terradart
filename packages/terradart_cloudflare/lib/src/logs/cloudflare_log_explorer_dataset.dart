// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_log_explorer_dataset`.
const Set<String> _cloudflareLogExplorerDatasetSensitive = <String>{};

/// Exactly one of `account_id`, `zone_id` on `cloudflare_log_explorer_dataset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accountId(...)`.
sealed class LogExplorerDatasetScope {
  const LogExplorerDatasetScope();

  /// Sets `account_id`.
  const factory LogExplorerDatasetScope.accountId(
    RefTo<CloudflareAccount> accountId,
  ) = LogExplorerDatasetScopeAccountId;

  /// Sets `zone_id`.
  const factory LogExplorerDatasetScope.zoneId(RefTo<CloudflareZone> zoneId) =
      LogExplorerDatasetScopeZoneId;

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

/// The [LogExplorerDatasetScope.accountId] choice: sets `account_id`.
final class LogExplorerDatasetScopeAccountId extends LogExplorerDatasetScope {
  const LogExplorerDatasetScopeAccountId(this.accountId);

  final RefTo<CloudflareAccount> accountId;

  @internal
  @override
  String get blockKey => 'account_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'account_id': accountId.encodeAs('id').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'account_id': accountId.encodeAs('id'),
  };
}

/// The [LogExplorerDatasetScope.zoneId] choice: sets `zone_id`.
final class LogExplorerDatasetScopeZoneId extends LogExplorerDatasetScope {
  const LogExplorerDatasetScopeZoneId(this.zoneId);

  final RefTo<CloudflareZone> zoneId;

  @internal
  @override
  String get blockKey => 'zone_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'zone_id': zoneId.encodeAs('id').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'zone_id': zoneId.encodeAs('id')};
}

/// Typed helper for the `fields` block of
/// `cloudflare_log_explorer_dataset` (derived from provider schema).
@immutable
final class LogExplorerDatasetFields {
  const LogExplorerDatasetFields({required this.enabled, required this.name});

  final TfArg<bool> enabled;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_log_explorer_dataset`.
///
/// Accepted Permissions
///
/// - `Logs Read` - `Logs Write`
final class CloudflareLogExplorerDataset extends Resource {
  static const String tfType = 'cloudflare_log_explorer_dataset';

  CloudflareLogExplorerDataset(
    super.localName, {
    required LogExplorerDatasetScope scope,
    required TfArg<String> dataset,
    TfArg<bool>? deletionProtection,
    TfArg<bool>? enabled,
    TfArg<String>? filter,
    TfArg<bool>? filterAttackTraffic,
    List<LogExplorerDatasetFields>? fields,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...scope.argMap,
           'dataset': dataset,
           'deletion_protection': ?deletionProtection,
           'enabled': ?enabled,
           'filter': ?filter,
           'filter_attack_traffic': ?filterAttackTraffic,
           if (fields != null)
             'fields': TfArg.literal([for (final e in fields) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogExplorerDatasetSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLogExplorerDataset>`.
  RefTo<CloudflareLogExplorerDataset> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `object_type` attribute.
  TfRef<String> get objectType => TfRef.attribute<String>(this, 'object_type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `filter_attack_traffic` attribute.
  TfRef<bool> get filterAttackTraffic =>
      TfRef.attribute<bool>(this, 'filter_attack_traffic');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
