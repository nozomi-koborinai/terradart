// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_iam_binding`.
const Set<String> _googleApigeeEnvironmentIamBindingSensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an Apigee environment.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleApigeeEnvironmentIamMember] for additive grants.
final class GoogleApigeeEnvironmentIamBinding extends Resource {
  static const String tfType = 'google_apigee_environment_iam_binding';

  GoogleApigeeEnvironmentIamBinding({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> envId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'env_id': envId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
