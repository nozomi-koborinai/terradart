// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_database_iam_member`.
const Set<String> _googleDataprocMetastoreDatabaseIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_metastore_database_iam_member` (derived from provider schema).
@immutable
final class DataprocMetastoreDatabaseIamMemberCondition {
  const DataprocMetastoreDatabaseIamMemberCondition({
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

/// Factory wrapper for `google_dataproc_metastore_database_iam_member`.
final class GoogleDataprocMetastoreDatabaseIamMember extends Resource {
  static const String tfType = 'google_dataproc_metastore_database_iam_member';

  GoogleDataprocMetastoreDatabaseIamMember({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> database,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    DataprocMetastoreDatabaseIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'database': database,
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
      _googleDataprocMetastoreDatabaseIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreDatabaseIamMember>`.
  RefTo<GoogleDataprocMetastoreDatabaseIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
