// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_jwks`.
const Set<String> _googleIamWorkloadIdentityPoolJwksSensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_jwks`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamWorkloadIdentityPoolJwks extends Data {
  static const String tfType = 'google_iam_workload_identity_pool_jwks';

  DataGoogleIamWorkloadIdentityPoolJwks(
    super.localName, {
    required TfArg<String> resourceName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'resource_name': resourceName});

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolJwksSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `jwks_json` attribute.
  TfRef<String> get jwksJson => TfRef.attribute<String>(this, 'jwks_json');

  /// Reference to `keys` attribute.
  TfRef<List<Map<String, Object?>>> get keys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'keys');

  /// Reference to `resource_name` attribute.
  TfRef<String> get resourceName =>
      TfRef.attribute<String>(this, 'resource_name');
}
