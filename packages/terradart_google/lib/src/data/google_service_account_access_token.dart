// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_account_access_token`.
const Set<String> _googleServiceAccountAccessTokenSensitive = <String>{
  'access_token',
};

/// Factory wrapper for `google_service_account_access_token`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceAccountAccessToken extends Data {
  static const String tfType = 'google_service_account_access_token';

  DataGoogleServiceAccountAccessToken({
    required super.localName,
    TfArg<List<String>>? delegates,
    TfArg<String>? lifetime,
    required TfArg<List<String>> scopes,
    required TfArg<String> targetServiceAccount,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (delegates != null) 'delegates': delegates,
           if (lifetime != null) 'lifetime': lifetime,
           'scopes': scopes,
           'target_service_account': targetServiceAccount,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountAccessTokenSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_token` attribute.
  TfRef<String> get accessToken =>
      TfRef.attribute<String>(this, 'access_token');
}
