// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_cloudforce_one_request_asset`.
const Set<String> _cloudflareCloudforceOneRequestAssetSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_request_asset`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class DataCloudflareCloudforceOneRequestAsset extends Data {
  static const String tfType = 'cloudflare_cloudforce_one_request_asset';

  DataCloudflareCloudforceOneRequestAsset({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> assetId,
    required TfArg<String> requestId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'asset_id': assetId,
           'request_id': requestId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestAssetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `file_type` attribute.
  TfRef<String> get fileType => TfRef.attribute<String>(this, 'file_type');
}
