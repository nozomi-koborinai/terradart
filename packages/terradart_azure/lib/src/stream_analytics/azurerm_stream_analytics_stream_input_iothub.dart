// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_stream_input_iothub`.
const Set<String> _azurermStreamAnalyticsStreamInputIothubSensitive = <String>{
  'shared_access_policy_key',
};

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_stream_input_iothub` (derived from provider schema).
@immutable
final class StreamAnalyticsStreamInputIothubSerialization {
  const StreamAnalyticsStreamInputIothubSerialization({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  final TfArg<String>? encoding;

  final StreamAnalyticsStreamInputIothubFieldDelimiter? fieldDelimiter;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `field_delimiter` — derived from the provider schema description.
extension type const StreamAnalyticsStreamInputIothubFieldDelimiter._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsStreamInputIothubFieldDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsStreamInputIothubFieldDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsStreamInputIothubFieldDelimiter.arg(TfArg<String> arg)
    : this._(arg);

  static const value = StreamAnalyticsStreamInputIothubFieldDelimiter._(
    TfArgLiteral(' '),
  );
  static const value2 = StreamAnalyticsStreamInputIothubFieldDelimiter._(
    TfArgLiteral(','),
  );
  static const value3 = StreamAnalyticsStreamInputIothubFieldDelimiter._(
    TfArgLiteral('	'),
  );
  static const value4 = StreamAnalyticsStreamInputIothubFieldDelimiter._(
    TfArgLiteral('|'),
  );
  static const value5 = StreamAnalyticsStreamInputIothubFieldDelimiter._(
    TfArgLiteral(';'),
  );

  static const List<StreamAnalyticsStreamInputIothubFieldDelimiter> values = [
    value,
    value2,
    value3,
    value4,
    value5,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_stream_input_iothub`.
final class AzurermStreamAnalyticsStreamInputIothub extends Resource {
  static const String tfType = 'azurerm_stream_analytics_stream_input_iothub';

  AzurermStreamAnalyticsStreamInputIothub(
    super.localName, {
    required TfArg<String> endpoint,
    required TfArg<String> eventhubConsumerGroupName,
    required TfArg<String> iothubNamespace,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required Sensitive<String> sharedAccessPolicyKey,
    required TfArg<String> sharedAccessPolicyName,
    required TfArg<String> streamAnalyticsJobName,
    required StreamAnalyticsStreamInputIothubSerialization serialization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint': endpoint,
           'eventhub_consumer_group_name': eventhubConsumerGroupName,
           'iothub_namespace': iothubNamespace,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'shared_access_policy_key': sharedAccessPolicyKey,
           'shared_access_policy_name': sharedAccessPolicyName,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'serialization': TfArg.literal(serialization.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsStreamInputIothubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsStreamInputIothub>`.
  RefTo<AzurermStreamAnalyticsStreamInputIothub> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `eventhub_consumer_group_name` attribute.
  TfRef<String> get eventhubConsumerGroupName =>
      TfRef.attribute<String>(this, 'eventhub_consumer_group_name');

  /// Reference to `iothub_namespace` attribute.
  TfRef<String> get iothubNamespace =>
      TfRef.attribute<String>(this, 'iothub_namespace');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `shared_access_policy_key` attribute.
  TfRef<String> get sharedAccessPolicyKey =>
      TfRef.attribute<String>(this, 'shared_access_policy_key');

  /// Reference to `shared_access_policy_name` attribute.
  TfRef<String> get sharedAccessPolicyName =>
      TfRef.attribute<String>(this, 'shared_access_policy_name');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');
}
