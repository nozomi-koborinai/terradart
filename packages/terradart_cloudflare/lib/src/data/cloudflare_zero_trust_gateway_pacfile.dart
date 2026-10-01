// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_gateway_pacfile.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> pacfileId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'pacfile_id': pacfileId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayPacfileSensitive;

  /// A reference to the `cloudflare_zero_trust_gateway_pacfile` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustGatewayPacfile>`.
  RefTo<CloudflareZeroTrustGatewayPacfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `pacfile_id` attribute.
  TfRef<String> get pacfileId => TfRef.attribute<String>(this, 'pacfile_id');
}
