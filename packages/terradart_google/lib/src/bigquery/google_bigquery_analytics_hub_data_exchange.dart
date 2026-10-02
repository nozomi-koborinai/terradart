// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeSensitive = <String>{};

extension type const BigqueryAnalyticsHubDataExchangeDiscoveryType._(
  TfArg<String> _
) implements TfArg<String> {
  BigqueryAnalyticsHubDataExchangeDiscoveryType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryAnalyticsHubDataExchangeDiscoveryType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryAnalyticsHubDataExchangeDiscoveryType.arg(TfArg<String> arg)
    : this._(arg);

  static const privateDiscovery =
      BigqueryAnalyticsHubDataExchangeDiscoveryType._(
        TfArgLiteral('DISCOVERY_TYPE_PRIVATE'),
      );
  static const publicDiscovery =
      BigqueryAnalyticsHubDataExchangeDiscoveryType._(
        TfArgLiteral('DISCOVERY_TYPE_PUBLIC'),
      );

  static const List<BigqueryAnalyticsHubDataExchangeDiscoveryType> values = [
    privateDiscovery,
    publicDiscovery,
  ];
}

/// Exactly one of `default_exchange_config`, `dcr_exchange_config` on the `sharing_environment_config` block of `google_bigquery_analytics_hub_data_exchange`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.defaultExchangeConfig(...)`.
sealed class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig();

  /// Sets `default_exchange_config`.
  const factory BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.defaultExchangeConfig([
    BigqueryAnalyticsHubDataExchangeDefaultExchangeConfig defaultExchangeConfig,
  ]) =
      BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig;

  /// Sets `dcr_exchange_config`.
  const factory BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.dcrExchangeConfig([
    BigqueryAnalyticsHubDataExchangeDcrExchangeConfig dcrExchangeConfig,
  ]) =
      BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.defaultExchangeConfig] choice: sets `default_exchange_config`.
final class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig
    extends BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDefaultExchangeConfig([
    this.defaultExchangeConfig =
        const BigqueryAnalyticsHubDataExchangeDefaultExchangeConfig(),
  ]);

  final BigqueryAnalyticsHubDataExchangeDefaultExchangeConfig
  defaultExchangeConfig;

  @internal
  @override
  String get blockKey => 'default_exchange_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'default_exchange_config': defaultExchangeConfig.encode(),
  };
}

/// The [BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig.dcrExchangeConfig] choice: sets `dcr_exchange_config`.
final class BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig
    extends BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig {
  const BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfigDcrExchangeConfig([
    this.dcrExchangeConfig =
        const BigqueryAnalyticsHubDataExchangeDcrExchangeConfig(),
  ]);

  final BigqueryAnalyticsHubDataExchangeDcrExchangeConfig dcrExchangeConfig;

  @internal
  @override
  String get blockKey => 'dcr_exchange_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'dcr_exchange_config': dcrExchangeConfig.encode(),
  };
}

/// Typed helper for the `sharing_environment_config.dcr_exchange_config` block of
/// `google_bigquery_analytics_hub_data_exchange` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeDcrExchangeConfig {
  const BigqueryAnalyticsHubDataExchangeDcrExchangeConfig();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `sharing_environment_config.default_exchange_config` block of
/// `google_bigquery_analytics_hub_data_exchange` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeDefaultExchangeConfig {
  const BigqueryAnalyticsHubDataExchangeDefaultExchangeConfig();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange`.
///
/// A Bigquery Analytics Hub data exchange
final class GoogleBigqueryAnalyticsHubDataExchange extends Resource {
  static const String tfType = 'google_bigquery_analytics_hub_data_exchange';

  GoogleBigqueryAnalyticsHubDataExchange(
    super.localName, {
    required TfArg<String> dataExchangeId,
    TfArg<String>? description,
    BigqueryAnalyticsHubDataExchangeDiscoveryType? discoveryType,
    required TfArg<String> displayName,
    TfArg<String>? documentation,
    TfArg<String>? icon,
    required TfArg<String> location,
    TfArg<bool>? logLinkedDatasetQueryUserEmail,
    TfArg<String>? primaryContact,
    TfArg<String>? project,
    BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig?
    sharingEnvironmentConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'description': ?description,
           'discovery_type': ?discoveryType,
           'display_name': displayName,
           'documentation': ?documentation,
           'icon': ?icon,
           'location': location,
           'log_linked_dataset_query_user_email':
               ?logLinkedDatasetQueryUserEmail,
           'primary_contact': ?primaryContact,
           'project': ?project,
           if (sharingEnvironmentConfig != null)
             'sharing_environment_config': TfArg.literal(
               sharingEnvironmentConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubDataExchange>`.
  RefTo<GoogleBigqueryAnalyticsHubDataExchange> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `listing_count` attribute.
  TfRef<num> get listingCount => TfRef.attribute<num>(this, 'listing_count');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeId =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `discovery_type` attribute.
  TfRef<String> get discoveryType =>
      TfRef.attribute<String>(this, 'discovery_type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `documentation` attribute.
  TfRef<String> get documentation =>
      TfRef.attribute<String>(this, 'documentation');

  /// Reference to `icon` attribute.
  TfRef<String> get icon => TfRef.attribute<String>(this, 'icon');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_linked_dataset_query_user_email` attribute.
  TfRef<bool> get logLinkedDatasetQueryUserEmail =>
      TfRef.attribute<bool>(this, 'log_linked_dataset_query_user_email');

  /// Reference to `primary_contact` attribute.
  TfRef<String> get primaryContact =>
      TfRef.attribute<String>(this, 'primary_contact');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
