// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_iam_member`.
const Set<String> _googleIamWorkforcePoolIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iam_workforce_pool_iam_member`.
final class GoogleIamWorkforcePoolIamMember extends Resource {
  static const String tfType = 'google_iam_workforce_pool_iam_member';

  GoogleIamWorkforcePoolIamMember({
    required super.localName,
    required TfArg<String> workforcePoolId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workforce_pool_id': workforcePoolId,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
