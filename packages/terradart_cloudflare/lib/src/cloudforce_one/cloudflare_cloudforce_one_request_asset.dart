// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_request_asset`.
const Set<String> _cloudflareCloudforceOneRequestAssetSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_request_asset`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class CloudflareCloudforceOneRequestAsset extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request_asset';

  CloudflareCloudforceOneRequestAsset({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<num> page,
    required TfArg<num> perPage,
    required TfArg<String> requestId,
    TfArg<String>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'page': page,
           'per_page': perPage,
           'request_id': requestId,
           'source': ?source,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestAssetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCloudforceOneRequestAsset>`.
  RefTo<CloudflareCloudforceOneRequestAsset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `file_type` attribute.
  TfRef<String> get fileType => TfRef.attribute<String>(this, 'file_type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `page` attribute.
  TfRef<num> get page => TfRef.attribute<num>(this, 'page');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `request_id` attribute.
  TfRef<String> get requestId => TfRef.attribute<String>(this, 'request_id');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
