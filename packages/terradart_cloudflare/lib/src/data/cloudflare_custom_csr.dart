// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_csr`.
const Set<String> _cloudflareCustomCsrSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_custom_csr` (derived from provider schema).
@immutable
final class DataCustomCsrFilter {
  const DataCustomCsrFilter();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `cloudflare_custom_csr`.
///
/// Accepted Permissions
///
/// - `Account: SSL and Certificates Read` - `Account: SSL and Certificates
/// Write`
final class DataCloudflareCustomCsr extends Data {
  static const String tfType = 'cloudflare_custom_csr';

  DataCloudflareCustomCsr({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? customCsrId,
    TfArg<String>? zoneId,
    DataCustomCsrFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (customCsrId != null) 'custom_csr_id': customCsrId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomCsrSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `common_name` attribute.
  TfRef<String> get commonName => TfRef.attribute<String>(this, 'common_name');

  /// Reference to `country` attribute.
  TfRef<String> get country => TfRef.attribute<String>(this, 'country');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `locality` attribute.
  TfRef<String> get locality => TfRef.attribute<String>(this, 'locality');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `organizational_unit` attribute.
  TfRef<String> get organizationalUnit =>
      TfRef.attribute<String>(this, 'organizational_unit');

  /// Reference to `sans` attribute.
  TfRef<List<String>> get sans => TfRef.attribute<List<String>>(this, 'sans');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
