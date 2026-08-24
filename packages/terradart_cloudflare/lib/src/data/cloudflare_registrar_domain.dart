// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_registrar_domain`.
const Set<String> _cloudflareRegistrarDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_registrar_domain`.
final class DataCloudflareRegistrarDomain extends Data {
  static const String tfType = 'cloudflare_registrar_domain';

  DataCloudflareRegistrarDomain({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> domainName,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'domain_name': domainName},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegistrarDomainSensitive;
}
