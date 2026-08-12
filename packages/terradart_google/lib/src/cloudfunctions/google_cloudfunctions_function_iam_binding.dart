// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions_function_iam_binding`.
const Set<String> _googleCloudfunctionsFunctionIamBindingSensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions_function_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Functions (1st gen) function.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudfunctionsFunctionIamMember] for additive grants.
/// Prefer [GoogleCloudfunctions2FunctionIamMember] for 2nd gen functions.
final class GoogleCloudfunctionsFunctionIamBinding extends Resource {
  static const String tfType = 'google_cloudfunctions_function_iam_binding';

  GoogleCloudfunctionsFunctionIamBinding({
    required super.localName,
    required TfArg<String> cloudFunction,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': cloudFunction,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctionsFunctionIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
