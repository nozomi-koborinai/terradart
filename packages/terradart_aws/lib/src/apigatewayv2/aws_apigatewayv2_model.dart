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
           'description': ?description,
           'name': name,
           'region': ?region,
           'schema': schema,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ModelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Model>`.
  RefTo<AwsApigatewayv2Model> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiIdRef => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentTypeRef =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `schema` attribute.
  TfRef<String> get schemaRef => TfRef.attribute<String>(this, 'schema');
}
