// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stream_analytics_function_javascript_uda`.
const Set<String> _azurermStreamAnalyticsFunctionJavascriptUdaSensitive =
    <String>{};

/// Typed helper for the `input` block of
/// `azurerm_stream_analytics_function_javascript_uda` (derived from provider schema).
@immutable
final class StreamAnalyticsFunctionJavascriptUdaInput {
  const StreamAnalyticsFunctionJavascriptUdaInput({
    this.configurationParameter,
    required this.type,
  });

  final TfArg<bool>? configurationParameter;

  final StreamAnalyticsFunctionJavascriptUdaType type;

  @internal
  Map<String, Object?> encode() => {
    'configuration_parameter': ?configurationParameter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const StreamAnalyticsFunctionJavascriptUdaType._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsFunctionJavascriptUdaType.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsFunctionJavascriptUdaType.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsFunctionJavascriptUdaType.arg(TfArg<String> arg)
    : this._(arg);

  static const any = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('any'),
  );
  static const array = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('array'),
  );
  static const bigint = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('bigint'),
  );
  static const datetime = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('datetime'),
  );
  static const float = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('float'),
  );
  static const nvarcharMax = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('nvarchar(max)'),
  );
  static const record = StreamAnalyticsFunctionJavascriptUdaType._(
    TfArgLiteral('record'),
  );

  static const List<StreamAnalyticsFunctionJavascriptUdaType> values = [
    any,
    array,
    bigint,
    datetime,
    float,
    nvarcharMax,
    record,
  ];
}

/// Typed helper for the `output` block of
/// `azurerm_stream_analytics_function_javascript_uda` (derived from provider schema).
@immutable
final class StreamAnalyticsFunctionJavascriptUdaOutput {
  const StreamAnalyticsFunctionJavascriptUdaOutput({required this.type});

  final StreamAnalyticsFunctionJavascriptUdaType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_stream_analytics_function_javascript_uda`.
final class AzurermStreamAnalyticsFunctionJavascriptUda extends Resource {
  static const String tfType =
      'azurerm_stream_analytics_function_javascript_uda';

  AzurermStreamAnalyticsFunctionJavascriptUda(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> script,
    required TfArg<String> streamAnalyticsJobId,
    required List<StreamAnalyticsFunctionJavascriptUdaInput> input,
    required StreamAnalyticsFunctionJavascriptUdaOutput output,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'script': script,
           'stream_analytics_job_id': streamAnalyticsJobId,
           'input': TfArg.literal([for (final e in input) e.encode()]),
           'output': TfArg.literal(output.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsFunctionJavascriptUdaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsFunctionJavascriptUda>`.
  RefTo<AzurermStreamAnalyticsFunctionJavascriptUda> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');

  /// Reference to `stream_analytics_job_id` attribute.
  TfRef<String> get streamAnalyticsJobId =>
      TfRef.attribute<String>(this, 'stream_analytics_job_id');
}
