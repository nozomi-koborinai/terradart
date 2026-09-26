// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api`.
const Set<String> _awsApiGatewayRestApiSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_rest_api`.
final class DataAwsApiGatewayRestApi extends Data {
  static const String tfType = 'aws_api_gateway_rest_api';

  DataAwsApiGatewayRestApi({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRestApiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key_source` attribute.
  TfRef<String> get apiKeySource =>
      TfRef.attribute<String>(this, 'api_key_source');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `binary_media_types` attribute.
  TfRef<List<String>> get binaryMediaTypes =>
      TfRef.attribute<List<String>>(this, 'binary_media_types');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoint_access_mode` attribute.
  TfRef<String> get endpointAccessMode =>
      TfRef.attribute<String>(this, 'endpoint_access_mode');

  /// Reference to `endpoint_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get endpointConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'endpoint_configuration',
      );

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `minimum_compression_size` attribute.
  TfRef<String> get minimumCompressionSize =>
      TfRef.attribute<String>(this, 'minimum_compression_size');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `root_resource_id` attribute.
  TfRef<String> get rootResourceId =>
      TfRef.attribute<String>(this, 'root_resource_id');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');
}
