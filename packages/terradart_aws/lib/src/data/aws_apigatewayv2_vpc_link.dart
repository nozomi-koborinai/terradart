// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../apigatewayv2/aws_apigatewayv2_vpc_link.dart';

/// Sensitive field paths for `aws_apigatewayv2_vpc_link`.
const Set<String> _awsApigatewayv2VpcLinkSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_vpc_link`.
final class DataAwsApigatewayv2VpcLink extends Data {
  static const String tfType = 'aws_apigatewayv2_vpc_link';

  DataAwsApigatewayv2VpcLink({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcLinkId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'tags': ?tags, 'vpc_link_id': vpcLinkId},
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2VpcLinkSensitive;

  /// A reference to the `aws_apigatewayv2_vpc_link` this data source reads, for
  /// arguments typed `RefTo<AwsApigatewayv2VpcLink>`.
  RefTo<AwsApigatewayv2VpcLink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');
}
