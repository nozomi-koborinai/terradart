// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_provider`.
const Set<String> _googleIamWorkloadIdentityPoolProviderSensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_provider`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamWorkloadIdentityPoolProvider extends Data {
  static const String tfType = 'google_iam_workload_identity_pool_provider';

  DataGoogleIamWorkloadIdentityPoolProvider({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> workloadIdentityPoolProviderId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'workload_identity_pool_id': workloadIdentityPoolId,
           'workload_identity_pool_provider_id': workloadIdentityPoolProviderId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attribute_condition` attribute.
  TfRef<String> get attributeCondition =>
      TfRef.attribute<String>(this, 'attribute_condition');

  /// Reference to `attribute_mapping` attribute.
  TfRef<Map<String, String>> get attributeMapping =>
      TfRef.attribute<Map<String, String>>(this, 'attribute_mapping');

  /// Reference to `aws` attribute.
  TfRef<List<Map<String, Object?>>> get aws =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'aws');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `oidc` attribute.
  TfRef<List<Map<String, Object?>>> get oidc =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'oidc');

  /// Reference to `saml` attribute.
  TfRef<List<Map<String, Object?>>> get saml =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'saml');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `x509` attribute.
  TfRef<List<Map<String, Object?>>> get x509 =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'x509');
}
