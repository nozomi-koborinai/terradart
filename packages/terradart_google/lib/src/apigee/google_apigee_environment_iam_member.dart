// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_iam_member`.
const Set<String> _googleApigeeEnvironmentIamMemberSensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_iam_member`.
final class GoogleApigeeEnvironmentIamMember extends Resource {
  static const String tfType = 'google_apigee_environment_iam_member';

  GoogleApigeeEnvironmentIamMember({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> envId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'env_id': envId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
