// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final GlueSecurityConfigurationCloudwatchEncryption cloudwatchEncryption;

  final GlueSecurityConfigurationJobBookmarksEncryption jobBookmarksEncryption;

  final GlueSecurityConfigurationS3Encryption s3Encryption;

  Map<String, Object?> encode() => {
    'cloudwatch_encryption': cloudwatchEncryption.encode(),
    'job_bookmarks_encryption': jobBookmarksEncryption.encode(),
    's3_encryption': s3Encryption.encode(),
  };
}

/// Typed helper for the `encryption_configuration.cloudwatch_encryption` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationCloudwatchEncryption {
  const GlueSecurityConfigurationCloudwatchEncryption({
    this.cloudwatchEncryptionMode,
    this.kmsKeyArn,
  });

  final TfArg<GlueSecurityConfigurationCloudwatchEncryptionMode>?
  cloudwatchEncryptionMode;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'cloudwatch_encryption_mode': ?cloudwatchEncryptionMode?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// `cloudwatch_encryption_mode` — derived from the provider schema description.
enum GlueSecurityConfigurationCloudwatchEncryptionMode
    implements TerraformEnum {
  disabled('DISABLED'),
  sseKms('SSE-KMS');

  const GlueSecurityConfigurationCloudwatchEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration.job_bookmarks_encryption` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationJobBookmarksEncryption {
  const GlueSecurityConfigurationJobBookmarksEncryption({
    this.jobBookmarksEncryptionMode,
    this.kmsKeyArn,
  });

  final TfArg<GlueSecurityConfigurationJobBookmarksEncryptionMode>?
  jobBookmarksEncryptionMode;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'job_bookmarks_encryption_mode': ?jobBookmarksEncryptionMode?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// `job_bookmarks_encryption_mode` — derived from the provider schema description.
enum GlueSecurityConfigurationJobBookmarksEncryptionMode
    implements TerraformEnum {
  disabled('DISABLED'),
  cseKms('CSE-KMS');

  const GlueSecurityConfigurationJobBookmarksEncryptionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration.s3_encryption` block of
/// `aws_glue_security_configuration` (derived from provider schema).
@immutable
final class GlueSecurityConfigurationS3Encryption {
  const GlueSecurityConfigurationS3Encryption({
    this.kmsKeyArn,
    this.s3EncryptionMode,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<GlueSecurityConfigurationS3EncryptionMode>? s3EncryptionMode;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    's3_encryption_mode': ?s3EncryptionMode?.toTfJson(),
  };
}

/// `s3_encryption_mode` — derived from the provider schema description.
enum GlueSecurityConfigurationS3EncryptionMode implements TerraformEnum {
  disabled('DISABLED'),
  sseKms('SSE-KMS'),
  sseS3('SSE-S3');

  const GlueSecurityConfigurationS3EncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
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
           'region': ?region,
           'encryption_configuration': TfArg.literal(
             encryptionConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueSecurityConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueSecurityConfiguration>`.
  RefTo<AwsGlueSecurityConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
