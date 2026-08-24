// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_csr`.
const Set<String> _cloudflareCustomCsrSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_csr`.
///
/// Accepted Permissions
///
/// - `Account: SSL and Certificates Read` - `Account: SSL and Certificates
/// Write`
final class CloudflareCustomCsr extends Resource {
  static const String tfType = 'cloudflare_custom_csr';

  CloudflareCustomCsr({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> commonName,
    required TfArg<String> country,
    TfArg<String>? description,
    TfArg<String>? keyType,
    required TfArg<String> locality,
    TfArg<String>? name,
    required TfArg<String> organization,
    TfArg<String>? organizationalUnit,
    required TfArg<List<String>> sans,
    required TfArg<String> state,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'common_name': commonName,
           'country': country,
           if (description != null) 'description': description,
           if (keyType != null) 'key_type': keyType,
           'locality': locality,
           if (name != null) 'name': name,
           'organization': organization,
           if (organizationalUnit != null)
             'organizational_unit': organizationalUnit,
           'sans': sans,
           'state': state,
           if (zoneId != null) 'zone_id': zoneId,
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

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');
}
