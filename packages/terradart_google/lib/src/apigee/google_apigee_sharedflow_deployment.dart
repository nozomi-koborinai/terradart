// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? serviceAccount,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'sharedflow_id': sharedflowId,
           'revision': revision,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSharedflowDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
