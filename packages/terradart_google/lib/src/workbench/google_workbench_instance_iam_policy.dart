// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../workbench/google_workbench_instance.dart'
    show GoogleWorkbenchInstance;

/// Sensitive field paths for `google_workbench_instance_iam_policy`.
const Set<String> _googleWorkbenchInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_workbench_instance_iam_policy`.
///
/// Authoritative IAM policy for a Vertex AI Workbench instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleWorkbenchInstanceIamMember] for single-principal grants.
/// Deferred with the never_apply Workbench instance (no apply-smoke
/// quickstart).
final class GoogleWorkbenchInstanceIamPolicy extends Resource {
  static const String tfType = 'google_workbench_instance_iam_policy';

  GoogleWorkbenchInstanceIamPolicy({
    required super.localName,
    required RefTo<GoogleWorkbenchInstance> instance,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instance.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? instance.alsoAs('location')),
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkbenchInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkbenchInstanceIamPolicy>`.
  RefTo<GoogleWorkbenchInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
