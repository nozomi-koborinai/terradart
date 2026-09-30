// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_schema_iam_binding`.
const Set<String> _googlePubsubSchemaIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_pubsub_schema_iam_binding` (derived from provider schema).
@immutable
final class PubsubSchemaIamBindingCondition {
  const PubsubSchemaIamBindingCondition({
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

/// Factory wrapper for `google_pubsub_schema_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Pub/Sub schema.
///
/// Replaces the entire member list for that role. Prefer
/// [GooglePubsubSchemaIamMember] for additive grants.
final class GooglePubsubSchemaIamBinding extends Resource {
  static const String tfType = 'google_pubsub_schema_iam_binding';

  GooglePubsubSchemaIamBinding({
    required super.localName,
    required TfArg<String> schema,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    PubsubSchemaIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'schema': schema,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSchemaIamBinding>`.
  RefTo<GooglePubsubSchemaIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `schema` attribute.
  TfRef<String> get schemaRef => TfRef.attribute<String>(this, 'schema');
}
