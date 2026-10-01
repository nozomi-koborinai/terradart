// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instant_snapshot.dart'
    show GoogleComputeInstantSnapshot;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_instant_snapshot_iam_member`.
const Set<String> _googleComputeInstantSnapshotIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_instant_snapshot_iam_member` (derived from provider schema).
@immutable
final class ComputeInstantSnapshotIamMemberCondition {
  const ComputeInstantSnapshotIamMemberCondition({
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

/// Factory wrapper for `google_compute_instant_snapshot_iam_member`.
final class GoogleComputeInstantSnapshotIamMember extends Resource {
  static const String tfType = 'google_compute_instant_snapshot_iam_member';

  GoogleComputeInstantSnapshotIamMember({
    required super.localName,
    required RefTo<GoogleComputeInstantSnapshot> instantSnapshot,
    required TfArg<String> role,
    required IamPrincipal member,
    ComputeInstantSnapshotIamMemberCondition? condition,
    TfArg<String>? zone,
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
           'zone': ?(zone ?? instantSnapshot.alsoAs('zone')),
           'project': ?(project ?? instantSnapshot.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstantSnapshotIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstantSnapshotIamMember>`.
  RefTo<GoogleComputeInstantSnapshotIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
