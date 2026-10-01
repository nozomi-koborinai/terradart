// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_flagship_apps`.
const Set<String> _cloudflareFlagshipAppsSensitive = <String>{};

/// Factory wrapper for `cloudflare_flagship_apps`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipApps extends Data {
  static const String tfType = 'cloudflare_flagship_apps';

  DataCloudflareFlagshipApps({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipAppsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
