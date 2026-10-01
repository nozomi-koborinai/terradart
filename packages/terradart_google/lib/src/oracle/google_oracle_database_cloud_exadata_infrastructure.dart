// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_exadata_infrastructure`.
const Set<String> _googleOracleDatabaseCloudExadataInfrastructureSensitive =
    <String>{};

/// Terraform `deletion_policy` for Cloud Exadata Infrastructure.
enum OracleDatabaseCloudExadataInfrastructureDeletionPolicy
    implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseCloudExadataInfrastructureDeletionPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_cloud_exadata_infrastructure` (derived from provider schema).
@immutable
final class OracleDatabaseCloudExadataInfrastructureProperties {
  const OracleDatabaseCloudExadataInfrastructureProperties({
    this.computeCount,
    required this.shape,
    this.storageCount,
    this.totalStorageSizeGb,
    this.customerContacts,
    this.maintenanceWindow,
  });

  final TfArg<num>? computeCount;

  final TfArg<String> shape;

  final TfArg<num>? storageCount;

  final TfArg<num>? totalStorageSizeGb;

  final List<OracleDatabaseCloudExadataInfrastructureCustomerContacts>?
  customerContacts;

  final OracleDatabaseCloudExadataInfrastructureMaintenanceWindow?
  maintenanceWindow;

  Map<String, Object?> encode() => {
    'compute_count': ?computeCount?.toTfJson(),
    'shape': shape.toTfJson(),
    'storage_count': ?storageCount?.toTfJson(),
    'total_storage_size_gb': ?totalStorageSizeGb?.toTfJson(),
    if (customerContacts != null)
      'customer_contacts': [for (final e in customerContacts!) e.encode()],
    'maintenance_window': ?maintenanceWindow?.encode(),
  };
}

/// Typed helper for the `properties.customer_contacts` block of
/// `google_oracle_database_cloud_exadata_infrastructure` (derived from provider schema).
@immutable
final class OracleDatabaseCloudExadataInfrastructureCustomerContacts {
  const OracleDatabaseCloudExadataInfrastructureCustomerContacts({
    required this.email,
  });

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `properties.maintenance_window` block of
/// `google_oracle_database_cloud_exadata_infrastructure` (derived from provider schema).
@immutable
final class OracleDatabaseCloudExadataInfrastructureMaintenanceWindow {
  const OracleDatabaseCloudExadataInfrastructureMaintenanceWindow({
    this.customActionTimeoutMins,
    this.daysOfWeek,
    this.hoursOfDay,
    this.isCustomActionTimeoutEnabled,
    this.leadTimeWeek,
    this.months,
    this.patchingMode,
    this.preference,
    this.weeksOfMonth,
  });

  final TfArg<num>? customActionTimeoutMins;

  final TfArg<List<String>>? daysOfWeek;

  final TfArg<List<num>>? hoursOfDay;

  final TfArg<bool>? isCustomActionTimeoutEnabled;

  final TfArg<num>? leadTimeWeek;

  final TfArg<List<String>>? months;

  final TfArg<String>? patchingMode;

  final TfArg<String>? preference;

  final TfArg<List<num>>? weeksOfMonth;

  Map<String, Object?> encode() => {
    'custom_action_timeout_mins': ?customActionTimeoutMins?.toTfJson(),
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'hours_of_day': ?hoursOfDay?.toTfJson(),
    'is_custom_action_timeout_enabled': ?isCustomActionTimeoutEnabled
        ?.toTfJson(),
    'lead_time_week': ?leadTimeWeek?.toTfJson(),
    'months': ?months?.toTfJson(),
    'patching_mode': ?patchingMode?.toTfJson(),
    'preference': ?preference?.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// Factory wrapper for `google_oracle_database_cloud_exadata_infrastructure`.
///
/// A CloudExadataInfrastructure resource.
///
/// Oracle Exadata Infrastructure on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `shape`, `compute_count`, and `storage_count`. Downstream
/// [GoogleOracleDatabaseCloudVmCluster] references [nameRef].
final class GoogleOracleDatabaseCloudExadataInfrastructure extends Resource {
  static const String tfType =
      'google_oracle_database_cloud_exadata_infrastructure';

  GoogleOracleDatabaseCloudExadataInfrastructure({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> cloudExadataInfrastructureId,
    TfArg<String>? displayName,
    OracleDatabaseCloudExadataInfrastructureProperties? properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseCloudExadataInfrastructureDeletionPolicy>?
    deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           'display_name': ?displayName,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudExadataInfrastructureSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseCloudExadataInfrastructure>`.
  RefTo<GoogleOracleDatabaseCloudExadataInfrastructure> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
