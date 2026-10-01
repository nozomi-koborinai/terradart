// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_metastore_table_iam_binding`.
const Set<String> _googleDataprocMetastoreTableIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_metastore_table_iam_binding` (derived from provider schema).
@immutable
final class DataprocMetastoreTableIamBindingCondition {
  const DataprocMetastoreTableIamBindingCondition({
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

/// Factory wrapper for `google_dataproc_metastore_table_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc Metastore table.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocMetastoreTableIamMember] for additive grants.
final class GoogleDataprocMetastoreTableIamBinding extends Resource {
  static const String tfType = 'google_dataproc_metastore_table_iam_binding';

  GoogleDataprocMetastoreTableIamBinding({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> databaseId,
    required TfArg<String> table,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    DataprocMetastoreTableIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'database_id': databaseId,
           'table': table,
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
      _googleDataprocMetastoreTableIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreTableIamBinding>`.
  RefTo<GoogleDataprocMetastoreTableIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseIdRef =>
      TfRef.attribute<String>(this, 'database_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceIdRef => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `table` attribute.
  TfRef<String> get tableRef => TfRef.attribute<String>(this, 'table');
}
