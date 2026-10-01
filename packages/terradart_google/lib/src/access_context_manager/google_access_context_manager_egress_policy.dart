// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../access_context_manager/google_access_context_manager_service_perimeter.dart'
    show GoogleAccessContextManagerServicePerimeter;

/// Sensitive field paths for `google_access_context_manager_egress_policy`.
const Set<String> _googleAccessContextManagerEgressPolicySensitive = <String>{};

/// Factory wrapper for `google_access_context_manager_egress_policy`.
///
/// This resource has been deprecated, please refer to
/// ServicePerimeterEgressPolicy.
///
/// ACM egress policy attachment — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerEgressPolicy extends Resource {
  static const String tfType = 'google_access_context_manager_egress_policy';

  GoogleAccessContextManagerEgressPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required RefTo<GoogleAccessContextManagerServicePerimeter> egressPolicyName,
    required TfArg<String> resource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'egress_policy_name': egressPolicyName.encodeAs('name'),
           'resource': resource,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerEgressPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerEgressPolicy>`.
  RefTo<GoogleAccessContextManagerEgressPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `egress_policy_name` attribute.
  TfRef<String> get egressPolicyName =>
      TfRef.attribute<String>(this, 'egress_policy_name');

  /// Reference to `resource` attribute.
  TfRef<String> get resource => TfRef.attribute<String>(this, 'resource');
}
