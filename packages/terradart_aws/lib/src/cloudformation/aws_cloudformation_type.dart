// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_type`.
const Set<String> _awsCloudformationTypeSensitive = <String>{};

/// Typed helper for the `logging_config` block of
/// `aws_cloudformation_type` (derived from provider schema).
@immutable
final class CloudformationTypeLoggingConfig {
  const CloudformationTypeLoggingConfig({
    required this.logGroupName,
    required this.logRoleArn,
  });

  final TfArg<String> logGroupName;

  final TfArg<String> logRoleArn;

  Map<String, Object?> encode() => {
    'log_group_name': logGroupName.toTfJson(),
    'log_role_arn': logRoleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudformation_type`.
final class AwsCloudformationType extends Resource {
  static const String tfType = 'aws_cloudformation_type';

  AwsCloudformationType({
    required super.localName,
    TfArg<String>? executionRoleArn,
    TfArg<String>? region,
    required TfArg<String> schemaHandlerPackage,
    TfArg<String>? type,
    required TfArg<String> typeName,
    CloudformationTypeLoggingConfig? loggingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (executionRoleArn != null) 'execution_role_arn': executionRoleArn,
           if (region != null) 'region': region,
           'schema_handler_package': schemaHandlerPackage,
           if (type != null) 'type': type,
           'type_name': typeName,
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationTypeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

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

  /// Reference to `is_default_version` attribute.
  TfRef<bool> get isDefaultVersion =>
      TfRef.attribute<bool>(this, 'is_default_version');

  /// Reference to `provisioning_type` attribute.
  TfRef<String> get provisioningType =>
      TfRef.attribute<String>(this, 'provisioning_type');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `source_url` attribute.
  TfRef<String> get sourceUrl => TfRef.attribute<String>(this, 'source_url');

  /// Reference to `type_arn` attribute.
  TfRef<String> get typeArn => TfRef.attribute<String>(this, 'type_arn');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}
