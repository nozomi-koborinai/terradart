// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_profile`.
const Set<String> _awsSignerSigningProfileSensitive = <String>{};

/// Typed helper for the `signature_validity_period` block of
/// `aws_signer_signing_profile` (derived from provider schema).
@immutable
final class SignerSigningProfileSignatureValidityPeriod {
  const SignerSigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `signing_material` block of
/// `aws_signer_signing_profile` (derived from provider schema).
@immutable
final class SignerSigningProfileSigningMaterial {
  const SignerSigningProfileSigningMaterial({required this.certificateArn});

  final TfArg<String> certificateArn;

  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_signer_signing_profile`.
final class AwsSignerSigningProfile extends Resource {
  static const String tfType = 'aws_signer_signing_profile';

  AwsSignerSigningProfile({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> platformId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? signingParameters,
    TfArg<Map<String, String>>? tags,
    SignerSigningProfileSignatureValidityPeriod? signatureValidityPeriod,
    SignerSigningProfileSigningMaterial? signingMaterial,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           'platform_id': platformId,
           if (region != null) 'region': region,
           if (signingParameters != null)
             'signing_parameters': signingParameters,
           if (tags != null) 'tags': tags,
           if (signatureValidityPeriod != null)
             'signature_validity_period': TfArg.literal(
               signatureValidityPeriod.encode(),
             ),
           if (signingMaterial != null)
             'signing_material': TfArg.literal(signingMaterial.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSignerSigningProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `platform_display_name` attribute.
  TfRef<String> get platformDisplayName =>
      TfRef.attribute<String>(this, 'platform_display_name');

  /// Reference to `revocation_record` attribute.
  TfRef<List<Map<String, Object?>>> get revocationRecord =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revocation_record');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `version_arn` attribute.
  TfRef<String> get versionArn => TfRef.attribute<String>(this, 'version_arn');
}
