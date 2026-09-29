// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_d1_database`.
const Set<String> _cloudflareD1DatabaseSensitive = <String>{};

/// D1 Database enum for `fields`.
enum D1DatabaseFields implements TerraformEnum {
  uuid('uuid'),
  name('name'),
  createdAt('created_at'),
  version('version'),
  jurisdiction('jurisdiction'),
  numTables('num_tables'),
  fileSize('file_size'),
  runningInRegion('running_in_region'),
  readReplication('read_replication');

  const D1DatabaseFields(this.terraformValue);
  @override
  final String terraformValue;
}

/// D1 Database enum for `jurisdiction`.
enum D1DatabaseJurisdiction implements TerraformEnum {
  eu('eu'),
  fedramp('fedramp'),
  us('us');

  const D1DatabaseJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// D1 Database Primary Location enum for `primary_location_hint`.
enum D1DatabasePrimaryLocationHint implements TerraformEnum {
  wnam('wnam'),
  enam('enam'),
  weur('weur'),
  eeur('eeur'),
  apac('apac'),
  oc('oc');

  const D1DatabasePrimaryLocationHint(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `read_replication` block of
/// `cloudflare_d1_database` (derived from provider schema).
@immutable
final class D1DatabaseReadReplication {
  const D1DatabaseReadReplication({required this.mode});

  final TfArg<D1DatabaseReadReplicationMode> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum D1DatabaseReadReplicationMode implements TerraformEnum {
  auto('auto'),
  disabled('disabled');

  const D1DatabaseReadReplicationMode(this.terraformValue);
  @override
  final String terraformValue;
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
    required RefTo<CloudflareAccount> accountId,
    List<TfArg<D1DatabaseFields>>? fields,
    TfArg<D1DatabaseJurisdiction>? jurisdiction,
    required TfArg<String> name,
    TfArg<D1DatabasePrimaryLocationHint>? primaryLocationHint,
    D1DatabaseReadReplication? readReplication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           if (fields != null)
             'fields': TfArg.literal([for (final e in fields) e.toTfJson()]),
           'jurisdiction': ?jurisdiction,
           'name': name,
           'primary_location_hint': ?primaryLocationHint,
           if (readReplication != null)
             'read_replication': TfArg.literal(readReplication.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareD1DatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareD1Database>`.
  RefTo<CloudflareD1Database> get ref => RefTo.of(this);

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
