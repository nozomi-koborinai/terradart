// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_usage_consumer_quota_override`.
const Set<String> _googleServiceUsageConsumerQuotaOverrideSensitive =
    <String>{};

/// Factory wrapper for `google_service_usage_consumer_quota_override`.
///
/// A consumer override is applied to the consumer on its own authority to limit
/// its own quota usage. Consumer overrides cannot be used to grant more quota
/// than would be allowed by admin overrides, producer overrides, or the default
/// limit of the service.
final class GoogleServiceUsageConsumerQuotaOverride extends Resource {
  static const String tfType = 'google_service_usage_consumer_quota_override';

  GoogleServiceUsageConsumerQuotaOverride(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? dimensions,
    TfArg<bool>? force,
    required TfArg<String> limit,
    required TfArg<String> metric,
    required TfArg<String> overrideValue,
    TfArg<String>? project,
    required TfArg<String> service,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'dimensions': ?dimensions,
           'force': ?force,
           'limit': limit,
           'metric': metric,
           'override_value': overrideValue,
           'project': ?project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceUsageConsumerQuotaOverrideSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceUsageConsumerQuotaOverride>`.
  RefTo<GoogleServiceUsageConsumerQuotaOverride> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `dimensions` attribute.
  TfRef<Map<String, String>> get dimensions =>
      TfRef.attribute<Map<String, String>>(this, 'dimensions');

  /// Reference to `force` attribute.
  TfRef<bool> get force => TfRef.attribute<bool>(this, 'force');

  /// Reference to `limit` attribute.
  TfRef<String> get limit => TfRef.attribute<String>(this, 'limit');

  /// Reference to `metric` attribute.
  TfRef<String> get metric => TfRef.attribute<String>(this, 'metric');

  /// Reference to `override_value` attribute.
  TfRef<String> get overrideValue =>
      TfRef.attribute<String>(this, 'override_value');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
