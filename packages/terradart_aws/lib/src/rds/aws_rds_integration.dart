// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_integration`.
const Set<String> _awsRdsIntegrationSensitive = <String>{};

/// Factory wrapper for `aws_rds_integration`.
final class AwsRdsIntegration extends Resource {
  static const String tfType = 'aws_rds_integration';

  AwsRdsIntegration({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? dataFilter,
    required TfArg<String> integrationName,
    TfArg<String>? kmsKeyId,
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
           if (dataFilter != null) 'data_filter': dataFilter,
           'integration_name': integrationName,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           'source_arn': sourceArn,
           if (tags != null) 'tags': tags,
           'target_arn': targetArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsIntegrationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `integration_identifier` attribute.
  TfRef<String> get integrationIdentifier =>
      TfRef.attribute<String>(this, 'integration_identifier');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
