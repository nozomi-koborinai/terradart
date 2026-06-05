// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring_iam_member`.
const Set<String> _googleKmsKeyRingIamMemberSensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring_iam_member`.
final class GoogleKmsKeyRingIamMember extends Resource {
  static const String tfType = 'google_kms_key_ring_iam_member';

  GoogleKmsKeyRingIamMember({
    required super.localName,
    required TfArg<String> keyRingId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_ring_id': keyRingId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
