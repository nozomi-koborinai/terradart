// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_proxy`.
const Set<String> _awsDbProxySensitive = <String>{};

/// Factory wrapper for `aws_db_proxy`.
final class DataAwsDbProxy extends Data {
  static const String tfType = 'aws_db_proxy';

  DataAwsDbProxy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth` attribute.
  TfRef<List<Map<String, Object?>>> get auth =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auth');

  /// Reference to `debug_logging` attribute.
  TfRef<bool> get debugLogging => TfRef.attribute<bool>(this, 'debug_logging');

  /// Reference to `default_auth_scheme` attribute.
  TfRef<String> get defaultAuthScheme =>
      TfRef.attribute<String>(this, 'default_auth_scheme');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `endpoint_network_type` attribute.
  TfRef<String> get endpointNetworkType =>
      TfRef.attribute<String>(this, 'endpoint_network_type');

  /// Reference to `engine_family` attribute.
  TfRef<String> get engineFamily =>
      TfRef.attribute<String>(this, 'engine_family');

  /// Reference to `idle_client_timeout` attribute.
  TfRef<num> get idleClientTimeout =>
      TfRef.attribute<num>(this, 'idle_client_timeout');

  /// Reference to `require_tls` attribute.
  TfRef<bool> get requireTls => TfRef.attribute<bool>(this, 'require_tls');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `target_connection_network_type` attribute.
  TfRef<String> get targetConnectionNetworkType =>
      TfRef.attribute<String>(this, 'target_connection_network_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `vpc_subnet_ids` attribute.
  TfRef<List<String>> get vpcSubnetIds =>
      TfRef.attribute<List<String>>(this, 'vpc_subnet_ids');
}
