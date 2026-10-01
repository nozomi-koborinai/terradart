// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_metastore_service.dart'
    show GoogleDataprocMetastoreService;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_metastore_service_iam_binding`.
const Set<String> _googleDataprocMetastoreServiceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_metastore_service_iam_binding` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceIamBindingCondition {
  const DataprocMetastoreServiceIamBindingCondition({
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

/// Factory wrapper for `google_dataproc_metastore_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc Metastore
/// service.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataprocMetastoreServiceIamMember] for additive grants.
final class GoogleDataprocMetastoreServiceIamBinding extends Resource {
  static const String tfType = 'google_dataproc_metastore_service_iam_binding';

  GoogleDataprocMetastoreServiceIamBinding(
    super.localName, {
    required RefTo<GoogleDataprocMetastoreService> service,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    DataprocMetastoreServiceIamBindingCondition? condition,
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
           'members': members,
           'location': ?(location ?? service.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? service.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreServiceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreServiceIamBinding>`.
  RefTo<GoogleDataprocMetastoreServiceIamBinding> get ref => RefTo.of(this);

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

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
