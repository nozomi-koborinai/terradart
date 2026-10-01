// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_table.dart' show GoogleBigtableTable;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigtable_table_iam_binding`.
const Set<String> _googleBigtableTableIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigtable_table_iam_binding` (derived from provider schema).
@immutable
final class BigtableTableIamBindingCondition {
  const BigtableTableIamBindingCondition({
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

/// Factory wrapper for `google_bigtable_table_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Bigtable table.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigtableTableIamMember] for additive grants.
final class GoogleBigtableTableIamBinding extends Resource {
  static const String tfType = 'google_bigtable_table_iam_binding';

  GoogleBigtableTableIamBinding({
    required super.localName,
    TfArg<String>? instanceName,
    required RefTo<GoogleBigtableTable> table,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BigtableTableIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': ?(instanceName ?? table.alsoAs('instance_name')),
           'table': table.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? table.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableTableIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableTableIamBinding>`.
  RefTo<GoogleBigtableTableIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceNameRef =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `table` attribute.
  TfRef<String> get tableRef => TfRef.attribute<String>(this, 'table');
}
