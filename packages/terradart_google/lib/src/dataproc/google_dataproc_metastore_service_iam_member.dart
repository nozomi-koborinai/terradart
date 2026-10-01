// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_metastore_service.dart'
    show GoogleDataprocMetastoreService;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_metastore_service_iam_member`.
const Set<String> _googleDataprocMetastoreServiceIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_metastore_service_iam_member` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceIamMemberCondition {
  const DataprocMetastoreServiceIamMemberCondition({
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

/// Factory wrapper for `google_dataproc_metastore_service_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a Dataproc Metastore service.
///
/// Set [serviceId] to the metastore service id (path segment), not the full
/// resource name.
final class GoogleDataprocMetastoreServiceIamMember extends Resource {
  static const String tfType = 'google_dataproc_metastore_service_iam_member';

  GoogleDataprocMetastoreServiceIamMember(
    super.localName, {
    required RefTo<GoogleDataprocMetastoreService> service,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    DataprocMetastoreServiceIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': service.encodeAs('service_id'),
           'role': role,
           'member': member,
           'location': ?(location ?? service.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? service.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreServiceIamMember>`.
  RefTo<GoogleDataprocMetastoreServiceIamMember> get ref => RefTo.of(this);

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

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
