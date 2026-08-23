// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_registrar_domain`.
const Set<String> _cloudflareRegistrarDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_registrar_domain`.
final class CloudflareRegistrarDomain extends Resource {
  static const String tfType = 'cloudflare_registrar_domain';

  CloudflareRegistrarDomain({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? autoRenew,
    required TfArg<String> domainName,
    TfArg<bool>? locked,
    TfArg<bool>? privacy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (autoRenew != null) 'auto_renew': autoRenew,
           'domain_name': domainName,
           if (locked != null) 'locked': locked,
           if (privacy != null) 'privacy': privacy,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegistrarDomainSensitive;
}
