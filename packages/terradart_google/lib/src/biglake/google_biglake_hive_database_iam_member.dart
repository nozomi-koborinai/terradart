// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_database.dart'
    show GoogleBiglakeHiveDatabase;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_hive_database_iam_member`.
const Set<String> _googleBiglakeHiveDatabaseIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_hive_database_iam_member` (derived from provider schema).
@immutable
final class BiglakeHiveDatabaseIamMemberCondition {
  const BiglakeHiveDatabaseIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_biglake_hive_database_iam_member`.
final class GoogleBiglakeHiveDatabaseIamMember extends Resource {
  static const String tfType = 'google_biglake_hive_database_iam_member';

  GoogleBiglakeHiveDatabaseIamMember(
    super.localName, {
    TfArg<String>? catalog,
    required IamPrincipal member,
    required RefTo<GoogleBiglakeHiveDatabase> database,
    TfArg<String>? project,
    required TfArg<String> role,
    BiglakeHiveDatabaseIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? database.alsoAs('catalog')),
           'member': member,
           'name': database.encodeAs('name'),
           'project': ?(project ?? database.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveDatabaseIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveDatabaseIamMember>`.
  RefTo<GoogleBiglakeHiveDatabaseIamMember> get ref => RefTo.of(this);
}
