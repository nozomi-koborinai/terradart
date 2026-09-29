// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloudforce_one/cloudflare_cloudforce_one_request_asset.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> assetId,
    required TfArg<String> requestId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'asset_id': assetId,
           'request_id': requestId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestAssetSensitive;

  /// A reference to the `cloudflare_cloudforce_one_request_asset` this data source reads, for
  /// arguments typed `RefTo<CloudflareCloudforceOneRequestAsset>`.
  RefTo<CloudflareCloudforceOneRequestAsset> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
