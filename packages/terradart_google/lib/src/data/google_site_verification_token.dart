// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_site_verification_token`.
const Set<String> _googleSiteVerificationTokenSensitive = <String>{};

/// Factory wrapper for `google_site_verification_token`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSiteVerificationToken extends Data {
  static const String tfType = 'google_site_verification_token';

  DataGoogleSiteVerificationToken({
    required super.localName,
    required TfArg<String> identifier,
    required TfArg<String> type,
    required TfArg<String> verificationMethod,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           'type': type,
           'verification_method': verificationMethod,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSiteVerificationTokenSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');
}
