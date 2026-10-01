// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../kms/google_kms_key_ring.dart' show GoogleKmsKeyRing;

/// Sensitive field paths for `google_kms_key_ring_iam_binding`.
const Set<String> _googleKmsKeyRingIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_kms_key_ring_iam_binding` (derived from provider schema).
@immutable
final class KmsKeyRingIamBindingCondition {
  const KmsKeyRingIamBindingCondition({
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

/// Factory wrapper for `google_kms_key_ring_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud KMS key ring.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleKmsKeyRingIamMember] for additive grants.
final class GoogleKmsKeyRingIamBinding extends Resource {
  static const String tfType = 'google_kms_key_ring_iam_binding';

  GoogleKmsKeyRingIamBinding(
    super.localName, {
    required RefTo<GoogleKmsKeyRing> keyRing,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    KmsKeyRingIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_ring_id': keyRing.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsKeyRingIamBinding>`.
  RefTo<GoogleKmsKeyRingIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key_ring_id` attribute.
  TfRef<String> get keyRingId => TfRef.attribute<String>(this, 'key_ring_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
