// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_database.dart'
    show GoogleBiglakeHiveDatabase;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_hive_database_iam_binding`.
const Set<String> _googleBiglakeHiveDatabaseIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_hive_database_iam_binding` (derived from provider schema).
@immutable
final class BiglakeHiveDatabaseIamBindingCondition {
  const BiglakeHiveDatabaseIamBindingCondition({
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

/// Factory wrapper for `google_biglake_hive_database_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Biglake Hive Database.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBiglakeHiveDatabaseIamMember] for additive grants.
final class GoogleBiglakeHiveDatabaseIamBinding extends Resource {
  static const String tfType = 'google_biglake_hive_database_iam_binding';

  GoogleBiglakeHiveDatabaseIamBinding(
    super.localName, {
    TfArg<String>? catalog,
    required TfArg<List<IamPrincipal>> members,
    required RefTo<GoogleBiglakeHiveDatabase> database,
    TfArg<String>? project,
    required TfArg<String> role,
    BiglakeHiveDatabaseIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? database.alsoAs('catalog')),
           'members': members,
           'name': database.encodeAs('name'),
           'project': ?(project ?? database.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveDatabaseIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveDatabaseIamBinding>`.
  RefTo<GoogleBiglakeHiveDatabaseIamBinding> get ref => RefTo.of(this);
}
