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
extension type const DbProxyDefaultAuthScheme._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyDefaultAuthScheme.variable(String name) : this._(TfArg.variable(name));
  DbProxyDefaultAuthScheme.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyDefaultAuthScheme.arg(TfArg<String> arg) : this._(arg);

  static const iamAuth = DbProxyDefaultAuthScheme._(TfArgLiteral('IAM_AUTH'));
  static const none = DbProxyDefaultAuthScheme._(TfArgLiteral('NONE'));

  static const List<DbProxyDefaultAuthScheme> values = [iamAuth, none];
}

/// Db Proxy Endpoint Network enum for `endpoint_network_type`.
extension type const DbProxyEndpointNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyEndpointNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  DbProxyEndpointNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyEndpointNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = DbProxyEndpointNetworkType._(TfArgLiteral('IPV4'));
  static const ipv6 = DbProxyEndpointNetworkType._(TfArgLiteral('IPV6'));
  static const dual = DbProxyEndpointNetworkType._(TfArgLiteral('DUAL'));

  static const List<DbProxyEndpointNetworkType> values = [ipv4, ipv6, dual];
}

/// Db Proxy Engine enum for `engine_family`.
extension type const DbProxyEngineFamily._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyEngineFamily.variable(String name) : this._(TfArg.variable(name));
  DbProxyEngineFamily.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyEngineFamily.arg(TfArg<String> arg) : this._(arg);

  static const mysql = DbProxyEngineFamily._(TfArgLiteral('MYSQL'));
  static const postgresql = DbProxyEngineFamily._(TfArgLiteral('POSTGRESQL'));
  static const sqlserver = DbProxyEngineFamily._(TfArgLiteral('SQLSERVER'));

  static const List<DbProxyEngineFamily> values = [
    mysql,
    postgresql,
    sqlserver,
  ];
}

/// Db Proxy Target Connection Network enum for `target_connection_network_type`.
extension type const DbProxyTargetConnectionNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyTargetConnectionNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  DbProxyTargetConnectionNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyTargetConnectionNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = DbProxyTargetConnectionNetworkType._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = DbProxyTargetConnectionNetworkType._(
    TfArgLiteral('IPV6'),
  );

  static const List<DbProxyTargetConnectionNetworkType> values = [ipv4, ipv6];
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

  final DbProxyAuthScheme? authScheme;

  final DbProxyClientPasswordAuthType? clientPasswordAuthType;

  final TfArg<String>? description;

  final DbProxyIamAuth? iamAuth;

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
extension type const DbProxyAuthScheme._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyAuthScheme.variable(String name) : this._(TfArg.variable(name));
  DbProxyAuthScheme.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyAuthScheme.arg(TfArg<String> arg) : this._(arg);

  static const secrets = DbProxyAuthScheme._(TfArgLiteral('SECRETS'));

  static const List<DbProxyAuthScheme> values = [secrets];
}

/// `client_password_auth_type` — derived from the provider schema description.
extension type const DbProxyClientPasswordAuthType._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyClientPasswordAuthType.variable(String name)
    : this._(TfArg.variable(name));
  DbProxyClientPasswordAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyClientPasswordAuthType.arg(TfArg<String> arg) : this._(arg);

  static const mysqlNativePassword = DbProxyClientPasswordAuthType._(
    TfArgLiteral('MYSQL_NATIVE_PASSWORD'),
  );
  static const mysqlCachingSha2Password = DbProxyClientPasswordAuthType._(
    TfArgLiteral('MYSQL_CACHING_SHA2_PASSWORD'),
  );
  static const postgresScramSha256 = DbProxyClientPasswordAuthType._(
    TfArgLiteral('POSTGRES_SCRAM_SHA_256'),
  );
  static const postgresMd5 = DbProxyClientPasswordAuthType._(
    TfArgLiteral('POSTGRES_MD5'),
  );
  static const sqlServerAuthentication = DbProxyClientPasswordAuthType._(
    TfArgLiteral('SQL_SERVER_AUTHENTICATION'),
  );

  static const List<DbProxyClientPasswordAuthType> values = [
    mysqlNativePassword,
    mysqlCachingSha2Password,
    postgresScramSha256,
    postgresMd5,
    sqlServerAuthentication,
  ];
}

/// `iam_auth` — derived from the provider schema description.
extension type const DbProxyIamAuth._(TfArg<String> _)
    implements TfArg<String> {
  DbProxyIamAuth.variable(String name) : this._(TfArg.variable(name));
  DbProxyIamAuth.expression(String template)
    : this._(TfArg.expression(template));
  const DbProxyIamAuth.arg(TfArg<String> arg) : this._(arg);

  static const disabled = DbProxyIamAuth._(TfArgLiteral('DISABLED'));
  static const required = DbProxyIamAuth._(TfArgLiteral('REQUIRED'));
  static const enabled = DbProxyIamAuth._(TfArgLiteral('ENABLED'));

  static const List<DbProxyIamAuth> values = [disabled, required, enabled];
}

/// Factory wrapper for `aws_db_proxy`.
final class AwsDbProxy extends Resource {
  static const String tfType = 'aws_db_proxy';

  AwsDbProxy(
    super.localName, {
    TfArg<bool>? debugLogging,
    DbProxyDefaultAuthScheme? defaultAuthScheme,
    DbProxyEndpointNetworkType? endpointNetworkType,
    required DbProxyEngineFamily engineFamily,
    TfArg<num>? idleClientTimeout,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? requireTls,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    DbProxyTargetConnectionNetworkType? targetConnectionNetworkType,
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
