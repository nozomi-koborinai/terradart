// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleBiglakeHiveTableIamMember({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> database,
    required TfArg<String> member,
    required TfArg<String> name,
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
           'catalog': catalog,
           'database': database,
           'member': member,
           'name': name,
           'project': ?project,
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
