// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dns/google_dns_managed_zone.dart' show GoogleDnsManagedZone;

/// Sensitive field paths for `google_dns_keys`.
const Set<String> _googleDnsKeysSensitive = <String>{};

/// Factory wrapper for `google_dns_keys`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDnsKeys extends Data {
  static const String tfType = 'google_dns_keys';

  DataGoogleDnsKeys(
    super.localName, {
    required RefTo<GoogleDnsManagedZone> managedZone,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone.encodeAs('name'),
           'project': ?project,
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

  /// Reference to `managed_zone` attribute.
  TfRef<String> get managedZone =>
      TfRef.attribute<String>(this, 'managed_zone');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
