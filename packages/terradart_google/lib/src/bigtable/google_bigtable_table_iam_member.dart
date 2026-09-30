// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_table_iam_member`.
const Set<String> _googleBigtableTableIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigtable_table_iam_member` (derived from provider schema).
@immutable
final class BigtableTableIamMemberCondition {
  const BigtableTableIamMemberCondition({
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

/// Factory wrapper for `google_bigtable_table_iam_member`.
final class GoogleBigtableTableIamMember extends Resource {
  static const String tfType = 'google_bigtable_table_iam_member';

  GoogleBigtableTableIamMember({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> table,
    required TfArg<String> role,
    required TfArg<String> member,
    BigtableTableIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'table': table,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableTableIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableTableIamMember>`.
  RefTo<GoogleBigtableTableIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceNameRef =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `table` attribute.
  TfRef<String> get tableRef => TfRef.attribute<String>(this, 'table');
}
