// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_federation_iam_member`.
const Set<String> _googleDataprocMetastoreFederationIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_federation_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a Dataproc Metastore federation.
///
/// Set [federationId] to the federation id (path segment).
final class GoogleDataprocMetastoreFederationIamMember extends Resource {
  static const String tfType =
      'google_dataproc_metastore_federation_iam_member';

  GoogleDataprocMetastoreFederationIamMember({
    required super.localName,
    required TfArg<String> federationId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'federation_id': federationId,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreFederationIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
