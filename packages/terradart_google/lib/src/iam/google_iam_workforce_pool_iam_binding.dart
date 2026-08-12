// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_iam_binding`.
const Set<String> _googleIamWorkforcePoolIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iam_workforce_pool_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Workforce Identity Federation pool.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIamWorkforcePoolIamMember] for additive grants.
final class GoogleIamWorkforcePoolIamBinding extends Resource {
  static const String tfType = 'google_iam_workforce_pool_iam_binding';

  GoogleIamWorkforcePoolIamBinding({
    required super.localName,
    required TfArg<String> workforcePoolId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workforce_pool_id': workforcePoolId,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
