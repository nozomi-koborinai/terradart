// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_function_javascript_udf`.
const Set<String> _azurermStreamAnalyticsFunctionJavascriptUdfSensitive =
    <String>{};

/// Typed helper for the `input` block of
/// `azurerm_stream_analytics_function_javascript_udf` (derived from provider schema).
@immutable
final class StreamAnalyticsFunctionJavascriptUdfInput {
  const StreamAnalyticsFunctionJavascriptUdfInput({
    this.configurationParameter,
    required this.type,
  });

  final TfArg<bool>? configurationParameter;

  final StreamAnalyticsFunctionJavascriptUdfType type;

  @internal
  Map<String, Object?> encode() => {
    'configuration_parameter': ?configurationParameter?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const StreamAnalyticsFunctionJavascriptUdfType._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsFunctionJavascriptUdfType.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsFunctionJavascriptUdfType.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsFunctionJavascriptUdfType.arg(TfArg<String> arg)
    : this._(arg);

  static const any = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('any'),
  );
  static const datetime = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('datetime'),
  );
  static const array = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('array'),
  );
  static const bigint = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('bigint'),
  );
  static const float = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('float'),
  );
  static const nvarcharMax = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('nvarchar(max)'),
  );
  static const record = StreamAnalyticsFunctionJavascriptUdfType._(
    TfArgLiteral('record'),
  );

  static const List<StreamAnalyticsFunctionJavascriptUdfType> values = [
    any,
    datetime,
    array,
    bigint,
    float,
    nvarcharMax,
    record,
  ];
}

/// Typed helper for the `output` block of
/// `azurerm_stream_analytics_function_javascript_udf` (derived from provider schema).
@immutable
final class StreamAnalyticsFunctionJavascriptUdfOutput {
  const StreamAnalyticsFunctionJavascriptUdfOutput({required this.type});

  final StreamAnalyticsFunctionJavascriptUdfType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_stream_analytics_function_javascript_udf`.
final class AzurermStreamAnalyticsFunctionJavascriptUdf extends Resource {
  static const String tfType =
      'azurerm_stream_analytics_function_javascript_udf';

  AzurermStreamAnalyticsFunctionJavascriptUdf(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> script,
    required TfArg<String> streamAnalyticsJobName,
    required List<StreamAnalyticsFunctionJavascriptUdfInput> input,
    required StreamAnalyticsFunctionJavascriptUdfOutput output,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'script': script,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'input': TfArg.literal([for (final e in input) e.encode()]),
           'output': TfArg.literal(output.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsFunctionJavascriptUdfSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsFunctionJavascriptUdf>`.
  RefTo<AzurermStreamAnalyticsFunctionJavascriptUdf> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');
}
