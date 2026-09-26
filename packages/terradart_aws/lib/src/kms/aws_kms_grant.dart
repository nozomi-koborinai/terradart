// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_grant`.
const Set<String> _awsKmsGrantSensitive = <String>{'grant_token'};

/// Typed helper for the `constraints` block of
/// `aws_kms_grant` (derived from provider schema).
@immutable
final class KmsGrantConstraints {
  const KmsGrantConstraints({
    this.encryptionContextEquals,
    this.encryptionContextSubset,
  });

  final TfArg<Map<String, String>>? encryptionContextEquals;

  final TfArg<Map<String, String>>? encryptionContextSubset;

  Map<String, Object?> encode() => {
    if (encryptionContextEquals != null)
      'encryption_context_equals': encryptionContextEquals!.toTfJson(),
    if (encryptionContextSubset != null)
      'encryption_context_subset': encryptionContextSubset!.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_grant`.
final class AwsKmsGrant extends Resource {
  static const String tfType = 'aws_kms_grant';

  AwsKmsGrant({
    required super.localName,
    TfArg<List<String>>? grantCreationTokens,
    required TfArg<String> granteePrincipal,
    required TfArg<String> keyId,
    TfArg<String>? name,
    required TfArg<List<String>> operations,
    TfArg<String>? region,
    TfArg<bool>? retireOnDelete,
    TfArg<String>? retiringPrincipal,
    List<KmsGrantConstraints>? constraints,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (grantCreationTokens != null)
             'grant_creation_tokens': grantCreationTokens,
           'grantee_principal': granteePrincipal,
           'key_id': keyId,
           if (name != null) 'name': name,
           'operations': operations,
           if (region != null) 'region': region,
           if (retireOnDelete != null) 'retire_on_delete': retireOnDelete,
           if (retiringPrincipal != null)
             'retiring_principal': retiringPrincipal,
           if (constraints != null)
             'constraints': TfArg.literal([
               for (final e in constraints) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsGrantSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `grant_id` attribute.
  TfRef<String> get grantId => TfRef.attribute<String>(this, 'grant_id');

  /// Reference to `grant_token` attribute.
  TfRef<String> get grantToken => TfRef.attribute<String>(this, 'grant_token');
}
