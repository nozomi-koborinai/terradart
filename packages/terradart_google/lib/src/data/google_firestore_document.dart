// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../firestore/google_firestore_document.dart';

/// Sensitive field paths for `google_firestore_document`.
const Set<String> _googleFirestoreDocumentSensitive = <String>{};

/// Factory wrapper for `google_firestore_document`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleFirestoreDocument extends Data {
  static const String tfType = 'google_firestore_document';

  DataGoogleFirestoreDocument({
    required super.localName,
    required TfArg<String> collection,
    required TfArg<String> database,
    required TfArg<String> documentId,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection': collection,
           'database': database,
           'document_id': documentId,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreDocumentSensitive;

  /// A reference to the `google_firestore_document` this data source reads, for
  /// arguments typed `RefTo<GoogleFirestoreDocument>`.
  RefTo<GoogleFirestoreDocument> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `fields` attribute.
  TfRef<String> get fields => TfRef.attribute<String>(this, 'fields');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `collection` attribute.
  TfRef<String> get collectionRef =>
      TfRef.attribute<String>(this, 'collection');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `document_id` attribute.
  TfRef<String> get documentIdRef =>
      TfRef.attribute<String>(this, 'document_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
