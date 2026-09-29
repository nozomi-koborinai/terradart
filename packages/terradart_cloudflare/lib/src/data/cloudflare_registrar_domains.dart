// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_registrar_domains`.
const Set<String> _cloudflareRegistrarDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_registrar_domains`.
final class DataCloudflareRegistrarDomains extends Data {
  static const String tfType = 'cloudflare_registrar_domains';

  DataCloudflareRegistrarDomains({
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
  Set<String> get sensitiveFields => _cloudflareRegistrarDomainsSensitive;
}
