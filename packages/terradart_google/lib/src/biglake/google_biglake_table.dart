// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_database.dart' show GoogleBiglakeDatabase;

/// Sensitive field paths for `google_biglake_table`.
const Set<String> _googleBiglakeTableSensitive = <String>{};

/// Typed helper for the `hive_options` block of
/// `google_biglake_table` (derived from provider schema).
@immutable
final class BiglakeTableHiveOptions {
  const BiglakeTableHiveOptions({
    this.parameters,
    this.tableType,
    this.storageDescriptor,
  });

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? tableType;

  final BiglakeTableStorageDescriptor? storageDescriptor;

  @internal
  Map<String, Object?> encode() => {
    'parameters': ?parameters?.toTfJson(),
    'table_type': ?tableType?.toTfJson(),
    'storage_descriptor': ?storageDescriptor?.encode(),
  };
}

/// Typed helper for the `hive_options.storage_descriptor` block of
/// `google_biglake_table` (derived from provider schema).
@immutable
final class BiglakeTableStorageDescriptor {
  const BiglakeTableStorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  final TfArg<String>? inputFormat;

  final TfArg<String>? locationUri;

  final TfArg<String>? outputFormat;

  final BiglakeTableSerdeInfo? serdeInfo;

  @internal
  Map<String, Object?> encode() => {
    'input_format': ?inputFormat?.toTfJson(),
    'location_uri': ?locationUri?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'serde_info': ?serdeInfo?.encode(),
  };
}

/// Typed helper for the `hive_options.storage_descriptor.serde_info` block of
/// `google_biglake_table` (derived from provider schema).
@immutable
final class BiglakeTableSerdeInfo {
  const BiglakeTableSerdeInfo({this.serializationLib});

  final TfArg<String>? serializationLib;

  @internal
  Map<String, Object?> encode() => {
    'serialization_lib': ?serializationLib?.toTfJson(),
  };
}

/// Factory wrapper for `google_biglake_table`.
///
/// Represents a table.
final class GoogleBiglakeTable extends Resource {
  static const String tfType = 'google_biglake_table';

  GoogleBiglakeTable(
    super.localName, {
    required TfArg<String> name,
    RefTo<GoogleBiglakeDatabase>? database,
    TfArg<String>? type,
    BiglakeTableHiveOptions? hiveOptions,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'database': ?database?.encodeAs('id'),
           'type': ?type,
           if (hiveOptions != null)
             'hive_options': TfArg.literal(hiveOptions.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeTable>`.
  RefTo<GoogleBiglakeTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
