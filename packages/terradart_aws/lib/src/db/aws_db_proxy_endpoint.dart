// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_db_proxy_endpoint`.
const Set<String> _awsDbProxyEndpointSensitive = <String>{};

/// Db Proxy Endpoint Target enum for `target_role`.
extension type const DbProxyEndpointTargetRole._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyEndpointTargetRole.variable(String name)
    : this._(TfArg.variable(name));
  DbProxyEndpointTargetRole.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyEndpointTargetRole.arg(TfArg<String> arg) : this._(arg);

  static const readWrite = DbProxyEndpointTargetRole._(
    TfArgLiteral('READ_WRITE'),
  );
  static const readOnly = DbProxyEndpointTargetRole._(
    TfArgLiteral('READ_ONLY'),
  );

  static const List<DbProxyEndpointTargetRole> values = [readWrite, readOnly];
}

/// Factory wrapper for `aws_db_proxy_endpoint`.
final class AwsDbProxyEndpoint extends Resource {
  static const String tfType = 'aws_db_proxy_endpoint';

  AwsDbProxyEndpoint(
    super.localName, {
    required TfArg<String> dbProxyEndpointName,
    required TfArg<String> dbProxyName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    DbProxyEndpointTargetRole? targetRole,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    required TfArg<List<String>> vpcSubnetIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_proxy_endpoint_name': dbProxyEndpointName,
           'db_proxy_name': dbProxyName,
           'region': ?region,
           'tags': ?tags,
           'target_role': ?targetRole,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
           'vpc_subnet_ids': vpcSubnetIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxyEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbProxyEndpoint>`.
  RefTo<AwsDbProxyEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `db_proxy_endpoint_name` attribute.
  TfRef<String> get dbProxyEndpointName =>
      TfRef.attribute<String>(this, 'db_proxy_endpoint_name');

  /// Reference to `db_proxy_name` attribute.
  TfRef<String> get dbProxyName =>
      TfRef.attribute<String>(this, 'db_proxy_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_role` attribute.
  TfRef<String> get targetRole => TfRef.attribute<String>(this, 'target_role');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `vpc_subnet_ids` attribute.
  TfRef<List<String>> get vpcSubnetIds =>
      TfRef.attribute<List<String>>(this, 'vpc_subnet_ids');
}
