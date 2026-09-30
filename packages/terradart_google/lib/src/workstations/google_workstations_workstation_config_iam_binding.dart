// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
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
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'role': role,
           'members': members,
           'location': ?location,
           'project': ?project,
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
}
