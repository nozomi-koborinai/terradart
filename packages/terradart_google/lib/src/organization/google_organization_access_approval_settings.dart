// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_access_approval_settings`.
const Set<String> _googleOrganizationAccessApprovalSettingsSensitive =
    <String>{};

/// Typed helper for the `enrolled_services` block of
/// `google_organization_access_approval_settings` (derived from provider schema).
@immutable
final class OrganizationAccessApprovalSettingsEnrolledServices {
  const OrganizationAccessApprovalSettingsEnrolledServices({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  final TfArg<String> cloudProduct;

  final TfArg<String>? enrollmentLevel;

  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    if (enrollmentLevel != null)
      'enrollment_level': enrollmentLevel!.toTfJson(),
  };
}

/// Factory wrapper for `google_organization_access_approval_settings`.
///
/// Access Approval enables you to require your explicit approval whenever
/// Google support and engineering need to access your customer content.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOrganizationAccessApprovalSettings extends Resource {
  static const String tfType = 'google_organization_access_approval_settings';

  GoogleOrganizationAccessApprovalSettings({
    required super.localName,
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? notificationEmails,
    required TfArg<String> organizationId,
    required List<OrganizationAccessApprovalSettingsEnrolledServices>
    enrolledServices,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (activeKeyVersion != null) 'active_key_version': activeKeyVersion,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (notificationEmails != null)
             'notification_emails': notificationEmails,
           'organization_id': organizationId,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOrganizationAccessApprovalSettingsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestor_has_active_key_version` attribute.
  TfRef<bool> get ancestorHasActiveKeyVersion =>
      TfRef.attribute<bool>(this, 'ancestor_has_active_key_version');

  /// Reference to `enrolled_ancestor` attribute.
  TfRef<bool> get enrolledAncestor =>
      TfRef.attribute<bool>(this, 'enrolled_ancestor');

  /// Reference to `invalid_key_version` attribute.
  TfRef<bool> get invalidKeyVersion =>
      TfRef.attribute<bool>(this, 'invalid_key_version');
}
