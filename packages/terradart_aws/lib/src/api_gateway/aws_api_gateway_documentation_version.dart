// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_documentation_version`.
const Set<String> _awsApiGatewayDocumentationVersionSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_documentation_version`.
final class AwsApiGatewayDocumentationVersion extends Resource {
  static const String tfType = 'aws_api_gateway_documentation_version';

  AwsApiGatewayDocumentationVersion({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApiGatewayDocumentationVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
