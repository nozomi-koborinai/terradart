// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_hyperdrive_configs`.
const Set<String> _cloudflareHyperdriveConfigsSensitive = <String>{
  'result.origin.access_client_secret',
  'result.origin.password',
};

/// Factory wrapper for `cloudflare_hyperdrive_configs`.
///
/// Accepted Permissions
///
/// - `Hyperdrive Read` - `Hyperdrive Write`
final class DataCloudflareHyperdriveConfigs extends Data {
  static const String tfType = 'cloudflare_hyperdrive_configs';

  DataCloudflareHyperdriveConfigs(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHyperdriveConfigsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
