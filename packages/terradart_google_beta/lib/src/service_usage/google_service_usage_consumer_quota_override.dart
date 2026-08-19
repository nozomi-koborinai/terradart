// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_usage_consumer_quota_override`.
const Set<String> _googleServiceUsageConsumerQuotaOverrideSensitive =
    <String>{};

/// Factory wrapper for `google_service_usage_consumer_quota_override`.
final class GoogleServiceUsageConsumerQuotaOverride extends Resource {
  static const String tfType = 'google_service_usage_consumer_quota_override';

  GoogleServiceUsageConsumerQuotaOverride({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (dimensions != null) 'dimensions': dimensions,
           if (force != null) 'force': force,
           'limit': limit,
           'metric': metric,
           'override_value': overrideValue,
           if (project != null) 'project': project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceUsageConsumerQuotaOverrideSensitive;
}
