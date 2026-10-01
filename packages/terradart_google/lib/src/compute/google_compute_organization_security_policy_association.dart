// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_organization_security_policy.dart'
    show GoogleComputeOrganizationSecurityPolicy;

/// Sensitive field paths for `google_compute_organization_security_policy_association`.
const Set<String> _googleComputeOrganizationSecurityPolicyAssociationSensitive =
    <String>{};

/// Factory wrapper for `google_compute_organization_security_policy_association`.
///
/// An association for the OrganizationSecurityPolicy.
///
/// Org security policy attachment — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputeOrganizationSecurityPolicyAssociation
    extends Resource {
  static const String tfType =
      'google_compute_organization_security_policy_association';

  GoogleComputeOrganizationSecurityPolicyAssociation(
    super.localName, {
    required TfArg<String> attachmentId,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? excludedFolders,
    TfArg<List<String>>? excludedProjects,
    required TfArg<String> name,
    required RefTo<GoogleComputeOrganizationSecurityPolicy> policyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attachment_id': attachmentId,
           'deletion_policy': ?deletionPolicy,
           'excluded_folders': ?excludedFolders,
           'excluded_projects': ?excludedProjects,
           'name': name,
           'policy_id': policyId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeOrganizationSecurityPolicyAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeOrganizationSecurityPolicyAssociation>`.
  RefTo<GoogleComputeOrganizationSecurityPolicyAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `attachment_id` attribute.
  TfRef<String> get attachmentId =>
      TfRef.attribute<String>(this, 'attachment_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `excluded_folders` attribute.
  TfRef<List<String>> get excludedFolders =>
      TfRef.attribute<List<String>>(this, 'excluded_folders');

  /// Reference to `excluded_projects` attribute.
  TfRef<List<String>> get excludedProjects =>
      TfRef.attribute<List<String>>(this, 'excluded_projects');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
