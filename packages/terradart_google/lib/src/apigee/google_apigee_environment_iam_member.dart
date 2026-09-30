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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'env_id': envId,
           'role': role,
           'member': member,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironmentIamMember>`.
  RefTo<GoogleApigeeEnvironmentIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `env_id` attribute.
  TfRef<String> get envIdRef => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
