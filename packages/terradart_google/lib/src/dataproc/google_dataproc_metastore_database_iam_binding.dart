// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_database_iam_binding`.
const Set<String> _googleDataprocMetastoreDatabaseIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_metastore_database_iam_binding` (derived from provider schema).
@immutable
final class DataprocMetastoreDatabaseIamBindingCondition {
  const DataprocMetastoreDatabaseIamBindingCondition({
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

/// Factory wrapper for `google_dataproc_metastore_database_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc Metastore database.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocMetastoreDatabaseIamMember] for additive grants.
final class GoogleDataprocMetastoreDatabaseIamBinding extends Resource {
  static const String tfType = 'google_dataproc_metastore_database_iam_binding';

  GoogleDataprocMetastoreDatabaseIamBinding({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> database,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    DataprocMetastoreDatabaseIamBindingCondition? condition,
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
           'members': members,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreDatabaseIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreDatabaseIamBinding>`.
  RefTo<GoogleDataprocMetastoreDatabaseIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
