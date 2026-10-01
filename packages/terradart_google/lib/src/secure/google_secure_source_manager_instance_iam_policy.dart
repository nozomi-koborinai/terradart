// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../secure/google_secure_source_manager_instance.dart'
    show GoogleSecureSourceManagerInstance;

/// Sensitive field paths for `google_secure_source_manager_instance_iam_policy`.
const Set<String> _googleSecureSourceManagerInstanceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_secure_source_manager_instance_iam_policy`.
///
/// Authoritative IAM policy for a Secure Source Manager instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleSecureSourceManagerInstanceIamMember] for single-principal
/// grants. Deferred with the never_apply SSM instance (no apply-smoke
/// quickstart).
final class GoogleSecureSourceManagerInstanceIamPolicy extends Resource {
  static const String tfType =
      'google_secure_source_manager_instance_iam_policy';

  GoogleSecureSourceManagerInstanceIamPolicy({
    required super.localName,
    required RefTo<GoogleSecureSourceManagerInstance> instance,
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
           'instance_id': instance.encodeAs('instance_id'),
           'policy_data': policyData,
           'location': ?(location ?? instance.alsoAs('location')),
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerInstanceIamPolicy>`.
  RefTo<GoogleSecureSourceManagerInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
