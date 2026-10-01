// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_apigee_sharedflow_deployment`.
const Set<String> _googleApigeeSharedflowDeploymentSensitive = <String>{};

/// Factory wrapper for `google_apigee_sharedflow_deployment`.
///
/// Apigee **shared flow deployment** — deploys a shared-flow revision to
/// an environment.
///
/// **Cost / apply:** gcp-cost: Apigee `1C2D-8C78-EC58` Proxy/Shared Flow
/// Deployment Unit Usage Hours Included in Base Environment SKU
/// `20F4-DE1D-0E80` (Intermediate `4836-1B91-161A`; Comprehensive
/// `477D-FA48-D913` / overage `71C2-1AC1-805B`). billing-behavior: requires
/// never_apply [GoogleApigeeOrganization] / [GoogleApigeeEnvironment] /
/// [GoogleApigeeSharedflow] (environment usage hours **$0.50–$4.70/h**).
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeSharedflowDeployment extends Resource {
  static const String tfType = 'google_apigee_sharedflow_deployment';

  GoogleApigeeSharedflowDeployment({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> sharedflowId,
    required TfArg<String> revision,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'sharedflow_id': sharedflowId,
           'revision': revision,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSharedflowDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeSharedflowDeployment>`.
  RefTo<GoogleApigeeSharedflowDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `sharedflow_id` attribute.
  TfRef<String> get sharedflowId =>
      TfRef.attribute<String>(this, 'sharedflow_id');
}
