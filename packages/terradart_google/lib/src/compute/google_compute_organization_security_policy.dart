// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_organization_security_policy`.
const Set<String> _googleComputeOrganizationSecurityPolicySensitive =
    <String>{};

/// Factory wrapper for `google_compute_organization_security_policy`.
///
/// Organization security policies are used to control incoming/outgoing
/// traffic.
///
/// Organization Cloud Armor security policy — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputeOrganizationSecurityPolicy extends Resource {
  static const String tfType = 'google_compute_organization_security_policy';

  GoogleComputeOrganizationSecurityPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> parent,
    TfArg<String>? shortName,
    TfArg<String>? type,
    TfArg<Map<String, dynamic>>? advancedOptionsConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           'parent': parent,
           if (shortName != null) 'short_name': shortName,
           if (type != null) 'type': type,
           if (advancedOptionsConfig != null)
             'advanced_options_config': advancedOptionsConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeOrganizationSecurityPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
