// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_logpush_dataset_field`.
const Set<String> _cloudflareLogpushDatasetFieldSensitive = <String>{};

/// Factory wrapper for `cloudflare_logpush_dataset_field`.
///
/// Accepted Permissions
///
/// - `Logs Read`
final class DataCloudflareLogpushDatasetField extends Data {
  static const String tfType = 'cloudflare_logpush_dataset_field';

  DataCloudflareLogpushDatasetField({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? datasetId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'dataset_id': ?datasetId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushDatasetFieldSensitive;

  /// Reference to `fields` attribute.
  TfRef<Map<String, String>> get fields =>
      TfRef.attribute<Map<String, String>>(this, 'fields');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetIdRef => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
