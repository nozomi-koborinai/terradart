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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'parent': parent,
           'short_name': ?shortName,
           'type': ?type,
           'advanced_options_config': ?advancedOptionsConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeOrganizationSecurityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeOrganizationSecurityPolicy>`.
  RefTo<GoogleComputeOrganizationSecurityPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortNameRef => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
