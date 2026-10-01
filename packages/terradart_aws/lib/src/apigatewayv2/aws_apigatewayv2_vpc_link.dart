// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_apigatewayv2_vpc_link`.
const Set<String> _awsApigatewayv2VpcLinkSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_vpc_link`.
final class AwsApigatewayv2VpcLink extends Resource {
  static const String tfType = 'aws_apigatewayv2_vpc_link';

  AwsApigatewayv2VpcLink({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'security_group_ids': securityGroupIds.encodeAs('id'),
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2VpcLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2VpcLink>`.
  RefTo<AwsApigatewayv2VpcLink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
