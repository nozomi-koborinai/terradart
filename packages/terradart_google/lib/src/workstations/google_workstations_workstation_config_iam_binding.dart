// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../workstations/google_workstations_workstation_config.dart'
    show GoogleWorkstationsWorkstationConfig;

/// Sensitive field paths for `google_workstations_workstation_config_iam_binding`.
const Set<String> _googleWorkstationsWorkstationConfigIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_workstations_workstation_config_iam_binding` (derived from provider schema).
@immutable
final class WorkstationsWorkstationConfigIamBindingCondition {
  const WorkstationsWorkstationConfigIamBindingCondition({
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

/// Factory wrapper for `google_workstations_workstation_config_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Workstations
/// config.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleWorkstationsWorkstationConfigIamMember] for additive grants.
/// Deferred with the never_apply workstation cluster (no apply-smoke
/// quickstart).
final class GoogleWorkstationsWorkstationConfigIamBinding extends Resource {
  static const String tfType =
      'google_workstations_workstation_config_iam_binding';

  GoogleWorkstationsWorkstationConfigIamBinding({
    required super.localName,
    TfArg<String>? workstationClusterId,
    required RefTo<GoogleWorkstationsWorkstationConfig> workstationConfig,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    WorkstationsWorkstationConfigIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id':
               ?(workstationClusterId ??
               workstationConfig.alsoAs('workstation_cluster_id')),
           'workstation_config_id': workstationConfig.encodeAs(
             'workstation_config_id',
           ),
           'role': role,
           'members': members,
           'location': ?(location ?? workstationConfig.alsoAs('location')),
           'project': ?(project ?? workstationConfig.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationConfigIamBinding>`.
  RefTo<GoogleWorkstationsWorkstationConfigIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

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
