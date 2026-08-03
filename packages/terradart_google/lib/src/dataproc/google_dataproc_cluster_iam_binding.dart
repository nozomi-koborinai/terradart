// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_cluster_iam_binding`.
const Set<String> _googleDataprocClusterIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataproc_cluster_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc cluster.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataprocClusterIamMember] for additive grants. Deferred with
/// the never_apply Dataproc cluster (no apply-smoke quickstart).
final class GoogleDataprocClusterIamBinding extends Resource {
  static const String tfType = 'google_dataproc_cluster_iam_binding';

  GoogleDataprocClusterIamBinding({
    required super.localName,
    required TfArg<String> cluster,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'role': role,
           'members': members,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
