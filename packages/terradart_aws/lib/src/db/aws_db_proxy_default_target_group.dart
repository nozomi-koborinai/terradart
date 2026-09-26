// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_proxy_default_target_group`.
const Set<String> _awsDbProxyDefaultTargetGroupSensitive = <String>{};

/// Typed helper for the `connection_pool_config` block of
/// `aws_db_proxy_default_target_group` (derived from provider schema).
@immutable
final class DbProxyDefaultTargetGroupConnectionPoolConfig {
  const DbProxyDefaultTargetGroupConnectionPoolConfig({
    this.connectionBorrowTimeout,
    this.initQuery,
    this.maxConnectionsPercent,
    this.maxIdleConnectionsPercent,
    this.sessionPinningFilters,
  });

  final TfArg<num>? connectionBorrowTimeout;

  final TfArg<String>? initQuery;

  final TfArg<num>? maxConnectionsPercent;

  final TfArg<num>? maxIdleConnectionsPercent;

  final TfArg<List<Object?>>? sessionPinningFilters;

  Map<String, Object?> encode() => {
    if (connectionBorrowTimeout != null)
      'connection_borrow_timeout': connectionBorrowTimeout!.toTfJson(),
    if (initQuery != null) 'init_query': initQuery!.toTfJson(),
    if (maxConnectionsPercent != null)
      'max_connections_percent': maxConnectionsPercent!.toTfJson(),
    if (maxIdleConnectionsPercent != null)
      'max_idle_connections_percent': maxIdleConnectionsPercent!.toTfJson(),
    if (sessionPinningFilters != null)
      'session_pinning_filters': sessionPinningFilters!.toTfJson(),
  };
}

/// Factory wrapper for `aws_db_proxy_default_target_group`.
final class AwsDbProxyDefaultTargetGroup extends Resource {
  static const String tfType = 'aws_db_proxy_default_target_group';

  AwsDbProxyDefaultTargetGroup({
    required super.localName,
    required TfArg<String> dbProxyName,
    TfArg<String>? region,
    DbProxyDefaultTargetGroupConnectionPoolConfig? connectionPoolConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_proxy_name': dbProxyName,
           if (region != null) 'region': region,
           if (connectionPoolConfig != null)
             'connection_pool_config': TfArg.literal(
               connectionPoolConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxyDefaultTargetGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
