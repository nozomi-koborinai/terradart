// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_db_proxy`.
const Set<String> _awsDbProxySensitive = <String>{};

/// Db Proxy Default Auth enum for `default_auth_scheme`.
enum DbProxyDefaultAuthScheme implements TerraformEnum {
  iamAuth('IAM_AUTH'),
  none('NONE');

  const DbProxyDefaultAuthScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Proxy Endpoint Network enum for `endpoint_network_type`.
enum DbProxyEndpointNetworkType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6'),
  dual('DUAL');

  const DbProxyEndpointNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Proxy Engine enum for `engine_family`.
enum DbProxyEngineFamily implements TerraformEnum {
  mysql('MYSQL'),
  postgresql('POSTGRESQL'),
  sqlserver('SQLSERVER');

  const DbProxyEngineFamily(this.terraformValue);
  @override
  final String terraformValue;
}

/// Db Proxy Target Connection Network enum for `target_connection_network_type`.
enum DbProxyTargetConnectionNetworkType implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const DbProxyTargetConnectionNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auth` block of
/// `aws_db_proxy` (derived from provider schema).
@immutable
final class DbProxyAuth {
  const DbProxyAuth({
    this.authScheme,
    this.clientPasswordAuthType,
    this.description,
    this.iamAuth,
    this.secretArn,
    this.username,
  });

  final TfArg<DbProxyAuthScheme>? authScheme;

  final TfArg<DbProxyClientPasswordAuthType>? clientPasswordAuthType;

  final TfArg<String>? description;

  final TfArg<DbProxyIamAuth>? iamAuth;

  final TfArg<String>? secretArn;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'auth_scheme': ?authScheme?.toTfJson(),
    'client_password_auth_type': ?clientPasswordAuthType?.toTfJson(),
    'description': ?description?.toTfJson(),
    'iam_auth': ?iamAuth?.toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// `auth_scheme` — derived from the provider schema description.
enum DbProxyAuthScheme implements TerraformEnum {
  secrets('SECRETS');

  const DbProxyAuthScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// `client_password_auth_type` — derived from the provider schema description.
enum DbProxyClientPasswordAuthType implements TerraformEnum {
  mysqlNativePassword('MYSQL_NATIVE_PASSWORD'),
  mysqlCachingSha2Password('MYSQL_CACHING_SHA2_PASSWORD'),
  postgresScramSha256('POSTGRES_SCRAM_SHA_256'),
  postgresMd5('POSTGRES_MD5'),
  sqlServerAuthentication('SQL_SERVER_AUTHENTICATION');

  const DbProxyClientPasswordAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `iam_auth` — derived from the provider schema description.
enum DbProxyIamAuth implements TerraformEnum {
  disabled('DISABLED'),
  required('REQUIRED'),
  enabled('ENABLED');

  const DbProxyIamAuth(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_db_proxy`.
final class AwsDbProxy extends Resource {
  static const String tfType = 'aws_db_proxy';

  AwsDbProxy(
    super.localName, {
    TfArg<bool>? debugLogging,
    TfArg<DbProxyDefaultAuthScheme>? defaultAuthScheme,
    TfArg<DbProxyEndpointNetworkType>? endpointNetworkType,
    required TfArg<DbProxyEngineFamily> engineFamily,
    TfArg<num>? idleClientTimeout,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? requireTls,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<DbProxyTargetConnectionNetworkType>? targetConnectionNetworkType,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    required TfArg<List<String>> vpcSubnetIds,
    List<DbProxyAuth>? auth,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'debug_logging': ?debugLogging,
           'default_auth_scheme': ?defaultAuthScheme,
           'endpoint_network_type': ?endpointNetworkType,
           'engine_family': engineFamily,
           'idle_client_timeout': ?idleClientTimeout,
           'name': name,
           'region': ?region,
           'require_tls': ?requireTls,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'target_connection_network_type': ?targetConnectionNetworkType,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
           'vpc_subnet_ids': vpcSubnetIds,
           if (auth != null)
             'auth': TfArg.literal([for (final e in auth) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbProxy>`.
  RefTo<AwsDbProxy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `debug_logging` attribute.
  TfRef<bool> get debugLogging => TfRef.attribute<bool>(this, 'debug_logging');

  /// Reference to `default_auth_scheme` attribute.
  TfRef<String> get defaultAuthScheme =>
      TfRef.attribute<String>(this, 'default_auth_scheme');

  /// Reference to `endpoint_network_type` attribute.
  TfRef<String> get endpointNetworkType =>
      TfRef.attribute<String>(this, 'endpoint_network_type');

  /// Reference to `engine_family` attribute.
  TfRef<String> get engineFamily =>
      TfRef.attribute<String>(this, 'engine_family');

  /// Reference to `idle_client_timeout` attribute.
  TfRef<num> get idleClientTimeout =>
      TfRef.attribute<num>(this, 'idle_client_timeout');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `require_tls` attribute.
  TfRef<bool> get requireTls => TfRef.attribute<bool>(this, 'require_tls');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_connection_network_type` attribute.
  TfRef<String> get targetConnectionNetworkType =>
      TfRef.attribute<String>(this, 'target_connection_network_type');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `vpc_subnet_ids` attribute.
  TfRef<List<String>> get vpcSubnetIds =>
      TfRef.attribute<List<String>>(this, 'vpc_subnet_ids');
}
