// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_type`.
const Set<String> _awsCloudformationTypeSensitive = <String>{};

/// Factory wrapper for `aws_cloudformation_type`.
final class DataAwsCloudformationType extends Data {
  static const String tfType = 'aws_cloudformation_type';

  DataAwsCloudformationType({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? region,
    TfArg<String>? type,
    TfArg<String>? typeName,
    TfArg<String>? versionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
           if (typeName != null) 'type_name': typeName,
           if (versionId != null) 'version_id': versionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationTypeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_version_id` attribute.
  TfRef<String> get defaultVersionId =>
      TfRef.attribute<String>(this, 'default_version_id');

  /// Reference to `deprecated_status` attribute.
  TfRef<String> get deprecatedStatus =>
      TfRef.attribute<String>(this, 'deprecated_status');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `documentation_url` attribute.
  TfRef<String> get documentationUrl =>
      TfRef.attribute<String>(this, 'documentation_url');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `is_default_version` attribute.
  TfRef<bool> get isDefaultVersion =>
      TfRef.attribute<bool>(this, 'is_default_version');

  /// Reference to `logging_config` attribute.
  TfRef<List<Map<String, Object?>>> get loggingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging_config');

  /// Reference to `provisioning_type` attribute.
  TfRef<String> get provisioningType =>
      TfRef.attribute<String>(this, 'provisioning_type');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `source_url` attribute.
  TfRef<String> get sourceUrl => TfRef.attribute<String>(this, 'source_url');

  /// Reference to `type_arn` attribute.
  TfRef<String> get typeArn => TfRef.attribute<String>(this, 'type_arn');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}
