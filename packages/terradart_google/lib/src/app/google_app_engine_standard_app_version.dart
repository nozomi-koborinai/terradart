// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_standard_app_version`.
const Set<String> _googleAppEngineStandardAppVersionSensitive = <String>{};

/// Factory wrapper for `google_app_engine_standard_app_version`.
///
/// Standard App Version resource to create a new version of standard GAE
/// Application. Learn about the differences between the standard environment
/// and the flexible environment at
/// https://cloud.google.com/appengine/docs/the-appengine-environments.
/// Currently supporting Zip and File Containers.
final class GoogleAppEngineStandardAppVersion extends Resource {
  static const String tfType = 'google_app_engine_standard_app_version';

  GoogleAppEngineStandardAppVersion({
    required super.localName,
    required TfArg<String> service,
    TfArg<String>? versionId,
    required TfArg<String> runtime,
    TfArg<String>? runtimeApiVersion,
    TfArg<String>? instanceClass,
    TfArg<Map<String, String>>? envVariables,
    TfArg<List<Map<String, dynamic>>>? handlers,
    required TfArg<Map<String, dynamic>> deployment,
    required TfArg<Map<String, dynamic>> entrypoint,
    TfArg<Map<String, dynamic>>? automaticScaling,
    TfArg<Map<String, dynamic>>? manualScaling,
    TfArg<Map<String, dynamic>>? vpcAccessConnector,
    TfArg<bool>? appEngineApis,
    TfArg<bool>? deleteServiceOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? noopOnDestroy,
    TfArg<String>? serviceAccount,
    TfArg<bool>? threadsafe,
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
           if (envVariables != null) 'env_variables': envVariables,
           if (handlers != null) 'handlers': handlers,
           'deployment': deployment,
           'entrypoint': entrypoint,
           if (automaticScaling != null) 'automatic_scaling': automaticScaling,
           if (manualScaling != null) 'manual_scaling': manualScaling,
           if (vpcAccessConnector != null)
             'vpc_access_connector': vpcAccessConnector,
           if (appEngineApis != null) 'app_engine_apis': appEngineApis,
           if (deleteServiceOnDestroy != null)
             'delete_service_on_destroy': deleteServiceOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (noopOnDestroy != null) 'noop_on_destroy': noopOnDestroy,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (threadsafe != null) 'threadsafe': threadsafe,
           if (inboundServices != null) 'inbound_services': inboundServices,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineStandardAppVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
