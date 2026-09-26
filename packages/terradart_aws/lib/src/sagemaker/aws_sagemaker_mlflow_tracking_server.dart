// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_mlflow_tracking_server`.
const Set<String> _awsSagemakerMlflowTrackingServerSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_mlflow_tracking_server`.
final class AwsSagemakerMlflowTrackingServer extends Resource {
  static const String tfType = 'aws_sagemaker_mlflow_tracking_server';

  AwsSagemakerMlflowTrackingServer({
    required super.localName,
    required TfArg<String> artifactStoreUri,
    TfArg<bool>? automaticModelRegistration,
    TfArg<String>? mlflowVersion,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trackingServerName,
    TfArg<String>? trackingServerSize,
    TfArg<String>? weeklyMaintenanceWindowStart,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'artifact_store_uri': artifactStoreUri,
           if (automaticModelRegistration != null)
             'automatic_model_registration': automaticModelRegistration,
           if (mlflowVersion != null) 'mlflow_version': mlflowVersion,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'tracking_server_name': trackingServerName,
           if (trackingServerSize != null)
             'tracking_server_size': trackingServerSize,
           if (weeklyMaintenanceWindowStart != null)
             'weekly_maintenance_window_start': weeklyMaintenanceWindowStart,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerMlflowTrackingServerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tracking_server_url` attribute.
  TfRef<String> get trackingServerUrl =>
      TfRef.attribute<String>(this, 'tracking_server_url');
}
