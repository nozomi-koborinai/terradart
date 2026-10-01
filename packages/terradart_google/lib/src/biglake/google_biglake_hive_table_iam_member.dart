// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_table.dart' show GoogleBiglakeHiveTable;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_hive_table_iam_member`.
const Set<String> _googleBiglakeHiveTableIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_hive_table_iam_member` (derived from provider schema).
@immutable
final class BiglakeHiveTableIamMemberCondition {
  const BiglakeHiveTableIamMemberCondition({
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

/// Factory wrapper for `google_biglake_hive_table_iam_member`.
final class GoogleBiglakeHiveTableIamMember extends Resource {
  static const String tfType = 'google_biglake_hive_table_iam_member';

  GoogleBiglakeHiveTableIamMember(
    super.localName, {
    TfArg<String>? catalog,
    TfArg<String>? database,
    required IamPrincipal member,
    required RefTo<GoogleBiglakeHiveTable> table,
    TfArg<String>? project,
    required TfArg<String> role,
    BiglakeHiveTableIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? table.alsoAs('catalog')),
           'database': ?(database ?? table.alsoAs('database')),
           'member': member,
           'name': table.encodeAs('name'),
           'project': ?(project ?? table.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveTableIamMember>`.
  RefTo<GoogleBiglakeHiveTableIamMember> get ref => RefTo.of(this);
}
