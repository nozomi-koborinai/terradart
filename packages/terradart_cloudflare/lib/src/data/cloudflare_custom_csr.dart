// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_custom_csr.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? customCsrId,
    RefTo<CloudflareZone>? zoneId,
    DataCustomCsrFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'custom_csr_id': ?customCsrId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomCsrSensitive;

  /// A reference to the `cloudflare_custom_csr` this data source reads, for
  /// arguments typed `RefTo<CloudflareCustomCsr>`.
  RefTo<CloudflareCustomCsr> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
