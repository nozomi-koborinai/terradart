// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_instant_snapshot.dart'
    show GoogleComputeRegionInstantSnapshot;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_region_instant_snapshot_iam_binding`.
const Set<String> _googleComputeRegionInstantSnapshotIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_region_instant_snapshot_iam_binding` (derived from provider schema).
@immutable
final class ComputeRegionInstantSnapshotIamBindingCondition {
  const ComputeRegionInstantSnapshotIamBindingCondition({
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

/// Factory wrapper for `google_compute_region_instant_snapshot_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a regional instant
/// snapshot.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeRegionInstantSnapshotIamMember] for additive grants.
final class GoogleComputeRegionInstantSnapshotIamBinding extends Resource {
  static const String tfType =
      'google_compute_region_instant_snapshot_iam_binding';

  GoogleComputeRegionInstantSnapshotIamBinding({
    required super.localName,
    required RefTo<GoogleComputeRegionInstantSnapshot> instantSnapshot,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ComputeRegionInstantSnapshotIamBindingCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instantSnapshot.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?(region ?? instantSnapshot.alsoAs('region')),
           'project': ?(project ?? instantSnapshot.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstantSnapshotIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionInstantSnapshotIamBinding>`.
  RefTo<GoogleComputeRegionInstantSnapshotIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
