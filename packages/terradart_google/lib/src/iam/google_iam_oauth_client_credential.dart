// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_oauth_client_credential`.
const Set<String> _googleIamOauthClientCredentialSensitive = <String>{
  'client_secret',
};

/// Factory wrapper for `google_iam_oauth_client_credential`.
///
/// Represents an OAuth Client Credential. Used to authenticate an OAuth Client
/// while accessing Google Cloud resources on behalf of a Workforce Identity
/// Federation user by using OAuth 2.0 Protocol.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIamOauthClientCredential extends Resource {
  static const String tfType = 'google_iam_oauth_client_credential';

  GoogleIamOauthClientCredential({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disabled,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> oauthClientCredentialId,
    required TfArg<String> oauthclient,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disabled != null) 'disabled': disabled,
           if (displayName != null) 'display_name': displayName,
           'location': location,
           'oauth_client_credential_id': oauthClientCredentialId,
           'oauthclient': oauthclient,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamOauthClientCredentialSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');
}
