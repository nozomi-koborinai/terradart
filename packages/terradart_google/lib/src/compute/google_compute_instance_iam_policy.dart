// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;

/// Sensitive field paths for `google_compute_instance_iam_policy`.
const Set<String> _googleComputeInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_instance_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleComputeInstanceIamMember] for single-principal grants.
final class GoogleComputeInstanceIamPolicy extends Resource {
  static const String tfType = 'google_compute_instance_iam_policy';

  GoogleComputeInstanceIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeInstance> instance,
    required TfArg<String> policyData,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instance.encodeAs('name'),
           'policy_data': policyData,
           'zone': ?(zone ?? instance.alsoAs('zone')),
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceIamPolicy>`.
  RefTo<GoogleComputeInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
