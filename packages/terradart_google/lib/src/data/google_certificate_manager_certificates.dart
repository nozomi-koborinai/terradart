// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificates`.
const Set<String> _googleCertificateManagerCertificatesSensitive = <String>{};

/// Factory wrapper for `google_certificate_manager_certificates`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCertificateManagerCertificates extends Data {
  static const String tfType = 'google_certificate_manager_certificates';

  DataGoogleCertificateManagerCertificates({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificatesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificates` attribute.
  TfRef<List<Map<String, Object?>>> get certificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certificates');
}
