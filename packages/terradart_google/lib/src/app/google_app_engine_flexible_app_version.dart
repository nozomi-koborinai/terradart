// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_flexible_app_version`.
const Set<String> _googleAppEngineFlexibleAppVersionSensitive = <String>{};

/// App Engine Flexible App Version Serving enum for `serving_status`.
enum AppEngineFlexibleAppVersionServingStatus implements TerraformEnum {
  serving('SERVING'),
  stopped('STOPPED');

  const AppEngineFlexibleAppVersionServingStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Automatic or manual scaling for [GoogleAppEngineFlexibleAppVersion].
sealed class AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionScaling();

  String get blockKey;

  Map<String, Object?> encode();
}

/// `automatic_scaling` block — request/latency-driven autoscaling.
@immutable
final class AppEngineFlexibleAppVersionAutomaticScalingMode
    extends AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionAutomaticScalingMode({required this.config});

  /// Nested block fields (e.g. `min_total_instances`, `max_total_instances`).
  final Map<String, Object?> config;

  @override
  String get blockKey => 'automatic_scaling';

  @override
  Map<String, Object?> encode() => config;
}

/// `manual_scaling` block — fixed instance count.
@immutable
final class AppEngineFlexibleAppVersionManualScalingMode
    extends AppEngineFlexibleAppVersionScaling {
  const AppEngineFlexibleAppVersionManualScalingMode({required this.instances});

  final TfArg<int> instances;

  @override
  String get blockKey => 'manual_scaling';

  @override
  Map<String, Object?> encode() => {'instances': instances.toTfJson()};
}

/// Factory wrapper for `google_app_engine_flexible_app_version`.
///
/// Flexible App Version resource to create a new version of flexible GAE
/// Application. Based on Google Compute Engine, the App Engine flexible
/// environment automatically scales your app up and down while also balancing
/// the load. Learn about the differences between the standard environment and
/// the flexible environment at
/// https://cloud.google.com/appengine/docs/the-appengine-environments.
///
/// ~> **Note:** The App Engine flexible environment service account uses the
/// member ID
/// `service-[YOUR_PROJECT_NUMBER]@gae-api-prod.google.com.iam.gserviceaccount.com`
/// It should have the App Engine Flexible Environment Service Agent role, which
/// will be applied when the `appengineflex.googleapis.com` service is enabled.
final class GoogleAppEngineFlexibleAppVersion extends Resource {
  static const String tfType = 'google_app_engine_flexible_app_version';

  GoogleAppEngineFlexibleAppVersion({
    required super.localName,
    required TfArg<String> service,
    TfArg<String>? versionId,
    required TfArg<String> runtime,
    TfArg<String>? runtimeApiVersion,
    TfArg<String>? instanceClass,
    required AppEngineFlexibleAppVersionScaling scaling,
    required TfArg<Map<String, dynamic>> livenessCheck,
    required TfArg<Map<String, dynamic>> readinessCheck,
    TfArg<Map<String, dynamic>>? vpcAccessConnector,
    TfArg<Map<String, String>>? envVariables,
    TfArg<Map<String, String>>? betaSettings,
    TfArg<String>? defaultExpiration,
    TfArg<bool>? deleteServiceOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? noopOnDestroy,
    TfArg<String>? nobuildFilesRegex,
    TfArg<String>? runtimeChannel,
    TfArg<String>? runtimeMainExecutablePath,
    TfArg<String>? serviceAccount,
    TfArg<String>? servingStatus,
    TfArg<List<String>>? inboundServices,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           if (versionId != null) 'version_id': versionId,
           'runtime': runtime,
           if (runtimeApiVersion != null)
             'runtime_api_version': runtimeApiVersion,
           if (instanceClass != null) 'instance_class': instanceClass,
           scaling.blockKey: TfArg.literal(scaling.encode()),
           'liveness_check': livenessCheck,
           'readiness_check': readinessCheck,
           if (vpcAccessConnector != null)
             'vpc_access_connector': vpcAccessConnector,
           if (envVariables != null) 'env_variables': envVariables,
           if (betaSettings != null) 'beta_settings': betaSettings,
           if (defaultExpiration != null)
             'default_expiration': defaultExpiration,
           if (deleteServiceOnDestroy != null)
             'delete_service_on_destroy': deleteServiceOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (noopOnDestroy != null) 'noop_on_destroy': noopOnDestroy,
           if (nobuildFilesRegex != null)
             'nobuild_files_regex': nobuildFilesRegex,
           if (runtimeChannel != null) 'runtime_channel': runtimeChannel,
           if (runtimeMainExecutablePath != null)
             'runtime_main_executable_path': runtimeMainExecutablePath,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (servingStatus != null) 'serving_status': servingStatus,
           if (inboundServices != null) 'inbound_services': inboundServices,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineFlexibleAppVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
