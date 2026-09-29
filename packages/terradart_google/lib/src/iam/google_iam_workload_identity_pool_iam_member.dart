// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_iam_member`.
const Set<String> _googleIamWorkloadIdentityPoolIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_iam_member`.
final class GoogleIamWorkloadIdentityPoolIamMember extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_iam_member';

  GoogleIamWorkloadIdentityPoolIamMember({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'role': role,
           'member': member,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPoolIamMember>`.
  RefTo<GoogleIamWorkloadIdentityPoolIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
