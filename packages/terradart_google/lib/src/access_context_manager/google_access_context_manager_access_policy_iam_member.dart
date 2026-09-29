// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_policy_iam_member`.
const Set<String> _googleAccessContextManagerAccessPolicyIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_access_context_manager_access_policy_iam_member`.
final class GoogleAccessContextManagerAccessPolicyIamMember extends Resource {
  static const String tfType =
      'google_access_context_manager_access_policy_iam_member';

  GoogleAccessContextManagerAccessPolicyIamMember({
    required super.localName,
    required TfArg<String> name,
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
           'name': name,
           'role': role,
           'member': member,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAccessPolicyIamMember>`.
  RefTo<GoogleAccessContextManagerAccessPolicyIamMember> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
