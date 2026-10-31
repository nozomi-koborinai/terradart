// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_stream_analytics_stream_input_blob`.
const Set<String> _azurermStreamAnalyticsStreamInputBlobSensitive = <String>{
  'storage_account_key',
};

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_stream_input_blob` (derived from provider schema).
@immutable
final class StreamAnalyticsStreamInputBlobSerialization {
  const StreamAnalyticsStreamInputBlobSerialization({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  final TfArg<String>? encoding;

  final StreamAnalyticsStreamInputBlobFieldDelimiter? fieldDelimiter;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `field_delimiter` — derived from the provider schema description.
extension type const StreamAnalyticsStreamInputBlobFieldDelimiter._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsStreamInputBlobFieldDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsStreamInputBlobFieldDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsStreamInputBlobFieldDelimiter.arg(TfArg<String> arg)
    : this._(arg);

  static const value = StreamAnalyticsStreamInputBlobFieldDelimiter._(
    TfArgLiteral(' '),
  );
  static const value2 = StreamAnalyticsStreamInputBlobFieldDelimiter._(
    TfArgLiteral(','),
  );
  static const value3 = StreamAnalyticsStreamInputBlobFieldDelimiter._(
    TfArgLiteral('	'),
  );
  static const value4 = StreamAnalyticsStreamInputBlobFieldDelimiter._(
    TfArgLiteral('|'),
  );
  static const value5 = StreamAnalyticsStreamInputBlobFieldDelimiter._(
    TfArgLiteral(';'),
  );

  static const List<StreamAnalyticsStreamInputBlobFieldDelimiter> values = [
    value,
    value2,
    value3,
    value4,
    value5,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_stream_input_blob`.
final class AzurermStreamAnalyticsStreamInputBlob extends Resource {
  static const String tfType = 'azurerm_stream_analytics_stream_input_blob';

  AzurermStreamAnalyticsStreamInputBlob(
    super.localName, {
    TfArg<String>? authenticationMode,
    required TfArg<String> dateFormat,
    required TfArg<String> name,
    required TfArg<String> pathPattern,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required Sensitive<String> storageAccountKey,
    required RefTo<AzurermStorageAccount> storageAccountName,
    required TfArg<String> storageContainerName,
    required TfArg<String> streamAnalyticsJobName,
    required TfArg<String> timeFormat,
    required StreamAnalyticsStreamInputBlobSerialization serialization,
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
           'storage_account_key': storageAccountKey,
           'storage_account_name': storageAccountName.encodeAs('name'),
           'storage_container_name': storageContainerName,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'time_format': timeFormat,
           'serialization': TfArg.literal(serialization.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsStreamInputBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsStreamInputBlob>`.
  RefTo<AzurermStreamAnalyticsStreamInputBlob> get ref => RefTo.of(this);

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
