// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_impersonation_registries`.
const Set<String> _cloudflareEmailSecurityImpersonationRegistriesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_email_security_impersonation_registries`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityImpersonationRegistries extends Data {
  static const String tfType =
      'cloudflare_email_security_impersonation_registries';

  DataCloudflareEmailSecurityImpersonationRegistries({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? provenance,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (provenance != null) 'provenance': provenance,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityImpersonationRegistriesSensitive;
}
