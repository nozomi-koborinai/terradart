// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_firestore_user_creds.schema.dart'
    show $GoogleFirestoreUserCreds, googleFirestoreUserCredsSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GoogleFirestoreUserCredsSchemaInstance
    implements $GoogleFirestoreUserCreds {
  const _GoogleFirestoreUserCredsSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_firestore_user_creds`.
///
/// Provisions a database-level credential (username + server-generated
/// password) for a Cloud Firestore database. The credential is scoped
/// to one [database] and identified by [name] (4-63 chars,
/// `[a-z][0-9]-` shape, must not be UUID-like).
///
/// The `secure_password` attribute is **sensitive and computed** -- the
/// provider generates it server-side and Terraform records it in state
/// only. terradart's masking layer flags it as sensitive via the
/// generated `$sensitiveFields` set.
///
/// Example:
/// ```dart
/// final readerCreds = GoogleFirestoreUserCreds(
///   localName: 'reader_creds',
///   database: TfArg.ref(db.nameRef),
///   name: TfArg.literal('analytics-reader'),
/// );
/// ```
final class GoogleFirestoreUserCreds
    extends Resource<$GoogleFirestoreUserCreds> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firestore_user_creds';

  GoogleFirestoreUserCreds({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> database,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleFirestoreUserCredsSchemaInstance(),
         argMap: {
           'name': name,
           'database': database,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleFirestoreUserCredsSensitive;

  /// Reference to `id` attribute. Same as `name` for this resource --
  /// user creds have no separate id distinct from their resource path.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (the full resource path
  /// `projects/{p}/databases/{db}/userCreds/{name}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `state` attribute (lifecycle state of the creds:
  /// `ENABLED`, `DISABLED`, etc. -- the provider does not enumerate
  /// the full set).
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to the server-generated `secure_password` attribute.
  /// **Marked sensitive in the schema** -- terradart's `$sensitiveFields`
  /// set already includes this attribute; masking is automatic.
  TfRef<String> get securePassword =>
      TfRef.attribute<String>(this, 'secure_password');

  /// Reference to `create_time` attribute (RFC3339).
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute (RFC3339).
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
