// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeBackendService;

/// Sensitive field paths for `google_compute_backend_service_iam_policy`.
const Set<String> _googleComputeBackendServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_backend_service_iam_policy`.
///
/// Authoritative IAM policy for a Compute Backend Service.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleComputeBackendServiceIamMember] for additive grants.
final class GoogleComputeBackendServiceIamPolicy extends Resource {
  static const String tfType = 'google_compute_backend_service_iam_policy';

  GoogleComputeBackendServiceIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeBackendService> backendService,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'name': backendService.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? backendService.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendServiceIamPolicy>`.
  RefTo<GoogleComputeBackendServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
