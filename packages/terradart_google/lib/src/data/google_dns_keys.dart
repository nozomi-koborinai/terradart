// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_keys`.
const Set<String> _googleDnsKeysSensitive = <String>{};

/// Factory wrapper for `google_dns_keys`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDnsKeys extends Data {
  static const String tfType = 'google_dns_keys';

  DataGoogleDnsKeys({
    required super.localName,
    required TfArg<String> managedZone,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_signing_keys` attribute.
  TfRef<List<Map<String, Object?>>> get keySigningKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'key_signing_keys');

  /// Reference to `zone_signing_keys` attribute.
  TfRef<List<Map<String, Object?>>> get zoneSigningKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'zone_signing_keys');
}
