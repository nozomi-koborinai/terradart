// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_kms_crypto_key_iam_binding`.
const Set<String> _googleKmsCryptoKeyIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_kms_crypto_key_iam_binding` (derived from provider schema).
@immutable
final class KmsCryptoKeyIamBindingCondition {
  const KmsCryptoKeyIamBindingCondition({
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

/// Factory wrapper for `google_kms_crypto_key_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud KMS crypto key.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleKmsCryptoKeyIamMember] for additive grants.
final class GoogleKmsCryptoKeyIamBinding extends Resource {
  static const String tfType = 'google_kms_crypto_key_iam_binding';

  GoogleKmsCryptoKeyIamBinding({
    required super.localName,
    required RefTo<GoogleKmsCryptoKey> cryptoKey,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    KmsCryptoKeyIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key_id': cryptoKey.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsCryptoKeyIamBinding>`.
  RefTo<GoogleKmsCryptoKeyIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `crypto_key_id` attribute.
  TfRef<String> get cryptoKeyIdRef =>
      TfRef.attribute<String>(this, 'crypto_key_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
