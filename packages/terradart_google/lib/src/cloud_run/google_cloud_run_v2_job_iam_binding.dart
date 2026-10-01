// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_job.dart' show GoogleCloudRunV2Job;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_run_v2_job_iam_binding`.
const Set<String> _googleCloudRunV2JobIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_job_iam_binding` (derived from provider schema).
@immutable
final class CloudRunV2JobIamBindingCondition {
  const CloudRunV2JobIamBindingCondition({
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

/// Factory wrapper for `google_cloud_run_v2_job_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Run v2 job.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleCloudRunV2JobIamMember] for additive grants.
final class GoogleCloudRunV2JobIamBinding extends Resource {
  static const String tfType = 'google_cloud_run_v2_job_iam_binding';

  GoogleCloudRunV2JobIamBinding(
    super.localName, {
    required RefTo<GoogleCloudRunV2Job> job,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    CloudRunV2JobIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? job.alsoAs('location')),
           'project': ?(project ?? job.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2JobIamBinding>`.
  RefTo<GoogleCloudRunV2JobIamBinding> get ref => RefTo.of(this);

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
