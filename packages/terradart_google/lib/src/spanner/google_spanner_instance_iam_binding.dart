// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../spanner/google_spanner_instance.dart' show GoogleSpannerInstance;

/// Sensitive field paths for `google_spanner_instance_iam_binding`.
const Set<String> _googleSpannerInstanceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_spanner_instance_iam_binding` (derived from provider schema).
@immutable
final class SpannerInstanceIamBindingCondition {
  const SpannerInstanceIamBindingCondition({
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

/// Factory wrapper for `google_spanner_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Spanner instance.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleSpannerInstanceIamMember] for additive grants.
final class GoogleSpannerInstanceIamBinding extends Resource {
  static const String tfType = 'google_spanner_instance_iam_binding';

  GoogleSpannerInstanceIamBinding(
    super.localName, {
    required RefTo<GoogleSpannerInstance> instance,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    SpannerInstanceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('name'),
           'role': role,
           'members': members,
           'project': ?(project ?? instance.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerInstanceIamBinding>`.
  RefTo<GoogleSpannerInstanceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
