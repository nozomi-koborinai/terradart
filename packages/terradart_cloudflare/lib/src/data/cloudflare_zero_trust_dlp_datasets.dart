// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_datasets`.
const Set<String> _cloudflareZeroTrustDlpDatasetsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_datasets`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpDatasets extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_datasets';

  DataCloudflareZeroTrustDlpDatasets({
    required super.localName,
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
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDatasetsSensitive;
}
