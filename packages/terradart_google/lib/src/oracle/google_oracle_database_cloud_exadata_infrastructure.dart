// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_exadata_infrastructure`.
const Set<String> _googleOracleDatabaseCloudExadataInfrastructureSensitive =
    <String>{};

/// Terraform `deletion_policy` for Cloud Exadata Infrastructure.
extension type const OracleDatabaseCloudExadataInfrastructureDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseCloudExadataInfrastructureDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseCloudExadataInfrastructureDeletionPolicy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OracleDatabaseCloudExadataInfrastructureDeletionPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const delete =
      OracleDatabaseCloudExadataInfrastructureDeletionPolicy._(
        TfArgLiteral('DELETE'),
      );
  static const prevent =
      OracleDatabaseCloudExadataInfrastructureDeletionPolicy._(
        TfArgLiteral('PREVENT'),
      );
  static const abandon =
      OracleDatabaseCloudExadataInfrastructureDeletionPolicy._(
        TfArgLiteral('ABANDON'),
      );

  static const List<OracleDatabaseCloudExadataInfrastructureDeletionPolicy>
  values = [delete, prevent, abandon];
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

  @internal
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

  @internal
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

  final EnumList<OracleDatabaseCloudExadataInfrastructureDaysOfWeek>?
  daysOfWeek;

  final TfArg<List<num>>? hoursOfDay;

  final TfArg<bool>? isCustomActionTimeoutEnabled;

  final TfArg<num>? leadTimeWeek;

  final EnumList<OracleDatabaseCloudExadataInfrastructureMonths>? months;

  final OracleDatabaseCloudExadataInfrastructurePatchingMode? patchingMode;

  final OracleDatabaseCloudExadataInfrastructurePreference? preference;

  final TfArg<List<num>>? weeksOfMonth;

  @internal
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

/// `days_of_week` — derived from the provider schema description.
extension type const OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseCloudExadataInfrastructureDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseCloudExadataInfrastructureDaysOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseCloudExadataInfrastructureDaysOfWeek.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const monday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('MONDAY'),
  );
  static const tuesday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('FRIDAY'),
  );
  static const saturday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = OracleDatabaseCloudExadataInfrastructureDaysOfWeek._(
    TfArgLiteral('SUNDAY'),
  );

  static const List<OracleDatabaseCloudExadataInfrastructureDaysOfWeek> values =
      [monday, tuesday, wednesday, thursday, friday, saturday, sunday];
}

/// `months` — derived from the provider schema description.
extension type const OracleDatabaseCloudExadataInfrastructureMonths._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseCloudExadataInfrastructureMonths.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseCloudExadataInfrastructureMonths.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseCloudExadataInfrastructureMonths.arg(TfArg<String> arg)
    : this._(arg);

  static const january = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('JANUARY'),
  );
  static const february = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('FEBRUARY'),
  );
  static const march = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('MARCH'),
  );
  static const april = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('APRIL'),
  );
  static const may = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('MAY'),
  );
  static const june = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('JUNE'),
  );
  static const july = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('JULY'),
  );
  static const august = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('AUGUST'),
  );
  static const september = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('SEPTEMBER'),
  );
  static const october = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('OCTOBER'),
  );
  static const november = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('NOVEMBER'),
  );
  static const december = OracleDatabaseCloudExadataInfrastructureMonths._(
    TfArgLiteral('DECEMBER'),
  );

  static const List<OracleDatabaseCloudExadataInfrastructureMonths> values = [
    january,
    february,
    march,
    april,
    may,
    june,
    july,
    august,
    september,
    october,
    november,
    december,
  ];
}

/// `patching_mode` — derived from the provider schema description.
extension type const OracleDatabaseCloudExadataInfrastructurePatchingMode._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseCloudExadataInfrastructurePatchingMode.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseCloudExadataInfrastructurePatchingMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OracleDatabaseCloudExadataInfrastructurePatchingMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const patchingModeUnspecified =
      OracleDatabaseCloudExadataInfrastructurePatchingMode._(
        TfArgLiteral('PATCHING_MODE_UNSPECIFIED'),
      );
  static const rolling = OracleDatabaseCloudExadataInfrastructurePatchingMode._(
    TfArgLiteral('ROLLING'),
  );
  static const nonRolling =
      OracleDatabaseCloudExadataInfrastructurePatchingMode._(
        TfArgLiteral('NON_ROLLING'),
      );

  static const List<OracleDatabaseCloudExadataInfrastructurePatchingMode>
  values = [patchingModeUnspecified, rolling, nonRolling];
}

/// `preference` — derived from the provider schema description.
extension type const OracleDatabaseCloudExadataInfrastructurePreference._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseCloudExadataInfrastructurePreference.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseCloudExadataInfrastructurePreference.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseCloudExadataInfrastructurePreference.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const maintenanceWindowPreferenceUnspecified =
      OracleDatabaseCloudExadataInfrastructurePreference._(
        TfArgLiteral('MAINTENANCE_WINDOW_PREFERENCE_UNSPECIFIED'),
      );
  static const customPreference =
      OracleDatabaseCloudExadataInfrastructurePreference._(
        TfArgLiteral('CUSTOM_PREFERENCE'),
      );
  static const noPreference =
      OracleDatabaseCloudExadataInfrastructurePreference._(
        TfArgLiteral('NO_PREFERENCE'),
      );

  static const List<OracleDatabaseCloudExadataInfrastructurePreference> values =
      [maintenanceWindowPreferenceUnspecified, customPreference, noPreference];
}

/// Factory wrapper for `google_oracle_database_cloud_exadata_infrastructure`.
///
/// A CloudExadataInfrastructure resource.
///
/// Oracle Exadata Infrastructure on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `shape`, `compute_count`, and `storage_count`. Downstream
/// [GoogleOracleDatabaseCloudVmCluster] references [name].
final class GoogleOracleDatabaseCloudExadataInfrastructure extends Resource {
  static const String tfType =
      'google_oracle_database_cloud_exadata_infrastructure';

  GoogleOracleDatabaseCloudExadataInfrastructure(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> cloudExadataInfrastructureId,
    TfArg<String>? displayName,
    OracleDatabaseCloudExadataInfrastructureProperties? properties,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseCloudExadataInfrastructureDeletionPolicy? deletionPolicy,
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
