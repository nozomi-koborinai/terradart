// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_cluster.dart' show GoogleDataprocCluster;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_cluster_iam_member`.
const Set<String> _googleDataprocClusterIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_cluster_iam_member` (derived from provider schema).
@immutable
final class DataprocClusterIamMemberCondition {
  const DataprocClusterIamMemberCondition({
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

/// Factory wrapper for `google_dataproc_cluster_iam_member`.
///
/// Non-authoritative IAM member on a Dataproc cluster.
///
/// Deferred with the never_apply Dataproc cluster (no apply-smoke
/// quickstart).
final class GoogleDataprocClusterIamMember extends Resource {
  static const String tfType = 'google_dataproc_cluster_iam_member';

  GoogleDataprocClusterIamMember(
    super.localName, {
    required RefTo<GoogleDataprocCluster> cluster,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? region,
    TfArg<String>? project,
    DataprocClusterIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'role': role,
           'member': member,
           'region': ?(region ?? cluster.alsoAs('region')),
           'project': ?(project ?? cluster.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocClusterIamMember>`.
  RefTo<GoogleDataprocClusterIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
