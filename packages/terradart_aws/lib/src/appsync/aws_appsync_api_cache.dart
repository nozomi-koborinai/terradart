// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_api_cache`.
const Set<String> _awsAppsyncApiCacheSensitive = <String>{};

/// Factory wrapper for `aws_appsync_api_cache`.
final class AwsAppsyncApiCache extends Resource {
  static const String tfType = 'aws_appsync_api_cache';

  AwsAppsyncApiCache({
    required super.localName,
    required TfArg<String> apiCachingBehavior,
    required TfArg<String> apiId,
    TfArg<bool>? atRestEncryptionEnabled,
    TfArg<String>? region,
    TfArg<bool>? transitEncryptionEnabled,
    required TfArg<num> ttl,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_caching_behavior': apiCachingBehavior,
           'api_id': apiId,
           if (atRestEncryptionEnabled != null)
             'at_rest_encryption_enabled': atRestEncryptionEnabled,
           if (region != null) 'region': region,
           if (transitEncryptionEnabled != null)
             'transit_encryption_enabled': transitEncryptionEnabled,
           'ttl': ttl,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncApiCacheSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
