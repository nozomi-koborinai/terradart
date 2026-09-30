// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_account_id_token`.
const Set<String> _googleServiceAccountIdTokenSensitive = <String>{'id_token'};

/// Factory wrapper for `google_service_account_id_token`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceAccountIdToken extends Data {
  static const String tfType = 'google_service_account_id_token';

  DataGoogleServiceAccountIdToken({
    required super.localName,
    TfArg<List<String>>? delegates,
    TfArg<bool>? includeEmail,
    required TfArg<String> targetAudience,
    TfArg<String>? targetServiceAccount,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delegates': ?delegates,
           'include_email': ?includeEmail,
           'target_audience': targetAudience,
           'target_service_account': ?targetServiceAccount,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountIdTokenSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id_token` attribute.
  TfRef<String> get idToken => TfRef.attribute<String>(this, 'id_token');

  /// Reference to `delegates` attribute.
  TfRef<List<String>> get delegatesRef =>
      TfRef.attribute<List<String>>(this, 'delegates');

  /// Reference to `include_email` attribute.
  TfRef<bool> get includeEmailRef =>
      TfRef.attribute<bool>(this, 'include_email');

  /// Reference to `target_audience` attribute.
  TfRef<String> get targetAudienceRef =>
      TfRef.attribute<String>(this, 'target_audience');

  /// Reference to `target_service_account` attribute.
  TfRef<String> get targetServiceAccountRef =>
      TfRef.attribute<String>(this, 'target_service_account');
}
