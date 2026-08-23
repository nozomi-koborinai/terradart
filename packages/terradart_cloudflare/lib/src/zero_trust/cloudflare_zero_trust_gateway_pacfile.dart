// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_pacfile`.
const Set<String> _cloudflareZeroTrustGatewayPacfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_pacfile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustGatewayPacfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_pacfile';

  CloudflareZeroTrustGatewayPacfile({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> contents,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? slug,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'contents': contents,
           if (description != null) 'description': description,
           'name': name,
           if (slug != null) 'slug': slug,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayPacfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
