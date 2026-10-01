// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_schema.dart' show GooglePubsubSchema;

/// Sensitive field paths for `google_pubsub_schema_iam_member`.
const Set<String> _googlePubsubSchemaIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_pubsub_schema_iam_member` (derived from provider schema).
@immutable
final class PubsubSchemaIamMemberCondition {
  const PubsubSchemaIamMemberCondition({
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

/// Factory wrapper for `google_pubsub_schema_iam_member`.
final class GooglePubsubSchemaIamMember extends Resource {
  static const String tfType = 'google_pubsub_schema_iam_member';

  GooglePubsubSchemaIamMember({
    required super.localName,
    required RefTo<GooglePubsubSchema> schema,
    required TfArg<String> role,
    required TfArg<String> member,
    PubsubSchemaIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'schema': schema.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSchemaIamMember>`.
  RefTo<GooglePubsubSchemaIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `schema` attribute.
  TfRef<String> get schemaRef => TfRef.attribute<String>(this, 'schema');
}
