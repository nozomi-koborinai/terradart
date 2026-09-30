// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring_iam_member`.
const Set<String> _googleKmsKeyRingIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_kms_key_ring_iam_member` (derived from provider schema).
@immutable
final class KmsKeyRingIamMemberCondition {
  const KmsKeyRingIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_kms_key_ring_iam_member`.
final class GoogleKmsKeyRingIamMember extends Resource {
  static const String tfType = 'google_kms_key_ring_iam_member';

  GoogleKmsKeyRingIamMember({
    required super.localName,
    required TfArg<String> keyRingId,
    required TfArg<String> role,
    required TfArg<String> member,
    KmsKeyRingIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_ring_id': keyRingId,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsKeyRingIamMember>`.
  RefTo<GoogleKmsKeyRingIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key_ring_id` attribute.
  TfRef<String> get keyRingIdRef =>
      TfRef.attribute<String>(this, 'key_ring_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
