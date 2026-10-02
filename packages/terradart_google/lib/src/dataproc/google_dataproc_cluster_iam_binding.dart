// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_cluster.dart' show GoogleDataprocCluster;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_cluster_iam_binding`.
const Set<String> _googleDataprocClusterIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_cluster_iam_binding` (derived from provider schema).
@immutable
final class DataprocClusterIamBindingCondition {
  const DataprocClusterIamBindingCondition({
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

/// Factory wrapper for `google_dataproc_cluster_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc cluster.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataprocClusterIamMember] for additive grants. Deferred with
/// the never_apply Dataproc cluster (no apply-smoke quickstart).
final class GoogleDataprocClusterIamBinding extends Resource {
  static const String tfType = 'google_dataproc_cluster_iam_binding';

  GoogleDataprocClusterIamBinding(
    super.localName, {
    required RefTo<GoogleDataprocCluster> cluster,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? region,
    TfArg<String>? project,
    DataprocClusterIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'role': role,
           'members': members,
           'region': ?(region ?? cluster.alsoAs('region')),
           'project': ?(project ?? cluster.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocClusterIamBinding>`.
  RefTo<GoogleDataprocClusterIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
