// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stream_analytics_stream_input_eventhub_v2`.
const Set<String> _azurermStreamAnalyticsStreamInputEventhubV2Sensitive =
    <String>{'shared_access_policy_key'};

/// Stream Analytics Stream Input Eventhub V2 Authentication enum for `authentication_mode`.
extension type const StreamAnalyticsStreamInputEventhubV2AuthenticationMode._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsStreamInputEventhubV2AuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsStreamInputEventhubV2AuthenticationMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const StreamAnalyticsStreamInputEventhubV2AuthenticationMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const msi = StreamAnalyticsStreamInputEventhubV2AuthenticationMode._(
    TfArgLiteral('Msi'),
  );
  static const connectionstring =
      StreamAnalyticsStreamInputEventhubV2AuthenticationMode._(
        TfArgLiteral('ConnectionString'),
      );

  static const List<StreamAnalyticsStreamInputEventhubV2AuthenticationMode>
  values = [msi, connectionstring];
}

/// Typed helper for the `serialization` block of
/// `azurerm_stream_analytics_stream_input_eventhub_v2` (derived from provider schema).
@immutable
final class StreamAnalyticsStreamInputEventhubV2Serialization {
  const StreamAnalyticsStreamInputEventhubV2Serialization({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  final StreamAnalyticsStreamInputEventhubV2Encoding? encoding;

  final StreamAnalyticsStreamInputEventhubV2FieldDelimiter? fieldDelimiter;

  final StreamAnalyticsStreamInputEventhubV2Type type;

  @internal
  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `encoding` — derived from the provider schema description.
extension type const StreamAnalyticsStreamInputEventhubV2Encoding._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsStreamInputEventhubV2Encoding.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsStreamInputEventhubV2Encoding.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsStreamInputEventhubV2Encoding.arg(TfArg<String> arg)
    : this._(arg);

  static const utf8 = StreamAnalyticsStreamInputEventhubV2Encoding._(
    TfArgLiteral('UTF8'),
  );

  static const List<StreamAnalyticsStreamInputEventhubV2Encoding> values = [
    utf8,
  ];
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

/// `type` — derived from the provider schema description.
extension type const StreamAnalyticsStreamInputEventhubV2Type._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsStreamInputEventhubV2Type.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsStreamInputEventhubV2Type.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsStreamInputEventhubV2Type.arg(TfArg<String> arg)
    : this._(arg);

  static const avro = StreamAnalyticsStreamInputEventhubV2Type._(
    TfArgLiteral('Avro'),
  );
  static const csv = StreamAnalyticsStreamInputEventhubV2Type._(
    TfArgLiteral('Csv'),
  );
  static const json = StreamAnalyticsStreamInputEventhubV2Type._(
    TfArgLiteral('Json'),
  );

  static const List<StreamAnalyticsStreamInputEventhubV2Type> values = [
    avro,
    csv,
    json,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_stream_input_eventhub_v2`.
final class AzurermStreamAnalyticsStreamInputEventhubV2 extends Resource {
  static const String tfType =
      'azurerm_stream_analytics_stream_input_eventhub_v2';

  AzurermStreamAnalyticsStreamInputEventhubV2(
    super.localName, {
    StreamAnalyticsStreamInputEventhubV2AuthenticationMode? authenticationMode,
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
