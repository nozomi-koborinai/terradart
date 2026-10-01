// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../workstations/google_workstations_workstation.dart'
    show GoogleWorkstationsWorkstation;

/// Sensitive field paths for `google_workstations_workstation_iam_member`.
const Set<String> _googleWorkstationsWorkstationIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_workstations_workstation_iam_member` (derived from provider schema).
@immutable
final class WorkstationsWorkstationIamMemberCondition {
  const WorkstationsWorkstationIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_workstations_workstation_iam_member`.
///
/// Non-authoritative IAM member on a Cloud Workstations workstation.
///
/// Deferred with the never_apply workstation cluster (no apply-smoke
/// quickstart).
final class GoogleWorkstationsWorkstationIamMember extends Resource {
  static const String tfType = 'google_workstations_workstation_iam_member';

  GoogleWorkstationsWorkstationIamMember(
    super.localName, {
    TfArg<String>? workstationClusterId,
    TfArg<String>? workstationConfigId,
    required RefTo<GoogleWorkstationsWorkstation> workstation,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    TfArg<String>? project,
    WorkstationsWorkstationIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id':
               ?(workstationClusterId ??
               workstation.alsoAs('workstation_cluster_id')),
           'workstation_config_id':
               ?(workstationConfigId ??
               workstation.alsoAs('workstation_config_id')),
           'workstation_id': workstation.encodeAs('workstation_id'),
           'role': role,
           'member': member,
           'location': ?(location ?? workstation.alsoAs('location')),
           'project': ?(project ?? workstation.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationIamMember>`.
  RefTo<GoogleWorkstationsWorkstationIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterId =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigId =>
      TfRef.attribute<String>(this, 'workstation_config_id');

  /// Reference to `workstation_id` attribute.
  TfRef<String> get workstationId =>
      TfRef.attribute<String>(this, 'workstation_id');
}
