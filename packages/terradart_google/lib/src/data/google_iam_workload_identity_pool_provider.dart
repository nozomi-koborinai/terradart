// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iam/google_iam_workload_identity_pool_provider.dart';
import '../iam/google_iam_workload_identity_pool.dart'
    show GoogleIamWorkloadIdentityPool;

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
    required RefTo<GoogleIamWorkloadIdentityPool> workloadIdentityPoolId,
    required TfArg<String> workloadIdentityPoolProviderId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': ?project,
           'workload_identity_pool_id': workloadIdentityPoolId.encodeAs(
             'workload_identity_pool_id',
           ),
           'workload_identity_pool_provider_id': workloadIdentityPoolProviderId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolProviderSensitive;

  /// A reference to the `google_iam_workload_identity_pool_provider` this data source reads, for
  /// arguments typed `RefTo<GoogleIamWorkloadIdentityPoolProvider>`.
  RefTo<GoogleIamWorkloadIdentityPoolProvider> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_identity_pool_id` attribute.
  TfRef<String> get workloadIdentityPoolId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_id');

  /// Reference to `workload_identity_pool_provider_id` attribute.
  TfRef<String> get workloadIdentityPoolProviderId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_provider_id');
}
