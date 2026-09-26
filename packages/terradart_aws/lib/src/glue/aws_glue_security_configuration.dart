// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_security_configuration`.
const Set<String> _awsGlueSecurityConfigurationSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationEncryptionConfiguration {
  const GlueSecurityConfigurationEncryptionConfiguration({
    required this.cloudwatchEncryption,
    required this.jobBookmarksEncryption,
    required this.s3Encryption,
  });

  final GlueSecurityConfigurationEncryptionConfigurationCloudwatchEncryption
  cloudwatchEncryption;

  final GlueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption
  jobBookmarksEncryption;

  final GlueSecurityConfigurationEncryptionConfigurationS3Encryption
  s3Encryption;

  Map<String, Object?> encode() => {
    'cloudwatch_encryption': cloudwatchEncryption.encode(),
    'job_bookmarks_encryption': jobBookmarksEncryption.encode(),
    's3_encryption': s3Encryption.encode(),
  };
}

/// Typed helper for the `encryption_configuration.cloudwatch_encryption` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationEncryptionConfigurationCloudwatchEncryption {
  const GlueSecurityConfigurationEncryptionConfigurationCloudwatchEncryption({
    this.cloudwatchEncryptionMode,
    this.kmsKeyArn,
  });

  final TfArg<String>? cloudwatchEncryptionMode;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (cloudwatchEncryptionMode != null)
      'cloudwatch_encryption_mode': cloudwatchEncryptionMode!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration.job_bookmarks_encryption` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption {
  const GlueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption({
    this.jobBookmarksEncryptionMode,
    this.kmsKeyArn,
  });

  final TfArg<String>? jobBookmarksEncryptionMode;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (jobBookmarksEncryptionMode != null)
      'job_bookmarks_encryption_mode': jobBookmarksEncryptionMode!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration.s3_encryption` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationEncryptionConfigurationS3Encryption {
  const GlueSecurityConfigurationEncryptionConfigurationS3Encryption({
    this.kmsKeyArn,
    this.s3EncryptionMode,
  });

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? s3EncryptionMode;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (s3EncryptionMode != null)
      's3_encryption_mode': s3EncryptionMode!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_security_configuration`.
final class AwsGlueSecurityConfiguration extends Resource {
  static const String tfType = 'aws_glue_security_configuration';

  AwsGlueSecurityConfiguration({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required GlueSecurityConfigurationEncryptionConfiguration
    encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'encryption_configuration': TfArg.literal(
             encryptionConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueSecurityConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
