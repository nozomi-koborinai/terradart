// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_schema_iam_member`.
const Set<String> _googlePubsubSchemaIamMemberSensitive = <String>{};

/// Factory wrapper for `google_pubsub_schema_iam_member`.
final class GooglePubsubSchemaIamMember extends Resource {
  static const String tfType = 'google_pubsub_schema_iam_member';

  GooglePubsubSchemaIamMember({
    required super.localName,
    required TfArg<String> schema,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
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
           'member': member,
           'condition': ?condition,
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
}
