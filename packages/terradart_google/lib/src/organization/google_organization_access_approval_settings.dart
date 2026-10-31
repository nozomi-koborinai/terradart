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

  final OrganizationAccessApprovalSettingsCloudProduct cloudProduct;

  final OrganizationAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    'enrollment_level': ?enrollmentLevel?.toTfJson(),
  };
}

/// `cloud_product` — derived from the provider schema description.
extension type const OrganizationAccessApprovalSettingsCloudProduct._(
  TfArg<String> _
) implements TfArg<String> {
  OrganizationAccessApprovalSettingsCloudProduct.variable(String name)
    : this._(TfArg.variable(name));
  OrganizationAccessApprovalSettingsCloudProduct.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationAccessApprovalSettingsCloudProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const all = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('all'),
  );
  static const appengineGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('appengine.googleapis.com'),
      );
  static const bigqueryGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigquery.googleapis.com'),
      );
  static const bigtableGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigtable.googleapis.com'),
      );
  static const cloudkmsGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudkms.googleapis.com'),
      );
  static const computeGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('compute.googleapis.com'),
      );
  static const dataflowGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataflow.googleapis.com'),
      );
  static const iamGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('iam.googleapis.com'),
      );
  static const pubsubGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('pubsub.googleapis.com'),
      );
  static const storageGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('storage.googleapis.com'),
      );

  static const List<OrganizationAccessApprovalSettingsCloudProduct> values = [
    all,
    appengineGoogleapisCom,
    bigqueryGoogleapisCom,
    bigtableGoogleapisCom,
    cloudkmsGoogleapisCom,
    computeGoogleapisCom,
    dataflowGoogleapisCom,
    iamGoogleapisCom,
    pubsubGoogleapisCom,
    storageGoogleapisCom,
  ];
}

/// `enrollment_level` — derived from the provider schema description.
extension type const OrganizationAccessApprovalSettingsEnrollmentLevel._(
  TfArg<String> _
) implements TfArg<String> {
  OrganizationAccessApprovalSettingsEnrollmentLevel.variable(String name)
    : this._(TfArg.variable(name));
  OrganizationAccessApprovalSettingsEnrollmentLevel.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationAccessApprovalSettingsEnrollmentLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const blockAll = OrganizationAccessApprovalSettingsEnrollmentLevel._(
    TfArgLiteral('BLOCK_ALL'),
  );

  static const List<OrganizationAccessApprovalSettingsEnrollmentLevel> values =
      [blockAll];
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

  GoogleOrganizationAccessApprovalSettings(
    super.localName, {
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? notificationEmails,
    required TfArg<String> organizationId,
    required List<OrganizationAccessApprovalSettingsEnrolledServices>
    enrolledServices,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active_key_version': ?activeKeyVersion,
           'deletion_policy': ?deletionPolicy,
           'notification_emails': ?notificationEmails,
           'organization_id': organizationId,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOrganizationAccessApprovalSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrganizationAccessApprovalSettings>`.
  RefTo<GoogleOrganizationAccessApprovalSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `active_key_version` attribute.
  TfRef<String> get activeKeyVersion =>
      TfRef.attribute<String>(this, 'active_key_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `notification_emails` attribute.
  TfRef<List<String>> get notificationEmails =>
      TfRef.attribute<List<String>>(this, 'notification_emails');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
