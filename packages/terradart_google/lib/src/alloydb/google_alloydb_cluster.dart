// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_cluster`.
const Set<String> _googleAlloydbClusterSensitive = <String>{
  'initial_user.password',
};

/// `cluster_type` — primary vs secondary cluster role.
enum AlloydbClusterType implements TerraformEnum {
  primary('PRIMARY'),
  secondary('SECONDARY');

  const AlloydbClusterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network_config` nested block (max=1).
class AlloydbClusterNetworkConfig {
  const AlloydbClusterNetworkConfig({this.network, this.allocatedIpRange});

  final TfArg<String>? network;
  final TfArg<String>? allocatedIpRange;

  Map<String, Object?> toArgMap() => {
    if (network != null) 'network': network!.toTfJson(),
    if (allocatedIpRange != null)
      'allocated_ip_range': allocatedIpRange!.toTfJson(),
  };
}

/// Day-of-week values shared by backup and maintenance windows.
enum AlloydbClusterDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const AlloydbClusterDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// `automated_backup_policy.weekly_schedule` nested block.
class AlloydbClusterWeeklySchedule {
  const AlloydbClusterWeeklySchedule({this.daysOfWeek});

  final List<AlloydbClusterDayOfWeek>? daysOfWeek;

  Map<String, Object?> toArgMap() => {
    if (daysOfWeek != null)
      'days_of_week': daysOfWeek!.map((d) => d.terraformValue).toList(),
  };
}

/// `automated_backup_policy` nested block (max=1).
class AlloydbClusterAutomatedBackupPolicy {
  const AlloydbClusterAutomatedBackupPolicy({this.weeklySchedule});

  final AlloydbClusterWeeklySchedule? weeklySchedule;

  Map<String, Object?> toArgMap() => {
    if (weeklySchedule != null) 'weekly_schedule': [weeklySchedule!.toArgMap()],
  };
}

/// `maintenance_update_policy.maintenance_windows` nested block.
class AlloydbClusterMaintenanceWindow {
  const AlloydbClusterMaintenanceWindow({this.day});

  final AlloydbClusterDayOfWeek? day;

  Map<String, Object?> toArgMap() => {
    if (day != null) 'day': day!.terraformValue,
  };
}

/// `maintenance_update_policy` nested block (max=1).
class AlloydbClusterMaintenanceUpdatePolicy {
  const AlloydbClusterMaintenanceUpdatePolicy({this.maintenanceWindows});

  final AlloydbClusterMaintenanceWindow? maintenanceWindows;

  Map<String, Object?> toArgMap() => {
    if (maintenanceWindows != null)
      'maintenance_windows': [maintenanceWindows!.toArgMap()],
  };
}

/// `initial_user` nested block (max=1) — bootstrap credentials.
class AlloydbClusterInitialUser {
  const AlloydbClusterInitialUser({
    required this.user,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
  });

  final TfArg<String> user;
  final TfArg<String>? password;
  final TfArg<String>? passwordWo;
  final TfArg<int>? passwordWoVersion;

  Map<String, Object?> toArgMap() => {
    'user': user.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (passwordWo != null) 'password_wo': passwordWo!.toTfJson(),
    if (passwordWoVersion != null)
      'password_wo_version': passwordWoVersion!.toTfJson(),
  };
}

/// Factory wrapper for `google_alloydb_cluster`.
///
/// A managed alloydb cluster.
///
/// AlloyDB cluster — regional Postgres-compatible database cluster.
///
/// Private-IP wiring reuses the same PSA chain as Cloud SQL:
/// [GoogleComputeNetwork] → [GoogleComputeGlobalAddress] →
/// [GoogleServiceNetworkingConnection] → [AlloydbClusterNetworkConfig].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [clusterId]: short cluster ID.
/// - [location]: regional location (e.g. `asia-northeast1`).
/// - [networkConfig]: VPC + optional allocated PSA range name.
///
/// Enable `alloydb.googleapis.com` via [GoogleProjectService] or
/// [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleAlloydbCluster(
///   localName: 'app',
///   clusterId: TfArg.literal('app-cluster'),
///   location: TfArg.literal('asia-northeast1'),
///   networkConfig: AlloydbClusterNetworkConfig(
///     network: TfArg.ref(vpc.selfLink),
///     allocatedIpRange: TfArg.ref(psaRange.nameRef),
///   ),
///   initialUser: AlloydbClusterInitialUser(
///     user: TfArg.literal('postgres'),
///     passwordWo: TfArg.literal(dbPassword),
///     passwordWoVersion: TfArg.literal(1),
///   ),
///   dependsOn: [ResourceDependency(psaConnection)],
/// );
/// ```
final class GoogleAlloydbCluster extends Resource {
  static const String tfType = 'google_alloydb_cluster';

  GoogleAlloydbCluster({
    required super.localName,
    required TfArg<String> clusterId,
    required TfArg<String> location,
    AlloydbClusterNetworkConfig? networkConfig,
    AlloydbClusterInitialUser? initialUser,
    AlloydbClusterAutomatedBackupPolicy? automatedBackupPolicy,
    AlloydbClusterMaintenanceUpdatePolicy? maintenanceUpdatePolicy,
    TfArg<AlloydbClusterType>? clusterType,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'location': location,
           if (networkConfig != null)
             'network_config': TfArg.literal([networkConfig.toArgMap()]),
           if (initialUser != null)
             'initial_user': TfArg.literal([initialUser.toArgMap()]),
           if (automatedBackupPolicy != null)
             'automated_backup_policy': TfArg.literal([
               automatedBackupPolicy.toArgMap(),
             ]),
           if (maintenanceUpdatePolicy != null)
             'maintenance_update_policy': TfArg.literal([
               maintenanceUpdatePolicy.toArgMap(),
             ]),
           if (clusterType != null) 'cluster_type': clusterType,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get backupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_source');

  /// Reference to `backupdr_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get backupdrBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'backupdr_backup_source',
      );

  /// Reference to `continuous_backup_info` attribute.
  TfRef<List<Map<String, Object?>>> get continuousBackupInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'continuous_backup_info',
      );

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_info` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_info');

  /// Reference to `migration_source` attribute.
  TfRef<List<Map<String, Object?>>> get migrationSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'migration_source');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `trial_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get trialMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trial_metadata');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
