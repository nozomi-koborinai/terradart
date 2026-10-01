// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;

/// Sensitive field paths for `google_bigtable_instance_iam_policy`.
const Set<String> _googleBigtableInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigtable_instance_iam_policy`.
///
/// Authoritative IAM policy for a Bigtable instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigtableInstanceIamMember] for single-principal grants.
final class GoogleBigtableInstanceIamPolicy extends Resource {
  static const String tfType = 'google_bigtable_instance_iam_policy';

  GoogleBigtableInstanceIamPolicy(
    super.localName, {
    required RefTo<GoogleBigtableInstance> instance,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableInstanceIamPolicy>`.
  RefTo<GoogleBigtableInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
