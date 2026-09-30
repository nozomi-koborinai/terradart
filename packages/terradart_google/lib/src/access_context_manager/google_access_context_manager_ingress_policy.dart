// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_ingress_policy`.
const Set<String> _googleAccessContextManagerIngressPolicySensitive =
    <String>{};

/// Factory wrapper for `google_access_context_manager_ingress_policy`.
///
/// This resource has been deprecated, please refer to
/// ServicePerimeterIngressPolicy.
///
/// ACM ingress policy attachment — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerIngressPolicy extends Resource {
  static const String tfType = 'google_access_context_manager_ingress_policy';

  GoogleAccessContextManagerIngressPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> ingressPolicyName,
    required TfArg<String> resource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'ingress_policy_name': ingressPolicyName,
           'resource': resource,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerIngressPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerIngressPolicy>`.
  RefTo<GoogleAccessContextManagerIngressPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ingress_policy_name` attribute.
  TfRef<String> get ingressPolicyNameRef =>
      TfRef.attribute<String>(this, 'ingress_policy_name');

  /// Reference to `resource` attribute.
  TfRef<String> get resourceRef => TfRef.attribute<String>(this, 'resource');
}
