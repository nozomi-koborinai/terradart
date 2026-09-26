// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_proxy`.
const Set<String> _awsDbProxySensitive = <String>{};

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

  final TfArg<String>? authScheme;

  final TfArg<String>? clientPasswordAuthType;

  final TfArg<String>? description;

  final TfArg<String>? iamAuth;

  final TfArg<String>? secretArn;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (authScheme != null) 'auth_scheme': authScheme!.toTfJson(),
    if (clientPasswordAuthType != null)
      'client_password_auth_type': clientPasswordAuthType!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (iamAuth != null) 'iam_auth': iamAuth!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Factory wrapper for `aws_db_proxy`.
final class AwsDbProxy extends Resource {
  static const String tfType = 'aws_db_proxy';

  AwsDbProxy({
    required super.localName,
    TfArg<bool>? debugLogging,
    TfArg<String>? defaultAuthScheme,
    TfArg<String>? endpointNetworkType,
    required TfArg<String> engineFamily,
    TfArg<num>? idleClientTimeout,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? requireTls,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetConnectionNetworkType,
    TfArg<List<String>>? vpcSecurityGroupIds,
    required TfArg<List<String>> vpcSubnetIds,
    List<DbProxyAuth>? auth,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (debugLogging != null) 'debug_logging': debugLogging,
           if (defaultAuthScheme != null)
             'default_auth_scheme': defaultAuthScheme,
           if (endpointNetworkType != null)
             'endpoint_network_type': endpointNetworkType,
           'engine_family': engineFamily,
           if (idleClientTimeout != null)
             'idle_client_timeout': idleClientTimeout,
           'name': name,
           if (region != null) 'region': region,
           if (requireTls != null) 'require_tls': requireTls,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (targetConnectionNetworkType != null)
             'target_connection_network_type': targetConnectionNetworkType,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           'vpc_subnet_ids': vpcSubnetIds,
           if (auth != null)
             'auth': TfArg.literal([for (final e in auth) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');
}
