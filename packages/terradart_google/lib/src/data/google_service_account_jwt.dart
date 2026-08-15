// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_account_jwt`.
const Set<String> _googleServiceAccountJwtSensitive = <String>{'jwt'};

/// Factory wrapper for `google_service_account_jwt`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceAccountJwt extends Data {
  static const String tfType = 'google_service_account_jwt';

  DataGoogleServiceAccountJwt({
    required super.localName,
    TfArg<List<String>>? delegates,
    TfArg<num>? expiresIn,
    required TfArg<String> payload,
    required TfArg<String> targetServiceAccount,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (delegates != null) 'delegates': delegates,
           if (expiresIn != null) 'expires_in': expiresIn,
           'payload': payload,
           'target_service_account': targetServiceAccount,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountJwtSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `jwt` attribute.
  TfRef<String> get jwt => TfRef.attribute<String>(this, 'jwt');
}
