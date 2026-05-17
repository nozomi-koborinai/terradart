// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret_iam_member`.
const Set<String> _googleSecretManagerSecretIamMemberSensitive = <String>{};

/// Factory wrapper for `google_secret_manager_secret_iam_member`.
///
/// Identity: `secretId` + `role` + `member`. The provider attribute is
/// `secret_id` (snake_case) — the factory translates `secretId` ↔ that key.
final class GoogleSecretManagerSecretIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_secret_manager_secret_iam_member';

  GoogleSecretManagerSecretIamMember({
    required super.localName,
    required TfArg<String> secretId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'secret_id': secretId,
            'role': role,
            'member': member,
            if (condition != null) 'condition': condition,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleSecretManagerSecretIamMemberSensitive;

  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
