// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_catalog.dart' show GoogleBiglakeCatalog;

/// Sensitive field paths for `google_biglake_database`.
const Set<String> _googleBiglakeDatabaseSensitive = <String>{};

/// Typed helper for the `hive_options` block of
/// `google_biglake_database` (derived from provider schema).
@immutable
final class BiglakeDatabaseHiveOptions {
  const BiglakeDatabaseHiveOptions({this.locationUri, this.parameters});

  final TfArg<String>? locationUri;

  final TfArg<Map<String, String>>? parameters;

  Map<String, Object?> encode() => {
    'location_uri': ?locationUri?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Factory wrapper for `google_biglake_database`.
///
/// Databases are containers of tables.
final class GoogleBiglakeDatabase extends Resource {
  static const String tfType = 'google_biglake_database';

  GoogleBiglakeDatabase(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleBiglakeCatalog> catalog,
    required TfArg<String> type,
    required BiglakeDatabaseHiveOptions hiveOptions,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'catalog': catalog.encodeAs('id'),
           'type': type,
           'hive_options': TfArg.literal(hiveOptions.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeDatabase>`.
  RefTo<GoogleBiglakeDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalog => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
