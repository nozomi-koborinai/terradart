// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_regional_secret_iam_member`.
const Set<String> _googleSecretManagerRegionalSecretIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_secret_manager_regional_secret_iam_member`.
final class GoogleSecretManagerRegionalSecretIamMember extends Resource {
  static const String tfType =
      'google_secret_manager_regional_secret_iam_member';

  GoogleSecretManagerRegionalSecretIamMember({
    required super.localName,
    required TfArg<String> secretId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           if (location != null) 'location': location,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
