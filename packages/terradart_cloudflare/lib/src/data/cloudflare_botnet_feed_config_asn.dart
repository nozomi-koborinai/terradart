// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_botnet_feed_config_asn`.
const Set<String> _cloudflareBotnetFeedConfigAsnSensitive = <String>{};

/// Factory wrapper for `cloudflare_botnet_feed_config_asn`.
///
/// Accepted Permissions
///
/// - `DDoS Botnet Feed Read` - `DDoS Botnet Feed Write`
final class DataCloudflareBotnetFeedConfigAsn extends Data {
  static const String tfType = 'cloudflare_botnet_feed_config_asn';

  DataCloudflareBotnetFeedConfigAsn(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareBotnetFeedConfigAsnSensitive;

  /// Reference to `asn` attribute.
  TfRef<num> get asn => TfRef.attribute<num>(this, 'asn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
