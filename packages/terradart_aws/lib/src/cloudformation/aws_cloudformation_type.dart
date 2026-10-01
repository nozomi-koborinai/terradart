// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudformation_type`.
const Set<String> _awsCloudformationTypeSensitive = <String>{};

/// Cloudformation enum for `type`.
enum CloudformationType implements TerraformEnum {
  resource('RESOURCE'),
  module('MODULE'),
  hook('HOOK');

  const CloudformationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_config` block of
/// `aws_cloudformation_type` (derived from provider schema).
@immutable
final class CloudformationTypeLoggingConfig {
  const CloudformationTypeLoggingConfig({
    required this.logGroupName,
    required this.logRoleArn,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupName;

  final TfArg<String> logRoleArn;

  Map<String, Object?> encode() => {
    'log_group_name': logGroupName.encodeAs('name').toTfJson(),
    'log_role_arn': logRoleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudformation_type`.
final class AwsCloudformationType extends Resource {
  static const String tfType = 'aws_cloudformation_type';

  AwsCloudformationType(
    super.localName, {
    RefTo<AwsIamRole>? executionRoleArn,
    TfArg<String>? region,
    required TfArg<String> schemaHandlerPackage,
    TfArg<CloudformationType>? type,
    required TfArg<String> typeName,
    CloudformationTypeLoggingConfig? loggingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'execution_role_arn': ?executionRoleArn?.encodeAs('arn'),
           'region': ?region,
           'schema_handler_package': schemaHandlerPackage,
           'type': ?type,
           'type_name': typeName,
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudformationType>`.
  RefTo<AwsCloudformationType> get ref => RefTo.of(this);

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

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schema_handler_package` attribute.
  TfRef<String> get schemaHandlerPackage =>
      TfRef.attribute<String>(this, 'schema_handler_package');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `type_name` attribute.
  TfRef<String> get typeName => TfRef.attribute<String>(this, 'type_name');
}
