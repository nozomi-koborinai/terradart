// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_stream_analytics_output_blob`.
const Set<String> _azurermStreamAnalyticsOutputBlobSensitive = <String>{
  'storage_account_key',
};

/// Stream Analytics Output Blob Authentication enum for `authentication_mode`.
extension type const StreamAnalyticsOutputBlobAuthenticationMode._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsOutputBlobAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputBlobAuthenticationMode.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputBlobAuthenticationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const connectionstring = StreamAnalyticsOutputBlobAuthenticationMode._(
    TfArgLiteral('ConnectionString'),
  );
  static const msi = StreamAnalyticsOutputBlobAuthenticationMode._(
    TfArgLiteral('Msi'),
  );

  static const List<StreamAnalyticsOutputBlobAuthenticationMode> values = [
    connectionstring,
    msi,
  ];
}

/// Stream Analytics Output Blob Write enum for `blob_write_mode`.
extension type const StreamAnalyticsOutputBlobWriteMode._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsOutputBlobWriteMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputBlobWriteMode.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputBlobWriteMode.arg(TfArg<String> arg) : this._(arg);

  static const append = StreamAnalyticsOutputBlobWriteMode._(
    TfArgLiteral('Append'),
  );
  static const once = StreamAnalyticsOutputBlobWriteMode._(
    TfArgLiteral('Once'),
  );

  static const List<StreamAnalyticsOutputBlobWriteMode> values = [append, once];
}

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_output_blob` (derived from provider schema).
@immutable
final class StreamAnalyticsOutputBlobSerialization {
  const StreamAnalyticsOutputBlobSerialization({
    this.encoding,
    this.fieldDelimiter,
    this.format,
    required this.type,
  });

  final StreamAnalyticsOutputBlobEncoding? encoding;

  final StreamAnalyticsOutputBlobFieldDelimiter? fieldDelimiter;

  final StreamAnalyticsOutputBlobFormat? format;

  final StreamAnalyticsOutputBlobType type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'format': ?format?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `encoding` — derived from the provider schema description.
extension type const StreamAnalyticsOutputBlobEncoding._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsOutputBlobEncoding.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputBlobEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputBlobEncoding.arg(TfArg<String> arg) : this._(arg);

  static const utf8 = StreamAnalyticsOutputBlobEncoding._(TfArgLiteral('UTF8'));

  static const List<StreamAnalyticsOutputBlobEncoding> values = [utf8];
}

/// `field_delimiter` — derived from the provider schema description.
extension type const StreamAnalyticsOutputBlobFieldDelimiter._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsOutputBlobFieldDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputBlobFieldDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputBlobFieldDelimiter.arg(TfArg<String> arg)
    : this._(arg);

  static const value = StreamAnalyticsOutputBlobFieldDelimiter._(
    TfArgLiteral(' '),
  );
  static const value2 = StreamAnalyticsOutputBlobFieldDelimiter._(
    TfArgLiteral(','),
  );
  static const value3 = StreamAnalyticsOutputBlobFieldDelimiter._(
    TfArgLiteral('	'),
  );
  static const value4 = StreamAnalyticsOutputBlobFieldDelimiter._(
    TfArgLiteral('|'),
  );
  static const value5 = StreamAnalyticsOutputBlobFieldDelimiter._(
    TfArgLiteral(';'),
  );

  static const List<StreamAnalyticsOutputBlobFieldDelimiter> values = [
    value,
    value2,
    value3,
    value4,
    value5,
  ];
}

/// `format` — derived from the provider schema description.
extension type const StreamAnalyticsOutputBlobFormat._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsOutputBlobFormat.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputBlobFormat.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputBlobFormat.arg(TfArg<String> arg) : this._(arg);

  static const array = StreamAnalyticsOutputBlobFormat._(TfArgLiteral('Array'));
  static const lineseparated = StreamAnalyticsOutputBlobFormat._(
    TfArgLiteral('LineSeparated'),
  );

  static const List<StreamAnalyticsOutputBlobFormat> values = [
    array,
    lineseparated,
  ];
}

/// `type` — derived from the provider schema description.
extension type const StreamAnalyticsOutputBlobType._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsOutputBlobType.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputBlobType.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputBlobType.arg(TfArg<String> arg) : this._(arg);

  static const avro = StreamAnalyticsOutputBlobType._(TfArgLiteral('Avro'));
  static const csv = StreamAnalyticsOutputBlobType._(TfArgLiteral('Csv'));
  static const json = StreamAnalyticsOutputBlobType._(TfArgLiteral('Json'));
  static const parquet = StreamAnalyticsOutputBlobType._(
    TfArgLiteral('Parquet'),
  );

  static const List<StreamAnalyticsOutputBlobType> values = [
    avro,
    csv,
    json,
    parquet,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_output_blob`.
final class AzurermStreamAnalyticsOutputBlob extends Resource {
  static const String tfType = 'azurerm_stream_analytics_output_blob';

  AzurermStreamAnalyticsOutputBlob(
    super.localName, {
    StreamAnalyticsOutputBlobAuthenticationMode? authenticationMode,
    TfArg<String>? batchMaxWaitTime,
    TfArg<num>? batchMinRows,
    StreamAnalyticsOutputBlobWriteMode? blobWriteMode,
    required TfArg<String> dateFormat,
    required TfArg<String> name,
    required TfArg<String> pathPattern,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    Sensitive<String>? storageAccountKey,
    required RefTo<AzurermStorageAccount> storageAccountName,
    required TfArg<String> storageContainerName,
    required TfArg<String> streamAnalyticsJobName,
    required TfArg<String> timeFormat,
    required StreamAnalyticsOutputBlobSerialization serialization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': ?authenticationMode,
           'batch_max_wait_time': ?batchMaxWaitTime,
           'batch_min_rows': ?batchMinRows,
           'blob_write_mode': ?blobWriteMode,
           'date_format': dateFormat,
           'name': name,
           'path_pattern': pathPattern,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_key': ?storageAccountKey,
           'storage_account_name': storageAccountName.encodeAs('name'),
           'storage_container_name': storageContainerName,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'time_format': timeFormat,
           'serialization': TfArg.literal(serialization.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStreamAnalyticsOutputBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputBlob>`.
  RefTo<AzurermStreamAnalyticsOutputBlob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

  /// Reference to `batch_max_wait_time` attribute.
  TfRef<String> get batchMaxWaitTime =>
      TfRef.attribute<String>(this, 'batch_max_wait_time');

  /// Reference to `batch_min_rows` attribute.
  TfRef<num> get batchMinRows => TfRef.attribute<num>(this, 'batch_min_rows');

  /// Reference to `blob_write_mode` attribute.
  TfRef<String> get blobWriteMode =>
      TfRef.attribute<String>(this, 'blob_write_mode');

  /// Reference to `date_format` attribute.
  TfRef<String> get dateFormat => TfRef.attribute<String>(this, 'date_format');

  /// Reference to `path_pattern` attribute.
  TfRef<String> get pathPattern =>
      TfRef.attribute<String>(this, 'path_pattern');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_key` attribute.
  TfRef<String> get storageAccountKey =>
      TfRef.attribute<String>(this, 'storage_account_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');

  /// Reference to `storage_container_name` attribute.
  TfRef<String> get storageContainerName =>
      TfRef.attribute<String>(this, 'storage_container_name');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');

  /// Reference to `time_format` attribute.
  TfRef<String> get timeFormat => TfRef.attribute<String>(this, 'time_format');
}
