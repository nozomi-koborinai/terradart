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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'environment': environment,
           'flow_hook_point': flowHookPoint,
           'sharedflow': sharedflow,
           'description': ?description,
           'continue_on_error': ?continueOnError,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeFlowhookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeFlowhook>`.
  RefTo<GoogleApigeeFlowhook> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `continue_on_error` attribute.
  TfRef<bool> get continueOnError =>
      TfRef.attribute<bool>(this, 'continue_on_error');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `flow_hook_point` attribute.
  TfRef<String> get flowHookPoint =>
      TfRef.attribute<String>(this, 'flow_hook_point');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `sharedflow` attribute.
  TfRef<String> get sharedflow => TfRef.attribute<String>(this, 'sharedflow');
}
