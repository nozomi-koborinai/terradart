// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_export`.
const Set<String> _awsApigatewayv2ExportSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_export`.
final class DataAwsApigatewayv2Export extends Data {
  static const String tfType = 'aws_apigatewayv2_export';

  DataAwsApigatewayv2Export(
    super.localName, {
    required TfArg<String> apiId,
    TfArg<String>? exportVersion,
    TfArg<bool>? includeExtensions,
    required TfArg<String> outputType,
    TfArg<String>? region,
    required TfArg<String> specification,
    TfArg<String>? stageName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'export_version': ?exportVersion,
           'include_extensions': ?includeExtensions,
           'output_type': outputType,
           'region': ?region,
           'specification': specification,
           'stage_name': ?stageName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `export_version` attribute.
  TfRef<String> get exportVersion =>
      TfRef.attribute<String>(this, 'export_version');

  /// Reference to `include_extensions` attribute.
  TfRef<bool> get includeExtensions =>
      TfRef.attribute<bool>(this, 'include_extensions');

  /// Reference to `output_type` attribute.
  TfRef<String> get outputType => TfRef.attribute<String>(this, 'output_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `specification` attribute.
  TfRef<String> get specification =>
      TfRef.attribute<String>(this, 'specification');

  /// Reference to `stage_name` attribute.
  TfRef<String> get stageName => TfRef.attribute<String>(this, 'stage_name');
}
