// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

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
    RefTo<GoogleServiceAccount>? serviceAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'api': api,
           'revision': revision,
           'override': ?override,
           'sequenced_rollout': ?sequencedRollout,
           'service_account': ?serviceAccount?.encodeAs('email'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentApiRevisionDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironmentApiRevisionDeployment>`.
  RefTo<GoogleApigeeEnvironmentApiRevisionDeployment> get ref => RefTo.of(this);

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

  /// Reference to `api` attribute.
  TfRef<String> get api => TfRef.attribute<String>(this, 'api');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `override` attribute.
  TfRef<bool> get overrideAttr => TfRef.attribute<bool>(this, 'override');

  /// Reference to `revision` attribute.
  TfRef<num> get revision => TfRef.attribute<num>(this, 'revision');

  /// Reference to `sequenced_rollout` attribute.
  TfRef<bool> get sequencedRollout =>
      TfRef.attribute<bool>(this, 'sequenced_rollout');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
