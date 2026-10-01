// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_kms_crypto_key_iam_member`.
const Set<String> _googleKmsCryptoKeyIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_kms_crypto_key_iam_member` (derived from provider schema).
@immutable
final class KmsCryptoKeyIamMemberCondition {
  const KmsCryptoKeyIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_kms_crypto_key_iam_member`.
final class GoogleKmsCryptoKeyIamMember extends Resource {
  static const String tfType = 'google_kms_crypto_key_iam_member';

  GoogleKmsCryptoKeyIamMember(
    super.localName, {
    required RefTo<GoogleKmsCryptoKey> cryptoKey,
    required TfArg<String> role,
    required IamPrincipal member,
    KmsCryptoKeyIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key_id': cryptoKey.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsCryptoKeyIamMember>`.
  RefTo<GoogleKmsCryptoKeyIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `crypto_key_id` attribute.
  TfRef<String> get cryptoKeyId =>
      TfRef.attribute<String>(this, 'crypto_key_id');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
