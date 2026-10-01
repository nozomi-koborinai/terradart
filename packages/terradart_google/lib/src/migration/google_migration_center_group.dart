// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_group`.
const Set<String> _googleMigrationCenterGroupSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center groups.
extension type const MigrationCenterGroupDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterGroupDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterGroupDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterGroupDeletionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const delete = MigrationCenterGroupDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterGroupDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterGroupDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterGroupDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Factory wrapper for `google_migration_center_group`.
///
/// A resource that represents an asset group. The purpose of an asset group is
/// to bundle a set of assets that have something in common, while allowing
/// users to add annotations to the group.
///
/// Migration Center asset group — annotate a bundle of related assets.
///
/// Pair with [GoogleMigrationCenterPreferenceSet] via
/// [GoogleMigrationCenterReportConfig] `group_preferenceset_assignments`.
final class GoogleMigrationCenterGroup extends Resource {
  static const String tfType = 'google_migration_center_group';

  GoogleMigrationCenterGroup(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> groupId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    MigrationCenterGroupDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'group_id': groupId,
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterGroup>`.
  RefTo<GoogleMigrationCenterGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

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

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
