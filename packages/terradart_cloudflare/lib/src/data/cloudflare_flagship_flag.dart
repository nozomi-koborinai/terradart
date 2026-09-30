// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../flagship/cloudflare_flagship_flag.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_flagship_flag`.
const Set<String> _cloudflareFlagshipFlagSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class DataFlagshipFlagFilter {
  const DataFlagshipFlagFilter({this.limit});

  final TfArg<String>? limit;

  Map<String, Object?> encode() => {'limit': ?limit?.toTfJson()};
}

/// Factory wrapper for `cloudflare_flagship_flag`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipFlag extends Data {
  static const String tfType = 'cloudflare_flagship_flag';

  DataCloudflareFlagshipFlag({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> appId,
    TfArg<String>? flagKey,
    DataFlagshipFlagFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'app_id': appId,
           'flag_key': ?flagKey,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipFlagSensitive;

  /// A reference to the `cloudflare_flagship_flag` this data source reads, for
  /// arguments typed `RefTo<CloudflareFlagshipFlag>`.
  RefTo<CloudflareFlagshipFlag> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_variation` attribute.
  TfRef<String> get defaultVariation =>
      TfRef.attribute<String>(this, 'default_variation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `updated_by` attribute.
  TfRef<String> get updatedBy => TfRef.attribute<String>(this, 'updated_by');

  /// Reference to `variations` attribute.
  TfRef<Map<String, String>> get variations =>
      TfRef.attribute<Map<String, String>>(this, 'variations');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appIdRef => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `flag_key` attribute.
  TfRef<String> get flagKeyRef => TfRef.attribute<String>(this, 'flag_key');
}
