// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_job.dart' show GoogleCloudRunV2Job;

/// Sensitive field paths for `google_cloud_run_v2_job_iam_member`.
const Set<String> _googleCloudRunV2JobIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_job_iam_member` (derived from provider schema).
@immutable
final class CloudRunV2JobIamMemberCondition {
  const CloudRunV2JobIamMemberCondition({
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

/// Factory wrapper for `google_cloud_run_v2_job_iam_member`.
final class GoogleCloudRunV2JobIamMember extends Resource {
  static const String tfType = 'google_cloud_run_v2_job_iam_member';

  GoogleCloudRunV2JobIamMember({
    required super.localName,
    required RefTo<GoogleCloudRunV2Job> job,
    required TfArg<String> role,
    required TfArg<String> member,
    CloudRunV2JobIamMemberCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': job.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? job.alsoAs('location')),
           'project': ?(project ?? job.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2JobIamMember>`.
  RefTo<GoogleCloudRunV2JobIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
