// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_disk.dart' show GoogleComputeDisk;

/// Sensitive field paths for `google_compute_disk_iam_binding`.
const Set<String> _googleComputeDiskIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_disk_iam_binding` (derived from provider schema).
@immutable
final class ComputeDiskIamBindingCondition {
  const ComputeDiskIamBindingCondition({
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

/// Factory wrapper for `google_compute_disk_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Engine disk.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeDiskIamMember] for additive grants.
final class GoogleComputeDiskIamBinding extends Resource {
  static const String tfType = 'google_compute_disk_iam_binding';

  GoogleComputeDiskIamBinding({
    required super.localName,
    required RefTo<GoogleComputeDisk> disk,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    ComputeDiskIamBindingCondition? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': disk.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'zone': ?(zone ?? disk.alsoAs('zone')),
           'project': ?(project ?? disk.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeDiskIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeDiskIamBinding>`.
  RefTo<GoogleComputeDiskIamBinding> get ref => RefTo.of(this);

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

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
