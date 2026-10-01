// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_sagemaker_mlflow_tracking_server`.
const Set<String> _awsSagemakerMlflowTrackingServerSensitive = <String>{};

/// Sagemaker Mlflow Tracking Server enum for `tracking_server_size`.
enum SagemakerMlflowTrackingServerSize implements TerraformEnum {
  small('Small'),
  medium('Medium'),
  large('Large');

  const SagemakerMlflowTrackingServerSize(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sagemaker_mlflow_tracking_server`.
final class AwsSagemakerMlflowTrackingServer extends Resource {
  static const String tfType = 'aws_sagemaker_mlflow_tracking_server';

  AwsSagemakerMlflowTrackingServer({
    required super.localName,
    required TfArg<String> artifactStoreUri,
    TfArg<bool>? automaticModelRegistration,
    TfArg<String>? mlflowVersion,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trackingServerName,
    TfArg<SagemakerMlflowTrackingServerSize>? trackingServerSize,
    TfArg<String>? weeklyMaintenanceWindowStart,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'artifact_store_uri': artifactStoreUri,
           'automatic_model_registration': ?automaticModelRegistration,
           'mlflow_version': ?mlflowVersion,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'tracking_server_name': trackingServerName,
           'tracking_server_size': ?trackingServerSize,
           'weekly_maintenance_window_start': ?weeklyMaintenanceWindowStart,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerMlflowTrackingServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerMlflowTrackingServer>`.
  RefTo<AwsSagemakerMlflowTrackingServer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tracking_server_url` attribute.
  TfRef<String> get trackingServerUrl =>
      TfRef.attribute<String>(this, 'tracking_server_url');

  /// Reference to `artifact_store_uri` attribute.
  TfRef<String> get artifactStoreUriRef =>
      TfRef.attribute<String>(this, 'artifact_store_uri');

  /// Reference to `automatic_model_registration` attribute.
  TfRef<bool> get automaticModelRegistrationRef =>
      TfRef.attribute<bool>(this, 'automatic_model_registration');

  /// Reference to `mlflow_version` attribute.
  TfRef<String> get mlflowVersionRef =>
      TfRef.attribute<String>(this, 'mlflow_version');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tracking_server_name` attribute.
  TfRef<String> get trackingServerNameRef =>
      TfRef.attribute<String>(this, 'tracking_server_name');

  /// Reference to `tracking_server_size` attribute.
  TfRef<String> get trackingServerSizeRef =>
      TfRef.attribute<String>(this, 'tracking_server_size');

  /// Reference to `weekly_maintenance_window_start` attribute.
  TfRef<String> get weeklyMaintenanceWindowStartRef =>
      TfRef.attribute<String>(this, 'weekly_maintenance_window_start');
}
