// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_cluster_iam_member`.
const Set<String> _googleDataprocClusterIamMemberSensitive = <String>{};

/// Factory wrapper for `google_dataproc_cluster_iam_member`.
///
/// Non-authoritative IAM member on a Dataproc cluster.
///
/// Deferred with the never_apply Dataproc cluster (no apply-smoke
/// quickstart).
final class GoogleDataprocClusterIamMember extends Resource {
  static const String tfType = 'google_dataproc_cluster_iam_member';

  GoogleDataprocClusterIamMember({
    required super.localName,
    required TfArg<String> cluster,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
