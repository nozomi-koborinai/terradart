// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_stream_analytics_reference_input_blob`.
const Set<String> _azurermStreamAnalyticsReferenceInputBlobSensitive = <String>{
  'storage_account_key',
};

/// Stream Analytics Reference Input Blob Authentication enum for `authentication_mode`.
extension type const StreamAnalyticsReferenceInputBlobAuthenticationMode._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsReferenceInputBlobAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsReferenceInputBlobAuthenticationMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const StreamAnalyticsReferenceInputBlobAuthenticationMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const connectionstring =
      StreamAnalyticsReferenceInputBlobAuthenticationMode._(
        TfArgLiteral('ConnectionString'),
      );
  static const msi = StreamAnalyticsReferenceInputBlobAuthenticationMode._(
    TfArgLiteral('Msi'),
  );

  static const List<StreamAnalyticsReferenceInputBlobAuthenticationMode>
  values = [connectionstring, msi];
}

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_reference_input_blob` (derived from provider schema).
@immutable
final class StreamAnalyticsReferenceInputBlobSerialization {
  const StreamAnalyticsReferenceInputBlobSerialization({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  final StreamAnalyticsReferenceInputBlobEncoding? encoding;

  final StreamAnalyticsReferenceInputBlobFieldDelimiter? fieldDelimiter;

  final StreamAnalyticsReferenceInputBlobType type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `encoding` — derived from the provider schema description.
extension type const StreamAnalyticsReferenceInputBlobEncoding._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsReferenceInputBlobEncoding.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsReferenceInputBlobEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsReferenceInputBlobEncoding.arg(TfArg<String> arg)
    : this._(arg);

  static const utf8 = StreamAnalyticsReferenceInputBlobEncoding._(
    TfArgLiteral('UTF8'),
  );

  static const List<StreamAnalyticsReferenceInputBlobEncoding> values = [utf8];
}

/// `field_delimiter` — derived from the provider schema description.
extension type const StreamAnalyticsReferenceInputBlobFieldDelimiter._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsReferenceInputBlobFieldDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsReferenceInputBlobFieldDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsReferenceInputBlobFieldDelimiter.arg(TfArg<String> arg)
    : this._(arg);

  static const value = StreamAnalyticsReferenceInputBlobFieldDelimiter._(
    TfArgLiteral(' '),
  );
  static const value2 = StreamAnalyticsReferenceInputBlobFieldDelimiter._(
    TfArgLiteral(','),
  );
  static const value3 = StreamAnalyticsReferenceInputBlobFieldDelimiter._(
    TfArgLiteral('	'),
  );
  static const value4 = StreamAnalyticsReferenceInputBlobFieldDelimiter._(
    TfArgLiteral('|'),
  );
  static const value5 = StreamAnalyticsReferenceInputBlobFieldDelimiter._(
    TfArgLiteral(';'),
  );

  static const List<StreamAnalyticsReferenceInputBlobFieldDelimiter> values = [
    value,
    value2,
    value3,
    value4,
    value5,
  ];
}

/// `type` — derived from the provider schema description.
extension type const StreamAnalyticsReferenceInputBlobType._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsReferenceInputBlobType.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsReferenceInputBlobType.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsReferenceInputBlobType.arg(TfArg<String> arg)
    : this._(arg);

  static const avro = StreamAnalyticsReferenceInputBlobType._(
    TfArgLiteral('Avro'),
  );
  static const csv = StreamAnalyticsReferenceInputBlobType._(
    TfArgLiteral('Csv'),
  );
  static const json = StreamAnalyticsReferenceInputBlobType._(
    TfArgLiteral('Json'),
  );

  static const List<StreamAnalyticsReferenceInputBlobType> values = [
    avro,
    csv,
    json,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_reference_input_blob`.
final class AzurermStreamAnalyticsReferenceInputBlob extends Resource {
  static const String tfType = 'azurerm_stream_analytics_reference_input_blob';

  AzurermStreamAnalyticsReferenceInputBlob(
    super.localName, {
    StreamAnalyticsReferenceInputBlobAuthenticationMode? authenticationMode,
    required TfArg<String> dateFormat,
    required TfArg<String> name,
    required TfArg<String> pathPattern,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    Sensitive<String>? storageAccountKey,
    required RefTo<AzurermStorageAccount> storageAccountName,
    required TfArg<String> storageContainerName,
    required TfArg<String> streamAnalyticsJobName,
    required TfArg<String> timeFormat,
    required StreamAnalyticsReferenceInputBlobSerialization serialization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': ?authenticationMode,
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
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsReferenceInputBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsReferenceInputBlob>`.
  RefTo<AzurermStreamAnalyticsReferenceInputBlob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

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
