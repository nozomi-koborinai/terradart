// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_redshift_integration`.
const Set<String> _awsRedshiftIntegrationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_integration`.
final class AwsRedshiftIntegration extends Resource {
  static const String tfType = 'aws_redshift_integration';

  AwsRedshiftIntegration({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? description,
    required TfArg<String> integrationName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    required TfArg<String> sourceArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_encryption_context': ?additionalEncryptionContext,
           'description': ?description,
           'integration_name': integrationName,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'source_arn': sourceArn,
           'tags': ?tags,
           'target_arn': targetArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftIntegration>`.
  RefTo<AwsRedshiftIntegration> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContext =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `integration_name` attribute.
  TfRef<String> get integrationName =>
      TfRef.attribute<String>(this, 'integration_name');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArn => TfRef.attribute<String>(this, 'source_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_arn` attribute.
  TfRef<String> get targetArn => TfRef.attribute<String>(this, 'target_arn');
}
