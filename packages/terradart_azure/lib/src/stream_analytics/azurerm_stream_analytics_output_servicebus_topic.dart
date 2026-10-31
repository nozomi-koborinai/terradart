// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_output_servicebus_topic`.
const Set<String> _azurermStreamAnalyticsOutputServicebusTopicSensitive =
    <String>{'shared_access_policy_key'};

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_output_servicebus_topic` (derived from provider schema).
@immutable
final class StreamAnalyticsOutputServicebusTopicSerialization {
  const StreamAnalyticsOutputServicebusTopicSerialization({
    this.encoding,
    this.fieldDelimiter,
    this.format,
    required this.type,
  });

  final TfArg<String>? encoding;

  final StreamAnalyticsOutputServicebusTopicFieldDelimiter? fieldDelimiter;

  final StreamAnalyticsOutputServicebusTopicFormat? format;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'format': ?format?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `field_delimiter` — derived from the provider schema description.
extension type const StreamAnalyticsOutputServicebusTopicFieldDelimiter._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsOutputServicebusTopicFieldDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputServicebusTopicFieldDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputServicebusTopicFieldDelimiter.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const value = StreamAnalyticsOutputServicebusTopicFieldDelimiter._(
    TfArgLiteral(' '),
  );
  static const value2 = StreamAnalyticsOutputServicebusTopicFieldDelimiter._(
    TfArgLiteral(','),
  );
  static const value3 = StreamAnalyticsOutputServicebusTopicFieldDelimiter._(
    TfArgLiteral('	'),
  );
  static const value4 = StreamAnalyticsOutputServicebusTopicFieldDelimiter._(
    TfArgLiteral('|'),
  );
  static const value5 = StreamAnalyticsOutputServicebusTopicFieldDelimiter._(
    TfArgLiteral(';'),
  );

  static const List<StreamAnalyticsOutputServicebusTopicFieldDelimiter> values =
      [value, value2, value3, value4, value5];
}

/// `format` — derived from the provider schema description.
extension type const StreamAnalyticsOutputServicebusTopicFormat._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsOutputServicebusTopicFormat.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputServicebusTopicFormat.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputServicebusTopicFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const array = StreamAnalyticsOutputServicebusTopicFormat._(
    TfArgLiteral('Array'),
  );
  static const lineseparated = StreamAnalyticsOutputServicebusTopicFormat._(
    TfArgLiteral('LineSeparated'),
  );

  static const List<StreamAnalyticsOutputServicebusTopicFormat> values = [
    array,
    lineseparated,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_output_servicebus_topic`.
final class AzurermStreamAnalyticsOutputServicebusTopic extends Resource {
  static const String tfType =
      'azurerm_stream_analytics_output_servicebus_topic';

  AzurermStreamAnalyticsOutputServicebusTopic(
    super.localName, {
    TfArg<String>? authenticationMode,
    required TfArg<String> name,
    TfArg<List<String>>? propertyColumns,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> servicebusNamespace,
    Sensitive<String>? sharedAccessPolicyKey,
    TfArg<String>? sharedAccessPolicyName,
    required TfArg<String> streamAnalyticsJobName,
    TfArg<Map<String, String>>? systemPropertyColumns,
    required TfArg<String> topicName,
    required StreamAnalyticsOutputServicebusTopicSerialization serialization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': ?authenticationMode,
           'name': name,
           'property_columns': ?propertyColumns,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'servicebus_namespace': servicebusNamespace,
           'shared_access_policy_key': ?sharedAccessPolicyKey,
           'shared_access_policy_name': ?sharedAccessPolicyName,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'system_property_columns': ?systemPropertyColumns,
           'topic_name': topicName,
           'serialization': TfArg.literal(serialization.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsOutputServicebusTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputServicebusTopic>`.
  RefTo<AzurermStreamAnalyticsOutputServicebusTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

  /// Reference to `property_columns` attribute.
  TfRef<List<String>> get propertyColumns =>
      TfRef.attribute<List<String>>(this, 'property_columns');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `servicebus_namespace` attribute.
  TfRef<String> get servicebusNamespace =>
      TfRef.attribute<String>(this, 'servicebus_namespace');

  /// Reference to `shared_access_policy_key` attribute.
  TfRef<String> get sharedAccessPolicyKey =>
      TfRef.attribute<String>(this, 'shared_access_policy_key');

  /// Reference to `shared_access_policy_name` attribute.
  TfRef<String> get sharedAccessPolicyName =>
      TfRef.attribute<String>(this, 'shared_access_policy_name');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');

  /// Reference to `system_property_columns` attribute.
  TfRef<Map<String, String>> get systemPropertyColumns =>
      TfRef.attribute<Map<String, String>>(this, 'system_property_columns');

  /// Reference to `topic_name` attribute.
  TfRef<String> get topicName => TfRef.attribute<String>(this, 'topic_name');
}
