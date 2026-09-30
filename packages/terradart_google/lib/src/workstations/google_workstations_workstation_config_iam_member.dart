// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation_config_iam_member`.
const Set<String> _googleWorkstationsWorkstationConfigIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_workstations_workstation_config_iam_member` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigIamMemberCondition {
  const WorkstationsWorkstationConfigIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_workstations_workstation_config_iam_member`.
///
/// Non-authoritative IAM member on a Cloud Workstations config.
///
/// Deferred with the never_apply workstation cluster (no apply-smoke
/// quickstart).
final class GoogleWorkstationsWorkstationConfigIamMember extends Resource {
  static const String tfType =
      'google_workstations_workstation_config_iam_member';

  GoogleWorkstationsWorkstationConfigIamMember({
    required super.localName,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    WorkstationsWorkstationConfigIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'role': role,
           'member': member,
           'location': ?location,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationConfigIamMember>`.
  RefTo<GoogleWorkstationsWorkstationConfigIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterIdRef =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigIdRef =>
      TfRef.attribute<String>(this, 'workstation_config_id');
}
