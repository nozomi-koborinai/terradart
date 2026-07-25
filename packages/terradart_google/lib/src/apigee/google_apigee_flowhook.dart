// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_flowhook`.
const Set<String> _googleApigeeFlowhookSensitive = <String>{};

/// Factory wrapper for `google_apigee_flowhook`.
///
/// Apigee **flow hook** — attaches a shared flow to a flow-hook point in
/// an environment (`PreProxyFlowHook`, `PostProxyFlowHook`, …).
///
/// **Cost / apply:** gcp-cost: no FlowHook SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Flow/Hook → Proxy/Shared Flow
/// Deployment Unit SKUs only, e.g. Base `20F4-DE1D-0E80`).
/// billing-behavior: requires never_apply [GoogleApigeeOrganization] /
/// [GoogleApigeeEnvironment] / [GoogleApigeeSharedflow]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeFlowhook extends Resource {
  static const String tfType = 'google_apigee_flowhook';

  GoogleApigeeFlowhook({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> environment,
    required TfArg<String> flowHookPoint,
    required TfArg<String> sharedflow,
    TfArg<String>? description,
    TfArg<bool>? continueOnError,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'flow_hook_point': flowHookPoint,
           'sharedflow': sharedflow,
           if (description != null) 'description': description,
           if (continueOnError != null) 'continue_on_error': continueOnError,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeFlowhookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
