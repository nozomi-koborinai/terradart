// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firestore_document`.
const Set<String> _googleFirestoreDocumentSensitive = <String>{};

/// Factory wrapper for `google_firestore_document`.
///
/// In Cloud Firestore, the unit of storage is the document. A document is a
/// lightweight record that contains fields, which map to values. Each document
/// is identified by a name.
///
/// Manages a single document in a Cloud Firestore collection as an
/// Infrastructure-as-Code resource. Intended for **small fixed
/// master-data sets** (feature flags, pricing tiers, lookup tables,
/// regional config) where reproducibility-via-IaC outweighs the
/// drift risk of app-side writes.
///
/// **For production-scale datasets (1000s of documents, frequent
/// app-side writes) prefer a separate seed script using the Firebase
/// Admin SDK** — IaC ownership of frequently-modified collections
/// causes Terraform state to diverge from Firestore reality.
///
/// The `fields` argument expects a JSON-encoded string in Firestore's
/// type-discriminated wire format. Use [FirestoreFields.encode] to
/// build it from a Dart map:
///
/// ```dart
/// final flag = GoogleFirestoreDocument(
///   localName: 'dark_mode',
///   collection: TfArg.literal('feature_flags'),
///   documentId: TfArg.literal('dark_mode'),
///   fields: FirestoreFields.encode({
///     'enabled': true,
///     'rollout_pct': 100,
///   }),
///   dependsOn: [ResourceDependency(db)],
/// );
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (address segment after
///   `google_firestore_document.`).
/// - `collection`: collection path relative to the database root, e.g.
///   `'feature_flags'` or `'users/u1/messages'` (deeper paths must
///   contain an odd number of segments — collection paths alternate
///   collection / document IDs).
/// - `documentId`: the document's client-assigned ID (string).
/// - `fields`: JSON-encoded Firestore wire format. Use
///   [FirestoreFields.encode].
///
/// Optional:
/// - `database`: Firestore database ID. Defaults to `'(default)'`.
/// - `project`: GCP project. Defaults to the provider's project.
final class GoogleFirestoreDocument extends Resource {
  static const String tfType = 'google_firestore_document';

  GoogleFirestoreDocument({
    required super.localName,
    required TfArg<String> collection,
    required TfArg<String> documentId,
    required TfArg<String> fields,
    TfArg<String>? database,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection': collection,
           'document_id': documentId,
           'fields': fields,
           if (database != null) 'database': database,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreDocumentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
