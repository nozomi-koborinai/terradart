// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../clouddeploy/google_clouddeploy_custom_target_type.dart'
    show GoogleClouddeployCustomTargetType;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_clouddeploy_custom_target_type_iam_binding`.
const Set<String> _googleClouddeployCustomTargetTypeIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_clouddeploy_custom_target_type_iam_binding` (derived from provider schema).
@immutable
final class ClouddeployCustomTargetTypeIamBindingCondition {
  const ClouddeployCustomTargetTypeIamBindingCondition({
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

/// Factory wrapper for `google_clouddeploy_custom_target_type_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Deploy custom
/// target type.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleClouddeployCustomTargetTypeIamMember] for additive grants.
final class GoogleClouddeployCustomTargetTypeIamBinding extends Resource {
  static const String tfType =
      'google_clouddeploy_custom_target_type_iam_binding';

  GoogleClouddeployCustomTargetTypeIamBinding(
    super.localName, {
    required RefTo<GoogleClouddeployCustomTargetType> customTargetType,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ClouddeployCustomTargetTypeIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': customTargetType.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? customTargetType.alsoAs('location')),
           'project': ?(project ?? customTargetType.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployCustomTargetTypeIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployCustomTargetTypeIamBinding>`.
  RefTo<GoogleClouddeployCustomTargetTypeIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
