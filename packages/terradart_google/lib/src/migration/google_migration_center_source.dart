// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_source`.
const Set<String> _googleMigrationCenterSourceSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center sources.
extension type const MigrationCenterSourceDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterSourceDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterSourceDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterSourceDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = MigrationCenterSourceDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterSourceDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterSourceDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterSourceDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Data source type for `google_migration_center_source.type`.
extension type const MigrationCenterSourceType._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterSourceType.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterSourceType.arg(TfArg<String> arg) : this._(arg);

  static const sourceTypeUnknown = MigrationCenterSourceType._(
    TfArgLiteral('SOURCE_TYPE_UNKNOWN'),
  );
  static const sourceTypeUpload = MigrationCenterSourceType._(
    TfArgLiteral('SOURCE_TYPE_UPLOAD'),
  );
  static const sourceTypeGuestOsScan = MigrationCenterSourceType._(
    TfArgLiteral('SOURCE_TYPE_GUEST_OS_SCAN'),
  );
  static const sourceTypeInventoryScan = MigrationCenterSourceType._(
    TfArgLiteral('SOURCE_TYPE_INVENTORY_SCAN'),
  );
  static const sourceTypeCustom = MigrationCenterSourceType._(
    TfArgLiteral('SOURCE_TYPE_CUSTOM'),
  );
  static const sourceTypeDiscoveryClient = MigrationCenterSourceType._(
    TfArgLiteral('SOURCE_TYPE_DISCOVERY_CLIENT'),
  );

  static const List<MigrationCenterSourceType> values = [
    sourceTypeUnknown,
    sourceTypeUpload,
    sourceTypeGuestOsScan,
    sourceTypeInventoryScan,
    sourceTypeCustom,
    sourceTypeDiscoveryClient,
  ];
}

/// Factory wrapper for `google_migration_center_source`.
///
/// Source represents a data source from which asset discovery data is ingested
/// into Migration Center.
///
/// Migration Center source — ingestion endpoint for discovery or upload data.
///
/// Enable `migrationcenter.googleapis.com` before apply. Pair with
/// [GoogleMigrationCenterDiscoveryClient] or [GoogleMigrationCenterImportJob].
final class GoogleMigrationCenterSource extends Resource {
  static const String tfType = 'google_migration_center_source';

  GoogleMigrationCenterSource(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> sourceId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    MigrationCenterSourceType? type,
    TfArg<num>? priority,
    TfArg<bool>? managed,
    MigrationCenterSourceDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'source_id': sourceId,
           'display_name': ?displayName,
           'description': ?description,
           'type': ?type,
           'priority': ?priority,
           'managed': ?managed,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterSource>`.
  RefTo<GoogleMigrationCenterSource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `error_frame_count` attribute.
  TfRef<num> get errorFrameCount =>
      TfRef.attribute<num>(this, 'error_frame_count');

  /// Reference to `pending_frame_count` attribute.
  TfRef<num> get pendingFrameCount =>
      TfRef.attribute<num>(this, 'pending_frame_count');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed` attribute.
  TfRef<bool> get managed => TfRef.attribute<bool>(this, 'managed');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_id` attribute.
  TfRef<String> get sourceId => TfRef.attribute<String>(this, 'source_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
