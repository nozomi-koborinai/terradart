// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../firestore/google_firestore_database.dart'
    show GoogleFirestoreDatabase;

/// Sensitive field paths for `google_firestore_change_stream`.
const Set<String> _googleFirestoreChangeStreamSensitive = <String>{};

/// Exactly one of `database_scope`, `collection_group_scope` on `google_firestore_change_stream`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.databaseScope(...)`.
sealed class FirestoreChangeStreamScope {
  const FirestoreChangeStreamScope();

  /// Sets `database_scope`.
  const factory FirestoreChangeStreamScope.databaseScope(
    FirestoreChangeStreamDatabaseScope databaseScope,
  ) = FirestoreChangeStreamDatabaseScopeChoice;

  /// Sets `collection_group_scope`.
  const factory FirestoreChangeStreamScope.collectionGroupScope(
    FirestoreChangeStreamCollectionGroupScope collectionGroupScope,
  ) = FirestoreChangeStreamCollectionGroupScopeChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FirestoreChangeStreamScope.databaseScope] choice: sets `database_scope`.
final class FirestoreChangeStreamDatabaseScopeChoice
    extends FirestoreChangeStreamScope {
  const FirestoreChangeStreamDatabaseScopeChoice(this.databaseScope);

  final FirestoreChangeStreamDatabaseScope databaseScope;

  @override
  String get blockKey => 'database_scope';

  @override
  Map<String, Object?> encode() => {'database_scope': databaseScope.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database_scope': TfArg.literal(databaseScope.encode()),
  };
}

/// The [FirestoreChangeStreamScope.collectionGroupScope] choice: sets `collection_group_scope`.
final class FirestoreChangeStreamCollectionGroupScopeChoice
    extends FirestoreChangeStreamScope {
  const FirestoreChangeStreamCollectionGroupScopeChoice(
    this.collectionGroupScope,
  );

  final FirestoreChangeStreamCollectionGroupScope collectionGroupScope;

  @override
  String get blockKey => 'collection_group_scope';

  @override
  Map<String, Object?> encode() => {
    'collection_group_scope': collectionGroupScope.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'collection_group_scope': TfArg.literal(collectionGroupScope.encode()),
  };
}

/// Typed helper for the `collection_group_scope` block of
/// `google_firestore_change_stream` (derived from provider schema).
@immutable
final class FirestoreChangeStreamCollectionGroupScope {
  const FirestoreChangeStreamCollectionGroupScope({
    required this.collectionGroupId,
  });

  final TfArg<String> collectionGroupId;

  Map<String, Object?> encode() => {
    'collection_group_id': collectionGroupId.toTfJson(),
  };
}

/// Typed helper for the `database_scope` block of
/// `google_firestore_change_stream` (derived from provider schema).
@immutable
final class FirestoreChangeStreamDatabaseScope {
  const FirestoreChangeStreamDatabaseScope();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_firestore_change_stream`.
///
/// A change stream resource for a Cloud Firestore Database. Change streams
/// enable real-time tracking of document changes (creates, updates, deletes)
/// across collections within a Cloud Firestore database.
final class GoogleFirestoreChangeStream extends Resource {
  static const String tfType = 'google_firestore_change_stream';

  GoogleFirestoreChangeStream({
    required super.localName,
    RefTo<GoogleFirestoreDatabase>? database,
    required TfArg<String> name,
    required FirestoreChangeStreamScope scope,
    required TfArg<String> retentionPeriod,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database': ?database?.encodeAs('name'),
           'name': name,
           ...scope.argMap,
           'retention_period': retentionPeriod,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreChangeStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirestoreChangeStream>`.
  RefTo<GoogleFirestoreChangeStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `retention_period` attribute.
  TfRef<String> get retentionPeriod =>
      TfRef.attribute<String>(this, 'retention_period');
}
