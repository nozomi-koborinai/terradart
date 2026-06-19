// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_source`.
const Set<String> _googleMigrationCenterSourceSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center sources.
enum MigrationCenterSourceDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterSourceDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Data source type for `google_migration_center_source.type`.
enum MigrationCenterSourceType implements TerraformEnum {
  sourceTypeUnknown('SOURCE_TYPE_UNKNOWN'),
  sourceTypeUpload('SOURCE_TYPE_UPLOAD'),
  sourceTypeGuestOsScan('SOURCE_TYPE_GUEST_OS_SCAN'),
  sourceTypeInventoryScan('SOURCE_TYPE_INVENTORY_SCAN'),
  sourceTypeCustom('SOURCE_TYPE_CUSTOM'),
  sourceTypeDiscoveryClient('SOURCE_TYPE_DISCOVERY_CLIENT');

  const MigrationCenterSourceType(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleMigrationCenterSource({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> sourceId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<MigrationCenterSourceType>? type,
    TfArg<num>? priority,
    TfArg<bool>? managed,
    TfArg<MigrationCenterSourceDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'source_id': sourceId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (type != null) 'type': type,
           if (priority != null) 'priority': priority,
           if (managed != null) 'managed': managed,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterSourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
