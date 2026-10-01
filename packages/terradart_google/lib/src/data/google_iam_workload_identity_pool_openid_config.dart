// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_openid_config`.
const Set<String> _googleIamWorkloadIdentityPoolOpenidConfigSensitive =
    <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_openid_config`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamWorkloadIdentityPoolOpenidConfig extends Data {
  static const String tfType =
      'google_iam_workload_identity_pool_openid_config';

  DataGoogleIamWorkloadIdentityPoolOpenidConfig(
    super.localName, {
    required TfArg<String> resourceName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'resource_name': resourceName});

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolOpenidConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_endpoint` attribute.
  TfRef<String> get authorizationEndpoint =>
      TfRef.attribute<String>(this, 'authorization_endpoint');

  /// Reference to `id_token_signing_alg_values_supported` attribute.
  TfRef<List<String>> get idTokenSigningAlgValuesSupported =>
      TfRef.attribute<List<String>>(
        this,
        'id_token_signing_alg_values_supported',
      );

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `jwks_uri` attribute.
  TfRef<String> get jwksUri => TfRef.attribute<String>(this, 'jwks_uri');

  /// Reference to `response_types_supported` attribute.
  TfRef<List<String>> get responseTypesSupported =>
      TfRef.attribute<List<String>>(this, 'response_types_supported');

  /// Reference to `subject_types_supported` attribute.
  TfRef<List<String>> get subjectTypesSupported =>
      TfRef.attribute<List<String>>(this, 'subject_types_supported');

  /// Reference to `token_endpoint` attribute.
  TfRef<String> get tokenEndpoint =>
      TfRef.attribute<String>(this, 'token_endpoint');

  /// Reference to `resource_name` attribute.
  TfRef<String> get resourceName =>
      TfRef.attribute<String>(this, 'resource_name');
}
