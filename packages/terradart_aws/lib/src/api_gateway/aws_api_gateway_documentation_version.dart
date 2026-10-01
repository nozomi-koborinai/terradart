// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_documentation_version`.
const Set<String> _awsApiGatewayDocumentationVersionSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_documentation_version`.
final class AwsApiGatewayDocumentationVersion extends Resource {
  static const String tfType = 'aws_api_gateway_documentation_version';

  AwsApiGatewayDocumentationVersion(
    super.localName, {
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
           'description': ?description,
           'region': ?region,
           'rest_api_id': restApiId,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApiGatewayDocumentationVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayDocumentationVersion>`.
  RefTo<AwsApiGatewayDocumentationVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
