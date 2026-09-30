// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_api_mapping`.
const Set<String> _awsApigatewayv2ApiMappingSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_api_mapping`.
final class AwsApigatewayv2ApiMapping extends Resource {
  static const String tfType = 'aws_apigatewayv2_api_mapping';

  AwsApigatewayv2ApiMapping({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? apiMappingKey,
    required TfArg<String> domainName,
    TfArg<String>? region,
    required TfArg<String> stage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'api_mapping_key': ?apiMappingKey,
           'domain_name': domainName,
           'region': ?region,
           'stage': stage,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2ApiMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2ApiMapping>`.
  RefTo<AwsApigatewayv2ApiMapping> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiIdRef => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `api_mapping_key` attribute.
  TfRef<String> get apiMappingKeyRef =>
      TfRef.attribute<String>(this, 'api_mapping_key');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainNameRef =>
      TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `stage` attribute.
  TfRef<String> get stageRef => TfRef.attribute<String>(this, 'stage');
}
