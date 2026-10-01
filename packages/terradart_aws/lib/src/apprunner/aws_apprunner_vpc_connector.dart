// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_apprunner_vpc_connector`.
const Set<String> _awsApprunnerVpcConnectorSensitive = <String>{};

/// Factory wrapper for `aws_apprunner_vpc_connector`.
final class AwsApprunnerVpcConnector extends Resource {
  static const String tfType = 'aws_apprunner_vpc_connector';

  AwsApprunnerVpcConnector(
    super.localName, {
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSecurityGroup>>> securityGroups,
    required TfArg<List<RefTo<AwsSubnet>>> subnets,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcConnectorName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'security_groups': securityGroups.encodeAs('id'),
           'subnets': subnets.encodeAs('id'),
           'tags': ?tags,
           'vpc_connector_name': vpcConnectorName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerVpcConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApprunnerVpcConnector>`.
  RefTo<AwsApprunnerVpcConnector> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `vpc_connector_revision` attribute.
  TfRef<num> get vpcConnectorRevision =>
      TfRef.attribute<num>(this, 'vpc_connector_revision');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_connector_name` attribute.
  TfRef<String> get vpcConnectorName =>
      TfRef.attribute<String>(this, 'vpc_connector_name');
}
