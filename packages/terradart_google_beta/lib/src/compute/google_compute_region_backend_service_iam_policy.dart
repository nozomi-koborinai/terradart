// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeRegionBackendService;

/// Sensitive field paths for `google_compute_region_backend_service_iam_policy`.
const Set<String> _googleComputeRegionBackendServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_backend_service_iam_policy`.
///
/// Authoritative IAM policy for a Compute Region Backend Service.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleComputeRegionBackendServiceIamMember] for additive grants.
final class GoogleComputeRegionBackendServiceIamPolicy extends Resource {
  static const String tfType =
      'google_compute_region_backend_service_iam_policy';

  GoogleComputeRegionBackendServiceIamPolicy({
    required super.localName,
    required RefTo<GoogleComputeRegionBackendService> backendService,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
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
           'region': ?(region ?? backendService.alsoAs('region')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionBackendServiceIamPolicy>`.
  RefTo<GoogleComputeRegionBackendServiceIamPolicy> get ref => RefTo.of(this);

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
