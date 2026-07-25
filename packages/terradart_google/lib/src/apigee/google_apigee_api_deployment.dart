// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleApigeeApiDeployment({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> proxyId,
    required TfArg<String> revision,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'proxy_id': proxyId,
           'revision': revision,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeApiDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
