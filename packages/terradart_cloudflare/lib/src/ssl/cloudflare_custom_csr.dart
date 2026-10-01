// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_csr`.
const Set<String> _cloudflareCustomCsrSensitive = <String>{};

/// Custom Csr Key enum for `key_type`.
enum CustomCsrKeyType implements TerraformEnum {
  rsa2048('rsa2048'),
  p256v1('p256v1');

  const CustomCsrKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_custom_csr`.
///
/// Accepted Permissions
///
/// - `Account: SSL and Certificates Read` - `Account: SSL and Certificates
/// Write`
final class CloudflareCustomCsr extends Resource {
  static const String tfType = 'cloudflare_custom_csr';

  CloudflareCustomCsr(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> commonName,
    required TfArg<String> country,
    TfArg<String>? description,
    TfArg<CustomCsrKeyType>? keyType,
    required TfArg<String> locality,
    TfArg<String>? name,
    required TfArg<String> organization,
    TfArg<String>? organizationalUnit,
    required TfArg<List<String>> sans,
    required TfArg<String> state,
    RefTo<CloudflareZone>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'common_name': commonName,
           'country': country,
           'description': ?description,
           'key_type': ?keyType,
           'locality': locality,
           'name': ?name,
           'organization': organization,
           'organizational_unit': ?organizationalUnit,
           'sans': sans,
           'state': state,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomCsrSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCustomCsr>`.
  RefTo<CloudflareCustomCsr> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `common_name` attribute.
  TfRef<String> get commonName => TfRef.attribute<String>(this, 'common_name');

  /// Reference to `country` attribute.
  TfRef<String> get country => TfRef.attribute<String>(this, 'country');

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

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
