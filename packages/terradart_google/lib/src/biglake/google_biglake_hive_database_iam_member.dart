// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_biglake_hive_database_iam_member`.
final class GoogleBiglakeHiveDatabaseIamMember extends Resource {
  static const String tfType = 'google_biglake_hive_database_iam_member';

  GoogleBiglakeHiveDatabaseIamMember({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> member,
    required TfArg<String> name,
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
           'catalog': catalog,
           'member': member,
           'name': name,
           'project': ?project,
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
