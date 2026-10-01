// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_api_cache`.
const Set<String> _awsAppsyncApiCacheSensitive = <String>{};

/// Appsync Api Cache Api Caching enum for `api_caching_behavior`.
extension type const AppsyncApiCacheApiCachingBehavior._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncApiCacheApiCachingBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncApiCacheApiCachingBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncApiCacheApiCachingBehavior.arg(TfArg<String> arg) : this._(arg);

  static const fullRequestCaching = AppsyncApiCacheApiCachingBehavior._(
    TfArgLiteral('FULL_REQUEST_CACHING'),
  );
  static const perResolverCaching = AppsyncApiCacheApiCachingBehavior._(
    TfArgLiteral('PER_RESOLVER_CACHING'),
  );
  static const operationLevelCaching = AppsyncApiCacheApiCachingBehavior._(
    TfArgLiteral('OPERATION_LEVEL_CACHING'),
  );

  static const List<AppsyncApiCacheApiCachingBehavior> values = [
    fullRequestCaching,
    perResolverCaching,
    operationLevelCaching,
  ];
}

/// Appsync Api Cache enum for `type`.
extension type const AppsyncApiCacheType._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncApiCacheType.variable(String name) : this._(TfArg.variable(name));
  AppsyncApiCacheType.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncApiCacheType.arg(TfArg<String> arg) : this._(arg);

  static const t2Small = AppsyncApiCacheType._(TfArgLiteral('T2_SMALL'));
  static const t2Medium = AppsyncApiCacheType._(TfArgLiteral('T2_MEDIUM'));
  static const r4Large = AppsyncApiCacheType._(TfArgLiteral('R4_LARGE'));
  static const r4Xlarge = AppsyncApiCacheType._(TfArgLiteral('R4_XLARGE'));
  static const r42xlarge = AppsyncApiCacheType._(TfArgLiteral('R4_2XLARGE'));
  static const r44xlarge = AppsyncApiCacheType._(TfArgLiteral('R4_4XLARGE'));
  static const r48xlarge = AppsyncApiCacheType._(TfArgLiteral('R4_8XLARGE'));
  static const small = AppsyncApiCacheType._(TfArgLiteral('SMALL'));
  static const medium = AppsyncApiCacheType._(TfArgLiteral('MEDIUM'));
  static const large = AppsyncApiCacheType._(TfArgLiteral('LARGE'));
  static const xlarge = AppsyncApiCacheType._(TfArgLiteral('XLARGE'));
  static const large2x = AppsyncApiCacheType._(TfArgLiteral('LARGE_2X'));
  static const large4x = AppsyncApiCacheType._(TfArgLiteral('LARGE_4X'));
  static const large8x = AppsyncApiCacheType._(TfArgLiteral('LARGE_8X'));
  static const large12x = AppsyncApiCacheType._(TfArgLiteral('LARGE_12X'));

  static const List<AppsyncApiCacheType> values = [
    t2Small,
    t2Medium,
    r4Large,
    r4Xlarge,
    r42xlarge,
    r44xlarge,
    r48xlarge,
    small,
    medium,
    large,
    xlarge,
    large2x,
    large4x,
    large8x,
    large12x,
  ];
}

/// Factory wrapper for `aws_appsync_api_cache`.
final class AwsAppsyncApiCache extends Resource {
  static const String tfType = 'aws_appsync_api_cache';

  AwsAppsyncApiCache(
    super.localName, {
    required AppsyncApiCacheApiCachingBehavior apiCachingBehavior,
    required TfArg<String> apiId,
    TfArg<bool>? atRestEncryptionEnabled,
    TfArg<String>? region,
    TfArg<bool>? transitEncryptionEnabled,
    required TfArg<num> ttl,
    required AppsyncApiCacheType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_caching_behavior': apiCachingBehavior,
           'api_id': apiId,
           'at_rest_encryption_enabled': ?atRestEncryptionEnabled,
           'region': ?region,
           'transit_encryption_enabled': ?transitEncryptionEnabled,
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

  /// Reference to `api_caching_behavior` attribute.
  TfRef<String> get apiCachingBehavior =>
      TfRef.attribute<String>(this, 'api_caching_behavior');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `at_rest_encryption_enabled` attribute.
  TfRef<bool> get atRestEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'at_rest_encryption_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `transit_encryption_enabled` attribute.
  TfRef<bool> get transitEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'transit_encryption_enabled');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
