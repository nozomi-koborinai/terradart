// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firestore_user_creds`.
const Set<String> _googleFirestoreUserCredsSensitive = <String>{
  'secure_password',
};

/// Factory wrapper for `google_firestore_user_creds`.
///
/// User credentials for a Cloud Firestore with MongoDB compatibility database.
/// The resource is owned by the database and is deleted along with the
/// database.
///
/// Provisions a database-level credential (username + server-generated
/// password) for a Cloud Firestore database. The credential is scoped
/// to one [database] and identified by [name] (4-63 chars,
/// `[a-z][0-9]-` shape, must not be UUID-like).
///
/// The `secure_password` attribute is **sensitive and computed** -- the
/// provider generates it server-side and Terraform records it in state
/// only. terradart's masking layer flags it as sensitive via the
/// generated `sensitiveFields` set.
///
/// Example:
/// ```dart
/// final readerCreds = GoogleFirestoreUserCreds(
///   localName: 'reader_creds',
///   database: TfArg.ref(db.nameRef),
///   name: TfArg.literal('analytics-reader'),
/// );
/// ```
final class GoogleFirestoreUserCreds extends Resource {
  static const String tfType = 'google_firestore_user_creds';

  GoogleFirestoreUserCreds({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> database,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'database': database,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreUserCredsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `resource_identity` attribute.
  TfRef<List<Map<String, Object?>>> get resourceIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_identity');

  /// Reference to `secure_password` attribute.
  TfRef<String> get securePassword =>
      TfRef.attribute<String>(this, 'secure_password');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
