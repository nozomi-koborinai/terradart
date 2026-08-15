// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_client_openid_userinfo`.
const Set<String> _googleClientOpenidUserinfoSensitive = <String>{};

/// Factory wrapper for `google_client_openid_userinfo`.
///
/// Get OpenID userinfo about the credentials used with the Google provider,
/// specifically the email. This datasource enables you to export the email of
/// the account you've authenticated the provider with; this can be used
/// alongside data.google_client_config's access_token to perform OpenID Connect
/// authentication with GKE and configure an RBAC role for the email used.
///
/// ~> This resource will only work as expected if the provider is configured to
/// use the https://www.googleapis.com/auth/userinfo.email scope! You will
/// receive an error otherwise. The provider uses this scope by default.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleClientOpenidUserinfo extends Data {
  static const String tfType = 'google_client_openid_userinfo';

  DataGoogleClientOpenidUserinfo({required super.localName})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _googleClientOpenidUserinfoSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');
}
