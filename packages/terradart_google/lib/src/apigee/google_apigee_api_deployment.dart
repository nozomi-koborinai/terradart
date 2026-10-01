// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_apigee_api_deployment`.
const Set<String> _googleApigeeApiDeploymentSensitive = <String>{};

/// Factory wrapper for `google_apigee_api_deployment`.
///
/// Manages a deployment of an API proxy.
///
/// Apigee **API proxy deployment** — deploys a proxy revision to an
/// environment.
///
/// **Cost / apply:** gcp-cost: Apigee `1C2D-8C78-EC58` Proxy/Shared Flow
/// Deployment Unit Usage Hours (Base SKU `20F4-DE1D-0E80` included-in-base
/// **$0/h**; Intermediate `4836-1B91-161A`; Comprehensive `477D-FA48-D913`
/// / overage `71C2-1AC1-805B`). billing-behavior: requires never_apply
/// [GoogleApigeeOrganization] / [GoogleApigeeEnvironment] (environment
/// usage hours **$0.50–$4.70/h**). Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleApigeeApiDeployment extends Resource {
  static const String tfType = 'google_apigee_api_deployment';

  GoogleApigeeApiDeployment(
    super.localName, {
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> proxyId,
    required TfArg<String> revision,
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
           'proxy_id': proxyId,
           'revision': revision,
           'service_account': ?serviceAccount?.encodeAs('email'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeApiDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeApiDeployment>`.
  RefTo<GoogleApigeeApiDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `proxy_id` attribute.
  TfRef<String> get proxyId => TfRef.attribute<String>(this, 'proxy_id');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
