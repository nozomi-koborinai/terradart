// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_model`.
const Set<String> _awsApiGatewayModelSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_model`.
final class AwsApiGatewayModel extends Resource {
  static const String tfType = 'aws_api_gateway_model';

  AwsApiGatewayModel({
    required super.localName,
    required TfArg<String> contentType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    TfArg<String>? schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_type': contentType,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           if (schema != null) 'schema': schema,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayModelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
