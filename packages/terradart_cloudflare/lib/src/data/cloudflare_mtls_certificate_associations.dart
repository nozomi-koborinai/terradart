// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_mtls_certificate_associations`.
const Set<String> _cloudflareMtlsCertificateAssociationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_mtls_certificate_associations`.
///
/// Accepted Permissions
///
/// - `Account: SSL and Certificates Read` - `Account: SSL and Certificates
/// Write`
final class DataCloudflareMtlsCertificateAssociations extends Data {
  static const String tfType = 'cloudflare_mtls_certificate_associations';

  DataCloudflareMtlsCertificateAssociations({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> mtlsCertificateId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'mtls_certificate_id': mtlsCertificateId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMtlsCertificateAssociationsSensitive;

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
