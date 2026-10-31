// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_access_approval_settings`.
const Set<String> _googleFolderAccessApprovalSettingsSensitive = <String>{};

/// Typed helper for the `enrolled_services` block of
/// `google_folder_access_approval_settings` (derived from provider schema).
@immutable
final class FolderAccessApprovalSettingsEnrolledServices {
  const FolderAccessApprovalSettingsEnrolledServices({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  final FolderAccessApprovalSettingsCloudProduct cloudProduct;

  final FolderAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    'enrollment_level': ?enrollmentLevel?.toTfJson(),
  };
}

/// `cloud_product` — derived from the provider schema description.
extension type const FolderAccessApprovalSettingsCloudProduct._(TfArg<String> _)
    implements TfArg<String> {
  FolderAccessApprovalSettingsCloudProduct.variable(String name)
    : this._(TfArg.variable(name));
  FolderAccessApprovalSettingsCloudProduct.expression(String template)
    : this._(TfArg.expression(template));
  const FolderAccessApprovalSettingsCloudProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const all = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('all'),
  );
  static const appEngine = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Engine'),
  );
  static const bigquery = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('BigQuery'),
  );
  static const cloudBigtable = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Bigtable'),
  );
  static const cloudKeyManagementService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Key Management Service'),
      );
  static const computeEngine = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Compute Engine'),
  );
  static const cloudDataflow = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataflow'),
  );
  static const cloudIdentityAndAccessManagement =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity and Access Management'),
      );
  static const cloudPubSub = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Pub/Sub'),
  );
  static const cloudStorage = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Storage'),
  );
  static const persistentDisk = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Persistent Disk'),
  );
  static const appengineGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('appengine.googleapis.com'),
      );
  static const bigqueryGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigquery.googleapis.com'),
      );
  static const bigtableGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigtable.googleapis.com'),
      );
  static const cloudkmsGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudkms.googleapis.com'),
      );
  static const computeGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('compute.googleapis.com'),
      );
  static const dataflowGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataflow.googleapis.com'),
      );
  static const iamGoogleapisCom = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('iam.googleapis.com'),
  );
  static const pubsubGoogleapisCom = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('pubsub.googleapis.com'),
  );
  static const storageGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('storage.googleapis.com'),
      );

  static const List<FolderAccessApprovalSettingsCloudProduct> values = [
    all,
    appEngine,
    bigquery,
    cloudBigtable,
    cloudKeyManagementService,
    computeEngine,
    cloudDataflow,
    cloudIdentityAndAccessManagement,
    cloudPubSub,
    cloudStorage,
    persistentDisk,
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
extension type const FolderAccessApprovalSettingsEnrollmentLevel._(
  TfArg<String> _
) implements TfArg<String> {
  FolderAccessApprovalSettingsEnrollmentLevel.variable(String name)
    : this._(TfArg.variable(name));
  FolderAccessApprovalSettingsEnrollmentLevel.expression(String template)
    : this._(TfArg.expression(template));
  const FolderAccessApprovalSettingsEnrollmentLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const blockAll = FolderAccessApprovalSettingsEnrollmentLevel._(
    TfArgLiteral('BLOCK_ALL'),
  );

  static const List<FolderAccessApprovalSettingsEnrollmentLevel> values = [
    blockAll,
  ];
}

/// Factory wrapper for `google_folder_access_approval_settings`.
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
final class GoogleFolderAccessApprovalSettings extends Resource {
  static const String tfType = 'google_folder_access_approval_settings';

  GoogleFolderAccessApprovalSettings(
    super.localName, {
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    required TfArg<String> folderId,
    TfArg<List<String>>? notificationEmails,
    required List<FolderAccessApprovalSettingsEnrolledServices>
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
           'folder_id': folderId,
           'notification_emails': ?notificationEmails,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFolderAccessApprovalSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFolderAccessApprovalSettings>`.
  RefTo<GoogleFolderAccessApprovalSettings> get ref => RefTo.of(this);

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

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `notification_emails` attribute.
  TfRef<List<String>> get notificationEmails =>
      TfRef.attribute<List<String>>(this, 'notification_emails');
}
