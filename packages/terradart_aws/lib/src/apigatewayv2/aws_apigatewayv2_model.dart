// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_model`.
const Set<String> _awsApigatewayv2ModelSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_model`.
final class AwsApigatewayv2Model extends Resource {
  static const String tfType = 'aws_apigatewayv2_model';

  AwsApigatewayv2Model({
    required super.localName,
    required TfArg<String> apiId,
    required TfArg<String> contentType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'content_type': contentType,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'schema': schema,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ModelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
