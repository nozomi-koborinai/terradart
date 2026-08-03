// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> instanceId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
