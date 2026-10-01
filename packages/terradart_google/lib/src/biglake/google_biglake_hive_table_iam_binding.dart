// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_table.dart' show GoogleBiglakeHiveTable;

/// Sensitive field paths for `google_biglake_hive_table_iam_binding`.
const Set<String> _googleBiglakeHiveTableIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_hive_table_iam_binding` (derived from provider schema).
@immutable
final class BiglakeHiveTableIamBindingCondition {
  const BiglakeHiveTableIamBindingCondition({
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

/// Factory wrapper for `google_biglake_hive_table_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Biglake Hive Table.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBiglakeHiveTableIamMember] for additive grants.
final class GoogleBiglakeHiveTableIamBinding extends Resource {
  static const String tfType = 'google_biglake_hive_table_iam_binding';

  GoogleBiglakeHiveTableIamBinding({
    required super.localName,
    TfArg<String>? catalog,
    TfArg<String>? database,
    required TfArg<List<String>> members,
    required RefTo<GoogleBiglakeHiveTable> table,
    TfArg<String>? project,
    required TfArg<String> role,
    BiglakeHiveTableIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? table.alsoAs('catalog')),
           'database': ?(database ?? table.alsoAs('database')),
           'members': members,
           'name': table.encodeAs('name'),
           'project': ?(project ?? table.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveTableIamBinding>`.
  RefTo<GoogleBiglakeHiveTableIamBinding> get ref => RefTo.of(this);
}
