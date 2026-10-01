// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../hyperdrive/cloudflare_hyperdrive_config.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_hyperdrive_config`.
const Set<String> _cloudflareHyperdriveConfigSensitive = <String>{
  'origin.access_client_secret',
  'origin.password',
};

/// Factory wrapper for `cloudflare_hyperdrive_config`.
///
/// Accepted Permissions
///
/// - `Hyperdrive Read` - `Hyperdrive Write`
final class DataCloudflareHyperdriveConfig extends Data {
  static const String tfType = 'cloudflare_hyperdrive_config';

  DataCloudflareHyperdriveConfig({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> hyperdriveId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'hyperdrive_id': hyperdriveId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHyperdriveConfigSensitive;

  /// A reference to the `cloudflare_hyperdrive_config` this data source reads, for
  /// arguments typed `RefTo<CloudflareHyperdriveConfig>`.
  RefTo<CloudflareHyperdriveConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `origin_connection_limit` attribute.
  TfRef<num> get originConnectionLimit =>
      TfRef.attribute<num>(this, 'origin_connection_limit');

  /// Reference to `restarted_on` attribute.
  TfRef<String> get restartedOn =>
      TfRef.attribute<String>(this, 'restarted_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `hyperdrive_id` attribute.
  TfRef<String> get hyperdriveId =>
      TfRef.attribute<String>(this, 'hyperdrive_id');
}
