// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_api_cache`.
const Set<String> _awsAppsyncApiCacheSensitive = <String>{};

/// Appsync Api Cache Api Caching enum for `api_caching_behavior`.
enum AppsyncApiCacheApiCachingBehavior implements TerraformEnum {
  fullRequestCaching('FULL_REQUEST_CACHING'),
  perResolverCaching('PER_RESOLVER_CACHING'),
  operationLevelCaching('OPERATION_LEVEL_CACHING');

  const AppsyncApiCacheApiCachingBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appsync Api Cache enum for `type`.
enum AppsyncApiCacheType implements TerraformEnum {
  t2Small('T2_SMALL'),
  t2Medium('T2_MEDIUM'),
  r4Large('R4_LARGE'),
  r4Xlarge('R4_XLARGE'),
  r42xlarge('R4_2XLARGE'),
  r44xlarge('R4_4XLARGE'),
  r48xlarge('R4_8XLARGE'),
  small('SMALL'),
  medium('MEDIUM'),
  large('LARGE'),
  xlarge('XLARGE'),
  large2x('LARGE_2X'),
  large4x('LARGE_4X'),
  large8x('LARGE_8X'),
  large12x('LARGE_12X');

  const AppsyncApiCacheType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appsync_api_cache`.
final class AwsAppsyncApiCache extends Resource {
  static const String tfType = 'aws_appsync_api_cache';

  AwsAppsyncApiCache({
    required super.localName,
    required TfArg<AppsyncApiCacheApiCachingBehavior> apiCachingBehavior,
    required TfArg<String> apiId,
    TfArg<bool>? atRestEncryptionEnabled,
    TfArg<String>? region,
    TfArg<bool>? transitEncryptionEnabled,
    required TfArg<num> ttl,
    required TfArg<AppsyncApiCacheType> type,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncApiCache>`.
  RefTo<AwsAppsyncApiCache> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
