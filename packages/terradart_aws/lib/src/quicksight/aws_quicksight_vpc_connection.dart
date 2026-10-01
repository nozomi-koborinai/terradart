// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_quicksight_vpc_connection`.
const Set<String> _awsQuicksightVpcConnectionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_vpc_connection`.
final class AwsQuicksightVpcConnection extends Resource {
  static const String tfType = 'aws_quicksight_vpc_connection';

  AwsQuicksightVpcConnection({
    required super.localName,
    TfArg<String>? awsAccountId,
    TfArg<List<String>>? dnsResolvers,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    required TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'dns_resolvers': ?dnsResolvers,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'security_group_ids': securityGroupIds.encodeAs('id'),
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'vpc_connection_id': vpcConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightVpcConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightVpcConnection>`.
  RefTo<AwsQuicksightVpcConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_status` attribute.
  TfRef<String> get availabilityStatus =>
      TfRef.attribute<String>(this, 'availability_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `dns_resolvers` attribute.
  TfRef<List<String>> get dnsResolvers =>
      TfRef.attribute<List<String>>(this, 'dns_resolvers');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_connection_id` attribute.
  TfRef<String> get vpcConnectionId =>
      TfRef.attribute<String>(this, 'vpc_connection_id');
}
