// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_worker_pool.dart'
    show GoogleCloudRunV2WorkerPool;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_run_v2_worker_pool_iam_member`.
const Set<String> _googleCloudRunV2WorkerPoolIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_worker_pool_iam_member` (derived from provider schema).
@immutable
final class CloudRunV2WorkerPoolIamMemberCondition {
  const CloudRunV2WorkerPoolIamMemberCondition({
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

/// Factory wrapper for `google_cloud_run_v2_worker_pool_iam_member`.
final class GoogleCloudRunV2WorkerPoolIamMember extends Resource {
  static const String tfType = 'google_cloud_run_v2_worker_pool_iam_member';

  GoogleCloudRunV2WorkerPoolIamMember(
    super.localName, {
    required RefTo<GoogleCloudRunV2WorkerPool> workerPool,
    required TfArg<String> role,
    required IamPrincipal member,
    CloudRunV2WorkerPoolIamMemberCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': workerPool.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? workerPool.alsoAs('location')),
           'project': ?(project ?? workerPool.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudRunV2WorkerPoolIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2WorkerPoolIamMember>`.
  RefTo<GoogleCloudRunV2WorkerPoolIamMember> get ref => RefTo.of(this);

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
