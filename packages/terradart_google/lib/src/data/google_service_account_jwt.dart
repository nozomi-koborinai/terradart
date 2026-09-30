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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delegates': ?delegates,
           'expires_in': ?expiresIn,
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

  /// Reference to `delegates` attribute.
  TfRef<List<String>> get delegatesRef =>
      TfRef.attribute<List<String>>(this, 'delegates');

  /// Reference to `expires_in` attribute.
  TfRef<num> get expiresInRef => TfRef.attribute<num>(this, 'expires_in');

  /// Reference to `payload` attribute.
  TfRef<String> get payloadRef => TfRef.attribute<String>(this, 'payload');

  /// Reference to `target_service_account` attribute.
  TfRef<String> get targetServiceAccountRef =>
      TfRef.attribute<String>(this, 'target_service_account');
}
