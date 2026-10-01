// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../pages/cloudflare_custom_page_asset.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_page_asset`.
const Set<String> _cloudflareCustomPageAssetSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_page_asset`.
final class DataCloudflareCustomPageAsset extends Data {
  static const String tfType = 'cloudflare_custom_page_asset';

  DataCloudflareCustomPageAsset({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> assetName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'asset_name': assetName,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPageAssetSensitive;

  /// A reference to the `cloudflare_custom_page_asset` this data source reads, for
  /// arguments typed `RefTo<CloudflareCustomPageAsset>`.
  RefTo<CloudflareCustomPageAsset> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `size_bytes` attribute.
  TfRef<num> get sizeBytes => TfRef.attribute<num>(this, 'size_bytes');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `asset_name` attribute.
  TfRef<String> get assetName => TfRef.attribute<String>(this, 'asset_name');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
