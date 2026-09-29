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
           if (additionalEncryptionContext != null)
             'additional_encryption_context': additionalEncryptionContext,
           if (description != null) 'description': description,
           'integration_name': integrationName,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           if (region != null) 'region': region,
           'source_arn': sourceArn,
           if (tags != null) 'tags': tags,
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
}
