// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_api_revision_deployment`.
const Set<String> _googleApigeeEnvironmentApiRevisionDeploymentSensitive =
    <String>{};

/// Factory wrapper for `google_apigee_environment_api_revision_deployment`.
///
/// Deploys a specific Apigee API Proxy revision to a given Apigee environment.
///
/// Apigee **environment API revision deployment** — deploys a specific API
/// proxy revision into an environment (with optional sequenced rollout).
///
/// **Cost / apply:** gcp-cost: Apigee `1C2D-8C78-EC58` Proxy/Shared Flow
/// Deployment Unit Usage Hours (Base SKU `20F4-DE1D-0E80` included-in-base
/// **$0/h**; Intermediate `4836-1B91-161A`; Comprehensive `477D-FA48-D913`).
/// billing-behavior: requires never_apply [GoogleApigeeOrganization] /
/// [GoogleApigeeEnvironment]. Debt-only on `terradart-validate`. **Never**
/// wire into apply-smoke.
final class GoogleApigeeEnvironmentApiRevisionDeployment extends Resource {
  static const String tfType =
      'google_apigee_environment_api_revision_deployment';

  GoogleApigeeEnvironmentApiRevisionDeployment({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> api,
    required TfArg<num> revision,
    TfArg<bool>? override,
    TfArg<bool>? sequencedRollout,
    TfArg<String>? serviceAccount,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'api': api,
           'revision': revision,
           if (override != null) 'override': override,
           if (sequencedRollout != null) 'sequenced_rollout': sequencedRollout,
           if (serviceAccount != null) 'service_account': serviceAccount,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentApiRevisionDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `basepaths` attribute.
  TfRef<List<String>> get basepaths =>
      TfRef.attribute<List<String>>(this, 'basepaths');

  /// Reference to `deploy_start_time` attribute.
  TfRef<String> get deployStartTime =>
      TfRef.attribute<String>(this, 'deploy_start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
