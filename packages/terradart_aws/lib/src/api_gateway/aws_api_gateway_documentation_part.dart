// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_documentation_part`.
const Set<String> _awsApiGatewayDocumentationPartSensitive = <String>{};

/// Typed helper for the `location` block of
/// `aws_api_gateway_documentation_part` (derived from provider schema).
@immutable
final class ApiGatewayDocumentationPartLocation {
  const ApiGatewayDocumentationPartLocation({
    this.method,
    this.name,
    this.path,
    this.statusCode,
    required this.type,
  });

  final TfArg<String>? method;

  final TfArg<String>? name;

  final TfArg<String>? path;

  final TfArg<String>? statusCode;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_documentation_part`.
final class AwsApiGatewayDocumentationPart extends Resource {
  static const String tfType = 'aws_api_gateway_documentation_part';

  AwsApiGatewayDocumentationPart({
    required super.localName,
    required TfArg<String> properties,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required ApiGatewayDocumentationPartLocation location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'properties': properties,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayDocumentationPartSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `documentation_part_id` attribute.
  TfRef<String> get documentationPartId =>
      TfRef.attribute<String>(this, 'documentation_part_id');
}
