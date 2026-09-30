// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleDataprocMetastoreServiceIamMember({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'service_id': serviceId,
           'role': role,
           'member': member,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
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
}
