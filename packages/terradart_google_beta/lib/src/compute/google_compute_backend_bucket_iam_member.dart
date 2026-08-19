// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_bucket_iam_member`.
const Set<String> _googleComputeBackendBucketIamMemberSensitive = <String>{};

/// Factory wrapper for `google_compute_backend_bucket_iam_member`.
final class GoogleComputeBackendBucketIamMember extends Resource {
  static const String tfType = 'google_compute_backend_bucket_iam_member';

  GoogleComputeBackendBucketIamMember({
    required super.localName,
    required TfArg<String> member,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'member': member,
           'name': name,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendBucketIamMemberSensitive;
}
