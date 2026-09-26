// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_export`.
const Set<String> _awsApigatewayv2ExportSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_export`.
final class DataAwsApigatewayv2Export extends Data {
  static const String tfType = 'aws_apigatewayv2_export';

  DataAwsApigatewayv2Export({
    required super.localName,
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
           if (exportVersion != null) 'export_version': exportVersion,
           if (includeExtensions != null)
             'include_extensions': includeExtensions,
           'output_type': outputType,
           if (region != null) 'region': region,
           'specification': specification,
           if (stageName != null) 'stage_name': stageName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');
}
