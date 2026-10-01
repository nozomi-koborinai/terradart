// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_disk.dart' show GoogleComputeDisk;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_disk_iam_member`.
const Set<String> _googleComputeDiskIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_disk_iam_member` (derived from provider schema).
@immutable
final class ComputeDiskIamMemberCondition {
  const ComputeDiskIamMemberCondition({
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

/// Factory wrapper for `google_compute_disk_iam_member`.
final class GoogleComputeDiskIamMember extends Resource {
  static const String tfType = 'google_compute_disk_iam_member';

  GoogleComputeDiskIamMember(
    super.localName, {
    required RefTo<GoogleComputeDisk> disk,
    required TfArg<String> role,
    required IamPrincipal member,
    ComputeDiskIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'zone': ?(zone ?? disk.alsoAs('zone')),
           'project': ?(project ?? disk.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeDiskIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeDiskIamMember>`.
  RefTo<GoogleComputeDiskIamMember> get ref => RefTo.of(this);

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
