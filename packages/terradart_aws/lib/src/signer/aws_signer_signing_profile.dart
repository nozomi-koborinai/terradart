// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_profile`.
const Set<String> _awsSignerSigningProfileSensitive = <String>{};

/// Signer Signing Profile Platform enum for `platform_id`.
enum SignerSigningProfilePlatformId implements TerraformEnum {
  awslambdaSha384Ecdsa('AWSLambda-SHA384-ECDSA'),
  notationOciSha384Ecdsa('Notation-OCI-SHA384-ECDSA'),
  awsiotdevicemanagementSha256Ecdsa('AWSIoTDeviceManagement-SHA256-ECDSA'),
  amazonfreertosTiCc3220sf('AmazonFreeRTOS-TI-CC3220SF'),
  amazonfreertosDefault('AmazonFreeRTOS-Default');

  const SignerSigningProfilePlatformId(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_signer_signing_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SignerSigningProfileName {
  const SignerSigningProfileName();

  /// Sets `name`.
  const factory SignerSigningProfileName.name(TfArg<String> name) =
      SignerSigningProfileNameName;

  /// Sets `name_prefix`.
  const factory SignerSigningProfileName.namePrefix(TfArg<String> namePrefix) =
      SignerSigningProfileNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SignerSigningProfileName.name] choice: sets `name`.
final class SignerSigningProfileNameName extends SignerSigningProfileName {
  const SignerSigningProfileNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SignerSigningProfileName.namePrefix] choice: sets `name_prefix`.
final class SignerSigningProfileNameNamePrefix
    extends SignerSigningProfileName {
  const SignerSigningProfileNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `signature_validity_period` block of
/// `aws_signer_signing_profile` (derived from provider schema).
@immutable
final class SignerSigningProfileSignatureValidityPeriod {
  const SignerSigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  final TfArg<SignerSigningProfileSignatureValidityPeriodType> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SignerSigningProfileSignatureValidityPeriodType implements TerraformEnum {
  days('DAYS'),
  months('MONTHS'),
  years('YEARS');

  const SignerSigningProfileSignatureValidityPeriodType(this.terraformValue);
  @override
  final String terraformValue;
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
    SignerSigningProfileName? name,
    required TfArg<SignerSigningProfilePlatformId> platformId,
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
           ...?name?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSignerSigningProfile>`.
  RefTo<AwsSignerSigningProfile> get ref => RefTo.of(this);

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
