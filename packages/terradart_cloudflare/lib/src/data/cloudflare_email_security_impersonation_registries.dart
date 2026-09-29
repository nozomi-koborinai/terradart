// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? provenance,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'provenance': ?provenance,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityImpersonationRegistriesSensitive;
}
