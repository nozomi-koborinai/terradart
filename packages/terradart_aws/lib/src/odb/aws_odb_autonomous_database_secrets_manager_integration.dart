// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_autonomous_database_secrets_manager_integration`.
const Set<String> _awsOdbAutonomousDatabaseSecretsManagerIntegrationSensitive =
    <String>{};

/// Factory wrapper for `aws_odb_autonomous_database_secrets_manager_integration`.
///
/// Enables the Oracle Database@AWS Autonomous Database Serverless integration
/// with AWS Secrets Manager.
final class AwsOdbAutonomousDatabaseSecretsManagerIntegration extends Resource {
  static const String tfType =
      'aws_odb_autonomous_database_secrets_manager_integration';

  AwsOdbAutonomousDatabaseSecretsManagerIntegration(
    super.localName, {
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'region': ?region});

  @override
  Set<String> get sensitiveFields =>
      _awsOdbAutonomousDatabaseSecretsManagerIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbAutonomousDatabaseSecretsManagerIntegration>`.
  RefTo<AwsOdbAutonomousDatabaseSecretsManagerIntegration> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
