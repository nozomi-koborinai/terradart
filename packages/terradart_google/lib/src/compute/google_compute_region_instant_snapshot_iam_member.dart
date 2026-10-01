// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_instant_snapshot.dart'
    show GoogleComputeRegionInstantSnapshot;

/// Sensitive field paths for `google_compute_region_instant_snapshot_iam_member`.
const Set<String> _googleComputeRegionInstantSnapshotIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_region_instant_snapshot_iam_member` (derived from provider schema).
@immutable
final class ComputeRegionInstantSnapshotIamMemberCondition {
  const ComputeRegionInstantSnapshotIamMemberCondition({
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

/// Factory wrapper for `google_compute_region_instant_snapshot_iam_member`.
final class GoogleComputeRegionInstantSnapshotIamMember extends Resource {
  static const String tfType =
      'google_compute_region_instant_snapshot_iam_member';

  GoogleComputeRegionInstantSnapshotIamMember({
    required super.localName,
    required RefTo<GoogleComputeRegionInstantSnapshot> instantSnapshot,
    required TfArg<String> role,
    required TfArg<String> member,
    ComputeRegionInstantSnapshotIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?(region ?? instantSnapshot.alsoAs('region')),
           'project': ?(project ?? instantSnapshot.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstantSnapshotIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionInstantSnapshotIamMember>`.
  RefTo<GoogleComputeRegionInstantSnapshotIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
