// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_d1_database`.
const Set<String> _cloudflareD1DatabaseSensitive = <String>{};

/// Typed helper for the `read_replication` block of
/// `cloudflare_d1_database` (derived from provider schema).
@immutable
final class D1DatabaseReadReplication {
  const D1DatabaseReadReplication({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Factory wrapper for `cloudflare_d1_database`.
///
/// Accepted Permissions
///
/// - `D1 Read` - `D1 Write`
final class CloudflareD1Database extends Resource {
  static const String tfType = 'cloudflare_d1_database';

  CloudflareD1Database({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? jurisdiction,
    required TfArg<String> name,
    TfArg<String>? primaryLocationHint,
    D1DatabaseReadReplication? readReplication,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
           'name': name,
           if (primaryLocationHint != null)
             'primary_location_hint': primaryLocationHint,
           if (readReplication != null)
             'read_replication': TfArg.literal(readReplication.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareD1DatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `file_size` attribute.
  TfRef<num> get fileSize => TfRef.attribute<num>(this, 'file_size');

  /// Reference to `num_tables` attribute.
  TfRef<num> get numTables => TfRef.attribute<num>(this, 'num_tables');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
