// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_mtls_certificates`.
const Set<String> _cloudflareMtlsCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_mtls_certificates`.
final class DataCloudflareMtlsCertificates extends Data {
  static const String tfType = 'cloudflare_mtls_certificates';

  DataCloudflareMtlsCertificates({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMtlsCertificatesSensitive;
}
