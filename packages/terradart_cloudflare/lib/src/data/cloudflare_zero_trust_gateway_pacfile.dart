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
final class DataCloudflareZeroTrustGatewayPacfile extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_pacfile';

  DataCloudflareZeroTrustGatewayPacfile({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> pacfileId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'pacfile_id': pacfileId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayPacfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `contents` attribute.
  TfRef<String> get contents => TfRef.attribute<String>(this, 'contents');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `slug` attribute.
  TfRef<String> get slug => TfRef.attribute<String>(this, 'slug');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
