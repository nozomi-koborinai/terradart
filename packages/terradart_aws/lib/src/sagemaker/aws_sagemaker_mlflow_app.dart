// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_mlflow_app`.
const Set<String> _awsSagemakerMlflowAppSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_mlflow_app`.
final class AwsSagemakerMlflowApp extends Resource {
  static const String tfType = 'aws_sagemaker_mlflow_app';

  AwsSagemakerMlflowApp({
    required super.localName,
    TfArg<String>? accountDefaultStatus,
    required TfArg<String> artifactStoreUri,
    TfArg<List<String>>? defaultDomainIdList,
    TfArg<String>? modelRegistrationMode,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? weeklyMaintenanceWindowStart,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountDefaultStatus != null)
             'account_default_status': accountDefaultStatus,
           'artifact_store_uri': artifactStoreUri,
           if (defaultDomainIdList != null)
             'default_domain_id_list': defaultDomainIdList,
           if (modelRegistrationMode != null)
             'model_registration_mode': modelRegistrationMode,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (weeklyMaintenanceWindowStart != null)
             'weekly_maintenance_window_start': weeklyMaintenanceWindowStart,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerMlflowAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
