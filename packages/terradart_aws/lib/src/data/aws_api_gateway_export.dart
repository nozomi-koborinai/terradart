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
           if (accepts != null) 'accepts': accepts,
           'export_type': exportType,
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
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
}
