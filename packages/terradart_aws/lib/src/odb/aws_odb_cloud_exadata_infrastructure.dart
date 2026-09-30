// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_exadata_infrastructure`.
const Set<String> _awsOdbCloudExadataInfrastructureSensitive = <String>{};

/// Typed helper for the `maintenance_window` block of
/// `aws_odb_cloud_exadata_infrastructure` (derived from provider schema).
@immutable
final class OdbCloudExadataInfrastructureMaintenanceWindow {
  const OdbCloudExadataInfrastructureMaintenanceWindow({
    required this.customActionTimeoutInMins,
    this.daysOfWeek,
    this.hoursOfDay,
    required this.isCustomActionTimeoutEnabled,
    this.leadTimeInWeeks,
    this.months,
    required this.patchingMode,
    required this.preference,
    this.weeksOfMonth,
  });

  final TfArg<num> customActionTimeoutInMins;

  final TfArg<List<Object?>>? daysOfWeek;

  final TfArg<List<num>>? hoursOfDay;

  final TfArg<bool> isCustomActionTimeoutEnabled;

  final TfArg<num>? leadTimeInWeeks;

  final TfArg<List<Object?>>? months;

  final TfArg<OdbCloudExadataInfrastructureMaintenanceWindowPatchingMode>
  patchingMode;

  final TfArg<OdbCloudExadataInfrastructureMaintenanceWindowPreference>
  preference;

  final TfArg<List<num>>? weeksOfMonth;

  Map<String, Object?> encode() => {
    'custom_action_timeout_in_mins': customActionTimeoutInMins.toTfJson(),
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'hours_of_day': ?hoursOfDay?.toTfJson(),
    'is_custom_action_timeout_enabled': isCustomActionTimeoutEnabled.toTfJson(),
    'lead_time_in_weeks': ?leadTimeInWeeks?.toTfJson(),
    'months': ?months?.toTfJson(),
    'patching_mode': patchingMode.toTfJson(),
    'preference': preference.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// `patching_mode` — derived from the provider schema description.
enum OdbCloudExadataInfrastructureMaintenanceWindowPatchingMode
    implements TerraformEnum {
  rolling('ROLLING'),
  nonrolling('NONROLLING');

  const OdbCloudExadataInfrastructureMaintenanceWindowPatchingMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `preference` — derived from the provider schema description.
enum OdbCloudExadataInfrastructureMaintenanceWindowPreference
    implements TerraformEnum {
  noPreference('NO_PREFERENCE'),
  customPreference('CUSTOM_PREFERENCE');

  const OdbCloudExadataInfrastructureMaintenanceWindowPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_odb_cloud_exadata_infrastructure`.
final class AwsOdbCloudExadataInfrastructure extends Resource {
  static const String tfType = 'aws_odb_cloud_exadata_infrastructure';

  AwsOdbCloudExadataInfrastructure({
    required super.localName,
    TfArg<String>? availabilityZone,
    required TfArg<String> availabilityZoneId,
    TfArg<num>? computeCount,
    TfArg<List<Map<String, Object?>>>? customerContactsToSendToOci,
    TfArg<String>? databaseServerType,
    required TfArg<String> displayName,
    TfArg<String>? region,
    required TfArg<String> shape,
    TfArg<num>? storageCount,
    TfArg<String>? storageServerType,
    TfArg<Map<String, String>>? tags,
    List<OdbCloudExadataInfrastructureMaintenanceWindow>? maintenanceWindow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': ?availabilityZone,
           'availability_zone_id': availabilityZoneId,
           'compute_count': ?computeCount,
           'customer_contacts_to_send_to_oci': ?customerContactsToSendToOci,
           'database_server_type': ?databaseServerType,
           'display_name': displayName,
           'region': ?region,
           'shape': shape,
           'storage_count': ?storageCount,
           'storage_server_type': ?storageServerType,
           'tags': ?tags,
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal([
               for (final e in maintenanceWindow) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudExadataInfrastructureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbCloudExadataInfrastructure>`.
  RefTo<AwsOdbCloudExadataInfrastructure> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_storage_count` attribute.
  TfRef<num> get activatedStorageCount =>
      TfRef.attribute<num>(this, 'activated_storage_count');

  /// Reference to `additional_storage_count` attribute.
  TfRef<num> get additionalStorageCount =>
      TfRef.attribute<num>(this, 'additional_storage_count');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `available_storage_size_in_gbs` attribute.
  TfRef<num> get availableStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'available_storage_size_in_gbs');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `cpu_count` attribute.
  TfRef<num> get cpuCount => TfRef.attribute<num>(this, 'cpu_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `db_node_storage_size_in_gbs` attribute.
  TfRef<num> get dbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'db_node_storage_size_in_gbs');

  /// Reference to `db_server_version` attribute.
  TfRef<String> get dbServerVersion =>
      TfRef.attribute<String>(this, 'db_server_version');

  /// Reference to `last_maintenance_run_id` attribute.
  TfRef<String> get lastMaintenanceRunId =>
      TfRef.attribute<String>(this, 'last_maintenance_run_id');

  /// Reference to `max_cpu_count` attribute.
  TfRef<num> get maxCpuCount => TfRef.attribute<num>(this, 'max_cpu_count');

  /// Reference to `max_data_storage_in_tbs` attribute.
  TfRef<num> get maxDataStorageInTbs =>
      TfRef.attribute<num>(this, 'max_data_storage_in_tbs');

  /// Reference to `max_db_node_storage_size_in_gbs` attribute.
  TfRef<num> get maxDbNodeStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'max_db_node_storage_size_in_gbs');

  /// Reference to `max_memory_in_gbs` attribute.
  TfRef<num> get maxMemoryInGbs =>
      TfRef.attribute<num>(this, 'max_memory_in_gbs');

  /// Reference to `memory_size_in_gbs` attribute.
  TfRef<num> get memorySizeInGbs =>
      TfRef.attribute<num>(this, 'memory_size_in_gbs');

  /// Reference to `monthly_db_server_version` attribute.
  TfRef<String> get monthlyDbServerVersion =>
      TfRef.attribute<String>(this, 'monthly_db_server_version');

  /// Reference to `monthly_storage_server_version` attribute.
  TfRef<String> get monthlyStorageServerVersion =>
      TfRef.attribute<String>(this, 'monthly_storage_server_version');

  /// Reference to `next_maintenance_run_id` attribute.
  TfRef<String> get nextMaintenanceRunId =>
      TfRef.attribute<String>(this, 'next_maintenance_run_id');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `storage_server_version` attribute.
  TfRef<String> get storageServerVersion =>
      TfRef.attribute<String>(this, 'storage_server_version');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `total_storage_size_in_gbs` attribute.
  TfRef<num> get totalStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'total_storage_size_in_gbs');
}
