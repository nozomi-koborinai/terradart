// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_d1_database`.
const Set<String> _cloudflareD1DatabaseSensitive = <String>{};

/// D1 Database enum for `fields`.
extension type const D1DatabaseFields._(TfArg<String> _)
    implements TfArg<String> {
  D1DatabaseFields.variable(String name) : this._(TfArg.variable(name));
  D1DatabaseFields.expression(String template)
    : this._(TfArg.expression(template));
  const D1DatabaseFields.arg(TfArg<String> arg) : this._(arg);

  static const uuid = D1DatabaseFields._(TfArgLiteral('uuid'));
  static const name = D1DatabaseFields._(TfArgLiteral('name'));
  static const createdAt = D1DatabaseFields._(TfArgLiteral('created_at'));
  static const version = D1DatabaseFields._(TfArgLiteral('version'));
  static const jurisdiction = D1DatabaseFields._(TfArgLiteral('jurisdiction'));
  static const numTables = D1DatabaseFields._(TfArgLiteral('num_tables'));
  static const fileSize = D1DatabaseFields._(TfArgLiteral('file_size'));
  static const runningInRegion = D1DatabaseFields._(
    TfArgLiteral('running_in_region'),
  );
  static const readReplication = D1DatabaseFields._(
    TfArgLiteral('read_replication'),
  );

  static const List<D1DatabaseFields> values = [
    uuid,
    name,
    createdAt,
    version,
    jurisdiction,
    numTables,
    fileSize,
    runningInRegion,
    readReplication,
  ];
}

/// D1 Database enum for `jurisdiction`.
extension type const D1DatabaseJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  D1DatabaseJurisdiction.variable(String name) : this._(TfArg.variable(name));
  D1DatabaseJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const D1DatabaseJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const eu = D1DatabaseJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = D1DatabaseJurisdiction._(TfArgLiteral('fedramp'));
  static const us = D1DatabaseJurisdiction._(TfArgLiteral('us'));

  static const List<D1DatabaseJurisdiction> values = [eu, fedramp, us];
}

/// D1 Database Primary Location enum for `primary_location_hint`.
extension type const D1DatabasePrimaryLocationHint._(TfArg<String> _)
    implements TfArg<String> {
  D1DatabasePrimaryLocationHint.variable(String name)
    : this._(TfArg.variable(name));
  D1DatabasePrimaryLocationHint.expression(String template)
    : this._(TfArg.expression(template));
  const D1DatabasePrimaryLocationHint.arg(TfArg<String> arg) : this._(arg);

  static const wnam = D1DatabasePrimaryLocationHint._(TfArgLiteral('wnam'));
  static const enam = D1DatabasePrimaryLocationHint._(TfArgLiteral('enam'));
  static const weur = D1DatabasePrimaryLocationHint._(TfArgLiteral('weur'));
  static const eeur = D1DatabasePrimaryLocationHint._(TfArgLiteral('eeur'));
  static const apac = D1DatabasePrimaryLocationHint._(TfArgLiteral('apac'));
  static const oc = D1DatabasePrimaryLocationHint._(TfArgLiteral('oc'));

  static const List<D1DatabasePrimaryLocationHint> values = [
    wnam,
    enam,
    weur,
    eeur,
    apac,
    oc,
  ];
}

/// Typed helper for the `read_replication` block of
/// `cloudflare_d1_database` (derived from provider schema).
@immutable
final class D1DatabaseReadReplication {
  const D1DatabaseReadReplication({required this.mode});

  final D1DatabaseMode mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const D1DatabaseMode._(TfArg<String> _)
    implements TfArg<String> {
  D1DatabaseMode.variable(String name) : this._(TfArg.variable(name));
  D1DatabaseMode.expression(String template)
    : this._(TfArg.expression(template));
  const D1DatabaseMode.arg(TfArg<String> arg) : this._(arg);

  static const auto = D1DatabaseMode._(TfArgLiteral('auto'));
  static const disabled = D1DatabaseMode._(TfArgLiteral('disabled'));

  static const List<D1DatabaseMode> values = [auto, disabled];
}

/// Factory wrapper for `cloudflare_d1_database`.
///
/// Accepted Permissions
///
/// - `D1 Read` - `D1 Write`
final class CloudflareD1Database extends Resource {
  static const String tfType = 'cloudflare_d1_database';

  CloudflareD1Database(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    List<D1DatabaseFields>? fields,
    D1DatabaseJurisdiction? jurisdiction,
    required TfArg<String> name,
    D1DatabasePrimaryLocationHint? primaryLocationHint,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `fields` attribute.
  TfRef<List<String>> get fields =>
      TfRef.attribute<List<String>>(this, 'fields');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `primary_location_hint` attribute.
  TfRef<String> get primaryLocationHint =>
      TfRef.attribute<String>(this, 'primary_location_hint');
}
