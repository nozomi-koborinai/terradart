// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_gateway`.
const Set<String> _cloudflareAiGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class DataAiGatewayFilter {
  const DataAiGatewayFilter({this.search});

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ai_gateway`.
///
/// Accepted Permissions
///
/// - `AI Gateway Read` - `AI Gateway Write`
final class DataCloudflareAiGateway extends Data {
  static const String tfType = 'cloudflare_ai_gateway';

  DataCloudflareAiGateway({
    required super.localName,
    TfArg<String>? accountId,
    DataAiGatewayFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication` attribute.
  TfRef<bool> get authentication =>
      TfRef.attribute<bool>(this, 'authentication');

  /// Reference to `cache_invalidate_on_update` attribute.
  TfRef<bool> get cacheInvalidateOnUpdate =>
      TfRef.attribute<bool>(this, 'cache_invalidate_on_update');

  /// Reference to `cache_ttl` attribute.
  TfRef<num> get cacheTtl => TfRef.attribute<num>(this, 'cache_ttl');

  /// Reference to `collect_logs` attribute.
  TfRef<bool> get collectLogs => TfRef.attribute<bool>(this, 'collect_logs');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `log_management` attribute.
  TfRef<num> get logManagement => TfRef.attribute<num>(this, 'log_management');

  /// Reference to `log_management_strategy` attribute.
  TfRef<String> get logManagementStrategy =>
      TfRef.attribute<String>(this, 'log_management_strategy');

  /// Reference to `logpush` attribute.
  TfRef<bool> get logpush => TfRef.attribute<bool>(this, 'logpush');

  /// Reference to `logpush_public_key` attribute.
  TfRef<String> get logpushPublicKey =>
      TfRef.attribute<String>(this, 'logpush_public_key');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `rate_limiting_interval` attribute.
  TfRef<num> get rateLimitingInterval =>
      TfRef.attribute<num>(this, 'rate_limiting_interval');

  /// Reference to `rate_limiting_limit` attribute.
  TfRef<num> get rateLimitingLimit =>
      TfRef.attribute<num>(this, 'rate_limiting_limit');

  /// Reference to `rate_limiting_technique` attribute.
  TfRef<String> get rateLimitingTechnique =>
      TfRef.attribute<String>(this, 'rate_limiting_technique');

  /// Reference to `retry_backoff` attribute.
  TfRef<String> get retryBackoff =>
      TfRef.attribute<String>(this, 'retry_backoff');

  /// Reference to `retry_delay` attribute.
  TfRef<num> get retryDelay => TfRef.attribute<num>(this, 'retry_delay');

  /// Reference to `retry_max_attempts` attribute.
  TfRef<num> get retryMaxAttempts =>
      TfRef.attribute<num>(this, 'retry_max_attempts');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeId => TfRef.attribute<String>(this, 'store_id');

  /// Reference to `workers_ai_billing_mode` attribute.
  TfRef<String> get workersAiBillingMode =>
      TfRef.attribute<String>(this, 'workers_ai_billing_mode');

  /// Reference to `zdr` attribute.
  TfRef<bool> get zdr => TfRef.attribute<bool>(this, 'zdr');
}
