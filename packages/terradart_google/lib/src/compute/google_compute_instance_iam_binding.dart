// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_instance_iam_binding`.
const Set<String> _googleComputeInstanceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_instance_iam_binding` (derived from provider schema).
@immutable
final class ComputeInstanceIamBindingCondition {
  const ComputeInstanceIamBindingCondition({
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

/// Factory wrapper for `google_compute_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Engine
/// instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeInstanceIamMember] for additive grants.
final class GoogleComputeInstanceIamBinding extends Resource {
  static const String tfType = 'google_compute_instance_iam_binding';

  GoogleComputeInstanceIamBinding({
    required super.localName,
    required RefTo<GoogleComputeInstance> instance,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ComputeInstanceIamBindingCondition? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instance.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'zone': ?(zone ?? instance.alsoAs('zone')),
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceIamBinding>`.
  RefTo<GoogleComputeInstanceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
