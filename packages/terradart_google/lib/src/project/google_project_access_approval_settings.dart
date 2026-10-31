// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_access_approval_settings`.
const Set<String> _googleProjectAccessApprovalSettingsSensitive = <String>{};

/// Typed helper for the `enrolled_services` block of
/// `google_project_access_approval_settings` (derived from provider schema).
@immutable
final class ProjectAccessApprovalSettingsEnrolledServices {
  const ProjectAccessApprovalSettingsEnrolledServices({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  final ProjectAccessApprovalSettingsCloudProduct cloudProduct;

  final ProjectAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    'enrollment_level': ?enrollmentLevel?.toTfJson(),
  };
}

/// `cloud_product` — derived from the provider schema description.
extension type const ProjectAccessApprovalSettingsCloudProduct._(
  TfArg<String> _
) implements TfArg<String> {
  ProjectAccessApprovalSettingsCloudProduct.variable(String name)
    : this._(TfArg.variable(name));
  ProjectAccessApprovalSettingsCloudProduct.expression(String template)
    : this._(TfArg.expression(template));
  const ProjectAccessApprovalSettingsCloudProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const all = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('all'),
  );
  static const appengineGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('appengine.googleapis.com'),
      );
  static const bigqueryGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigquery.googleapis.com'),
      );
  static const bigtableGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigtable.googleapis.com'),
      );
  static const cloudkmsGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudkms.googleapis.com'),
      );
  static const computeGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('compute.googleapis.com'),
      );
  static const dataflowGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataflow.googleapis.com'),
      );
  static const iamGoogleapisCom = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('iam.googleapis.com'),
  );
  static const pubsubGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('pubsub.googleapis.com'),
      );
  static const storageGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('storage.googleapis.com'),
      );

  static const List<ProjectAccessApprovalSettingsCloudProduct> values = [
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
extension type const ProjectAccessApprovalSettingsEnrollmentLevel._(
  TfArg<String> _
) implements TfArg<String> {
  ProjectAccessApprovalSettingsEnrollmentLevel.variable(String name)
    : this._(TfArg.variable(name));
  ProjectAccessApprovalSettingsEnrollmentLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ProjectAccessApprovalSettingsEnrollmentLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const blockAll = ProjectAccessApprovalSettingsEnrollmentLevel._(
    TfArgLiteral('BLOCK_ALL'),
  );

  static const List<ProjectAccessApprovalSettingsEnrollmentLevel> values = [
    blockAll,
  ];
}

/// Factory wrapper for `google_project_access_approval_settings`.
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
final class GoogleProjectAccessApprovalSettings extends Resource {
  static const String tfType = 'google_project_access_approval_settings';

  GoogleProjectAccessApprovalSettings(
    super.localName, {
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? notificationEmails,
    TfArg<String>? project,
    required TfArg<String> projectId,
    required List<ProjectAccessApprovalSettingsEnrolledServices>
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
           'project': ?project,
           'project_id': projectId,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleProjectAccessApprovalSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectAccessApprovalSettings>`.
  RefTo<GoogleProjectAccessApprovalSettings> get ref => RefTo.of(this);

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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
