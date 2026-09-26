// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_vpc_link`.
const Set<String> _awsApigatewayv2VpcLinkSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_vpc_link`.
final class AwsApigatewayv2VpcLink extends Resource {
  static const String tfType = 'aws_apigatewayv2_vpc_link';

  AwsApigatewayv2VpcLink({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroupIds,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'security_group_ids': securityGroupIds,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2VpcLinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
