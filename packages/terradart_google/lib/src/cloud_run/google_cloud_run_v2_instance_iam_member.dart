// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_instance.dart'
    show GoogleCloudRunV2Instance;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_run_v2_instance_iam_member`.
const Set<String> _googleCloudRunV2InstanceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_instance_iam_member` (derived from provider schema).
@immutable
final class CloudRunV2InstanceIamMemberCondition {
  const CloudRunV2InstanceIamMemberCondition({
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

/// Factory wrapper for `google_cloud_run_v2_instance_iam_member`.
final class GoogleCloudRunV2InstanceIamMember extends Resource {
  static const String tfType = 'google_cloud_run_v2_instance_iam_member';

  GoogleCloudRunV2InstanceIamMember(
    super.localName, {
    TfArg<String>? location,
    required IamPrincipal member,
    required RefTo<GoogleCloudRunV2Instance> instance,
    TfArg<String>? project,
    required TfArg<String> role,
    CloudRunV2InstanceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? instance.alsoAs('location')),
           'member': member,
           'name': instance.encodeAs('name'),
           'project': ?(project ?? instance.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudRunV2InstanceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2InstanceIamMember>`.
  RefTo<GoogleCloudRunV2InstanceIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
