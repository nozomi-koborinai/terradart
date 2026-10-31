// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stream_analytics_stream_input_eventhub_v2`.
const Set<String> _azurermStreamAnalyticsStreamInputEventhubV2Sensitive =
    <String>{'shared_access_policy_key'};

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_stream_input_eventhub_v2` (derived from provider schema).
@immutable
final class StreamAnalyticsStreamInputEventhubV2Serialization {
  const StreamAnalyticsStreamInputEventhubV2Serialization({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  final TfArg<String>? encoding;

  final StreamAnalyticsStreamInputEventhubV2FieldDelimiter? fieldDelimiter;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `field_delimiter` — derived from the provider schema description.
extension type const StreamAnalyticsStreamInputEventhubV2FieldDelimiter._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsStreamInputEventhubV2FieldDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsStreamInputEventhubV2FieldDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsStreamInputEventhubV2FieldDelimiter.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const value = StreamAnalyticsStreamInputEventhubV2FieldDelimiter._(
    TfArgLiteral(' '),
  );
  static const value2 = StreamAnalyticsStreamInputEventhubV2FieldDelimiter._(
    TfArgLiteral(','),
  );
  static const value3 = StreamAnalyticsStreamInputEventhubV2FieldDelimiter._(
    TfArgLiteral('	'),
  );
  static const value4 = StreamAnalyticsStreamInputEventhubV2FieldDelimiter._(
    TfArgLiteral('|'),
  );
  static const value5 = StreamAnalyticsStreamInputEventhubV2FieldDelimiter._(
    TfArgLiteral(';'),
  );

  static const List<StreamAnalyticsStreamInputEventhubV2FieldDelimiter> values =
      [value, value2, value3, value4, value5];
}

/// Factory wrapper for `azurerm_stream_analytics_stream_input_eventhub_v2`.
final class AzurermStreamAnalyticsStreamInputEventhubV2 extends Resource {
  static const String tfType =
      'azurerm_stream_analytics_stream_input_eventhub_v2';

  AzurermStreamAnalyticsStreamInputEventhubV2(
    super.localName, {
    TfArg<String>? authenticationMode,
    TfArg<String>? eventhubConsumerGroupName,
    required TfArg<String> eventhubName,
    required TfArg<String> name,
    TfArg<String>? partitionKey,
    required TfArg<String> servicebusNamespace,
    Sensitive<String>? sharedAccessPolicyKey,
    TfArg<String>? sharedAccessPolicyName,
    required TfArg<String> streamAnalyticsJobId,
    required StreamAnalyticsStreamInputEventhubV2Serialization serialization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': ?authenticationMode,
           'eventhub_consumer_group_name': ?eventhubConsumerGroupName,
           'eventhub_name': eventhubName,
           'name': name,
           'partition_key': ?partitionKey,
           'servicebus_namespace': servicebusNamespace,
           'shared_access_policy_key': ?sharedAccessPolicyKey,
           'shared_access_policy_name': ?sharedAccessPolicyName,
           'stream_analytics_job_id': streamAnalyticsJobId,
           'serialization': TfArg.literal(serialization.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsStreamInputEventhubV2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsStreamInputEventhubV2>`.
  RefTo<AzurermStreamAnalyticsStreamInputEventhubV2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

  /// Reference to `eventhub_consumer_group_name` attribute.
  TfRef<String> get eventhubConsumerGroupName =>
      TfRef.attribute<String>(this, 'eventhub_consumer_group_name');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `partition_key` attribute.
  TfRef<String> get partitionKey =>
      TfRef.attribute<String>(this, 'partition_key');

  /// Reference to `servicebus_namespace` attribute.
  TfRef<String> get servicebusNamespace =>
      TfRef.attribute<String>(this, 'servicebus_namespace');

  /// Reference to `shared_access_policy_key` attribute.
  TfRef<String> get sharedAccessPolicyKey =>
      TfRef.attribute<String>(this, 'shared_access_policy_key');

  /// Reference to `shared_access_policy_name` attribute.
  TfRef<String> get sharedAccessPolicyName =>
      TfRef.attribute<String>(this, 'shared_access_policy_name');

  /// Reference to `stream_analytics_job_id` attribute.
  TfRef<String> get streamAnalyticsJobId =>
      TfRef.attribute<String>(this, 'stream_analytics_job_id');
}
