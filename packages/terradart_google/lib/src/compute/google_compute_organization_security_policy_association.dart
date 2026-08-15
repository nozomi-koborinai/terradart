// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleComputeOrganizationSecurityPolicyAssociation({
    required super.localName,
    required TfArg<String> attachmentId,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? excludedFolders,
    TfArg<List<String>>? excludedProjects,
    required TfArg<String> name,
    required TfArg<String> policyId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attachment_id': attachmentId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (excludedFolders != null) 'excluded_folders': excludedFolders,
           if (excludedProjects != null) 'excluded_projects': excludedProjects,
           'name': name,
           'policy_id': policyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeOrganizationSecurityPolicyAssociationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
