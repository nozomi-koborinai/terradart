// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleWorkstationsWorkstationIamMember({
    required super.localName,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> workstationId,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'workstation_id': workstationId,
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
      _googleWorkstationsWorkstationIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationIamMember>`.
  RefTo<GoogleWorkstationsWorkstationIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
