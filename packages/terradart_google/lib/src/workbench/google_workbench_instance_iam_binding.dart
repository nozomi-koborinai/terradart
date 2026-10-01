// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../workbench/google_workbench_instance.dart'
    show GoogleWorkbenchInstance;

/// Sensitive field paths for `google_workbench_instance_iam_binding`.
const Set<String> _googleWorkbenchInstanceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_workbench_instance_iam_binding` (derived from provider schema).
@immutable
final class WorkbenchInstanceIamBindingCondition {
  const WorkbenchInstanceIamBindingCondition({
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

/// Factory wrapper for `google_workbench_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex AI Workbench
/// instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleWorkbenchInstanceIamMember] for additive grants. Deferred with
/// the never_apply Workbench instance (no apply-smoke quickstart).
final class GoogleWorkbenchInstanceIamBinding extends Resource {
  static const String tfType = 'google_workbench_instance_iam_binding';

  GoogleWorkbenchInstanceIamBinding({
    required super.localName,
    required RefTo<GoogleWorkbenchInstance> instance,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    WorkbenchInstanceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instance.encodeAs('name'),
           'role': role,
           'members': members,
           'location': ?(location ?? instance.alsoAs('location')),
           'project': ?(project ?? instance.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkbenchInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkbenchInstanceIamBinding>`.
  RefTo<GoogleWorkbenchInstanceIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
