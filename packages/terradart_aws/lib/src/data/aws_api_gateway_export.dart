// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_export`.
const Set<String> _awsApiGatewayExportSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_export`.
final class DataAwsApiGatewayExport extends Data {
  static const String tfType = 'aws_api_gateway_export';

  DataAwsApiGatewayExport({
    required super.localName,
    TfArg<String>? accepts,
    required TfArg<String> exportType,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required TfArg<String> stageName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accepts': ?accepts,
           'export_type': exportType,
           'parameters': ?parameters,
           'region': ?region,
           'rest_api_id': restApiId,
           'stage_name': stageName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `accepts` attribute.
  TfRef<String> get accepts => TfRef.attribute<String>(this, 'accepts');

  /// Reference to `export_type` attribute.
  TfRef<String> get exportType => TfRef.attribute<String>(this, 'export_type');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `stage_name` attribute.
  TfRef<String> get stageName => TfRef.attribute<String>(this, 'stage_name');
}
