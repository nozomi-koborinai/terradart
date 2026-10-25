// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_instance.dart'
    show GoogleCloudRunV2Instance;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_run_v2_instance_iam_binding`.
const Set<String> _googleCloudRunV2InstanceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_instance_iam_binding` (derived from provider schema).
@immutable
final class CloudRunV2InstanceIamBindingCondition {
  const CloudRunV2InstanceIamBindingCondition({
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

/// Factory wrapper for `google_cloud_run_v2_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role`.
///
/// Replaces the entire member list for that role, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_cloud_run_v2_instance_iam_member` for single grants.
final class GoogleCloudRunV2InstanceIamBinding extends Resource {
  static const String tfType = 'google_cloud_run_v2_instance_iam_binding';

  GoogleCloudRunV2InstanceIamBinding(
    super.localName, {
    TfArg<String>? location,
    required TfArg<List<IamPrincipal>> members,
    required RefTo<GoogleCloudRunV2Instance> instance,
    TfArg<String>? project,
    required TfArg<String> role,
    CloudRunV2InstanceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? instance.alsoAs('location')),
           'members': members,
           'name': instance.encodeAs('name'),
           'project': ?(project ?? instance.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudRunV2InstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2InstanceIamBinding>`.
  RefTo<GoogleCloudRunV2InstanceIamBinding> get ref => RefTo.of(this);

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
