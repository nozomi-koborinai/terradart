// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_preference_set`.
const Set<String> _googleMigrationCenterPreferenceSetSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center preference sets.
enum MigrationCenterPreferenceSetDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterPreferenceSetDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_preference_set`.
///
/// Manages the PreferenceSet resource.
///
/// Migration Center preference set — sizing / target-product assumptions for reports.
///
/// Pair with [GoogleMigrationCenterGroup] via
/// [GoogleMigrationCenterReportConfig] `group_preferenceset_assignments`.
/// Optional `virtual_machine_preferences` nested blocks are omitted from this
/// curated surface; extend the override when a Wave needs typed VM prefs.
final class GoogleMigrationCenterPreferenceSet extends Resource {
  static const String tfType = 'google_migration_center_preference_set';

  GoogleMigrationCenterPreferenceSet({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> preferenceSetId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<MigrationCenterPreferenceSetDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'preference_set_id': preferenceSetId,
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterPreferenceSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterPreferenceSet>`.
  RefTo<GoogleMigrationCenterPreferenceSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `preference_set_id` attribute.
  TfRef<String> get preferenceSetIdRef =>
      TfRef.attribute<String>(this, 'preference_set_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
