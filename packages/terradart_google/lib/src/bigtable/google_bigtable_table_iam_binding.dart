// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> instanceName,
    required TfArg<String> table,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BigtableTableIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
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
}
